<!-- /.navbar-top-links -->
<div class="navbar-default sidebar" role="navigation">
    <div class="sidebar-nav navbar-collapse">
        <ul class="nav" id="side-menu">
			<?php
				$labs = parse_ini_file('labs.ini', TRUE);
				$count = count($labs);
				
				for($i = 1; $i <= $count; $i++) {
					echo "<li><a href='#'><i class='fa fa-pencil fa-fw'></i> Лабораторная №$i<span class='fa arrow'></span></a>";
					echo "<ul class='nav nav-second-level'>";
					
					for ($j = 1; $j <= count($labs["LAB$i"]['desc']); $j++)
						echo "<li><a href='labs.php?send=1&lab=$i#task$j'>Задание №$j</a></li>";
					
					echo "</ul></li>";
				}
			?>
        </ul>
    </div>
    <!-- /.sidebar-collapse -->
</div>
<!-- /.navbar-static-side -->