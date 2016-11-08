</div>
<!-- /#page-wrapper -->

</div>
<!-- /#wrapper -->

<!-- jQuery -->
<script src="../js/jquery-3.1.0.min.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="../js/bootstrap.min.js"></script>

<!-- Metis Menu Plugin JavaScript -->
<script src="../js/metisMenu.min.js"></script>

<!-- Custom Theme JavaScript -->
<script src="../js/sb-admin-2.js"></script>
<script>
$(document).ready(function(){
     $(window).scroll(function () {
            if ($(this).scrollTop() > 50) {
                $('#back-to-top').fadeIn();
            } else {
                $('#back-to-top').fadeOut();
            }
        });
        // scroll body to 0px on click
        $('#back-to-top').click(function () {
            $('#back-to-top').tooltip('hide');
            $('body,html').animate({
                scrollTop: 0
            }, 800);
            return false;
        });
 
        $('#back-to-top').tooltip('show');
 
});
</script>
 
<a id="back-to-top" href="#" class="btn btn-primary btn-outline btn-lg back-to-top" role="button" title="Жми, чтобы попасть наверх страницы" data-toggle="tooltip" data-placement="left">Наверх <span class="fa fa-chevron-up"></span></a>
</body>

</html>