<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

		</div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->
    
    <style type="text/css" >
    footer {
            background-color: gray;
        }
                      
        .foo_div1 {
            text-align: center;
        }
        
        .foo_div1 span {
            font-size: 10px;
            color: white;
        }
    
    </style>
        
   <footer>
    <div class="foo_div1">
        <span>copywrite &copy; ojjang</span> <span>  |  </span>
        <span>개인정보 처리방침</span> <span>  |  </span>
        <span>이용약관</span> <span>  |  </span>
        <div class="text-center" >
        <a class="btn btn-social-icon btn-github"><i class="fa fa-github"></i></a>
        <a class="btn btn-social-icon btn-google-plus"><i class="fa fa-google-plus"></i></a>
        <a class="btn btn-social-icon btn-instagram"><i class="fa fa-instagram"></i></a>
        <a class="btn btn-social-icon btn-tumblr"><i class="fa fa-tumblr"></i></a>
        <a class="btn btn-social-icon btn-twitter"><i class="fa fa-twitter"></i></a>
        </div>
    </div>
	</footer>

    <!-- jQuery -->
    <!-- <script src="/resources/vendor/jquery/jquery.min.js"></script> -->

    <!-- Bootstrap Core JavaScript -->
    <script src="/resources/vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="/resources/vendor/metisMenu/metisMenu.min.js"></script>

    <!-- DataTables JavaScript -->
    <script src="/resources/vendor/datatables/js/jquery.dataTables.min.js"></script>
    <script src="/resources/vendor/datatables-plugins/dataTables.bootstrap.min.js"></script>
    <script src="/resources/vendor/datatables-responsive/dataTables.responsive.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="/resources/dist/js/sb-admin-2.js"></script>

    <!-- Page-Level Demo Scripts - Tables - Use for reference -->
    <script>
    $(document).ready(function() {
        $('#dataTables-example').DataTable({
            responsive: true
        });
        
        $(".sidebar-nav")
        	.attr("class", "sidebar-nav navbar-collapse collapse")
        	.attr("area-expanded",'false')
        	.attr("style","height:1px");
        
    });
    </script>

</body>

</html>