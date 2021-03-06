<?php

if (isset($_POST['send']) && isset($_POST['task'])) {
	$conn = oci_connect('hr', 'hr', 'localhost');

	if (!$conn) {
		$e = oci_error();
		trigger_error(htmlentities($e['message'], ENT_QUOTES), E_USER_ERROR);
	}

	// ���������� ���������
	$stid = oci_parse($conn, $_POST['task']);
	if (!$stid) {
		$e = oci_error($conn);
		trigger_error(htmlentities($e['message'], ENT_QUOTES), E_USER_ERROR);
	}

	// �������� ������ �������
	$r = oci_execute($stid);
	if (!$r) {
		$e = oci_error($stid);
		trigger_error(htmlentities($e['message'], ENT_QUOTES), E_USER_ERROR);
	}

	$i = 0;
	// ������� ��������� �������
	print "<table border='1'>\n";
	while ($row = oci_fetch_array($stid, OCI_ASSOC+OCI_RETURN_NULLS)) {
		print "<tr>\n";
		if ($i == 0) {
			foreach ($row as $key => $value)
				print "<th>" . $key . "</th>\n";
			
			$i++;
			print "</tr>\n<tr>";
		}
		foreach ($row as $item) {
			print "    <td>" . ($item !== null ? htmlentities($item, ENT_QUOTES) : "") . "</td>\n";
		}
		print "</tr>\n";
	}
	print "</table>\n";

	oci_free_statement($stid);
	oci_close($conn);
}
