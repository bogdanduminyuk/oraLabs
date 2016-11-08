<?php include "header.tpl"; ?>

<h1 class="text-center">Главная страница</h1>
<form name="select" action='oraexec.php' method='post'>
	<div class='panel panel-primary'>
		<div class='panel-heading'><h5>Выполнить команду SQL</h5></div>
		<div class='panel-body'>
			<div class='form-group'>
				<label>Команда:</label>
				<textarea name='task' rows='10' class='form-control'></textarea>
			</div>
		</div>
		<div class='panel-footer'>
			<input type='submit' name='send' value='Выполнить' class='btn btn-success'>
		</div>
	</div>
</form>

<?php include "footer.tpl";?>