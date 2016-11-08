<?php

include "header.tpl";


if (isset($_GET['send'])) {
	$lab_number = $_GET['lab'];
	
	$all_labs = parse_ini_file("labs.ini", TRUE);
	
	$current_lab = $all_labs['LAB'.$lab_number];
	
	$desctiptions = $current_lab['desc'];
	$task_count = count($current_lab['task']);
	
	echo "<div class='page-header'><h2>Лабораторная работа №$lab_number</h2></div>";
	
	for ($i = 1; $i <= $task_count; $i++) {
		$task = trim($current_lab['task'][$i - 1]);
		$desctiption = trim($current_lab['desc'][$i - 1]);
		$rows = substr_count($task, PHP_EOL) + 2;
		
		include "onetask.tpl";
	}
}


include "footer.tpl";