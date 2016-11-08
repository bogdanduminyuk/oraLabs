<div class='row'>
	<div class='col-lg-2'></div>
		<div class='col-lg-8'>
			<form name='task<?php echo $i;?>' action='oraexec.php' method='post'>
			<div id='task<?php echo $i;?>' class='panel panel-primary'>
				<div class='panel-heading'><h5>Задание №<?php echo $i;?></h5></div>
				<div class='panel-body'>
					<div class='form-group'>
						<label>Задание:</label>
						<p><?php echo $desctiption; ?> </p>
					</div>
					<div class='form-group'>
						<label>Решение:</label>
						<textarea name='task' rows='<?php echo $rows; ?>' class='form-control'><?php echo $task; ?></textarea>
					</div>
				</div>
				<div class='panel-footer'>
					<input type='submit' name='send' value='Выполнить' class='btn btn-success'>
				</div>
			</div>
			</form>
		</div>
	<div class='col-lg-2'></div>
</div>