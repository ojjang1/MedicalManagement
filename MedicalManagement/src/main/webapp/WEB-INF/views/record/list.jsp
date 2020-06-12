<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@include file="../includes/header.jsp" %>


            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">진료 기록</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            내 진료 기록
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <table data-order='[[ 0, "desc" ]]' width ="100%" class="table table-striped table-bordered table-hover" id="dataTables-example" >
                                <thead>
                                    <tr>
                                        <th>번호</th>
                                        <th>병원</th>
                                        <th>증상</th>
                                        <th>약국</th>
                                        <th>방문일</th>
                                        <th>첨부</th>
                                    </tr>
                                </thead>
                                
                                <tbody>
                                	<c:forEach items="${list}" var="record" >
                                		<tr>
                                			<td><c:out value="${record.r_no}" /></td>
                                			<td><c:out value="${record.hospital}" /></td>
                                			<td><c:out value="${record.sickness}" /></td>
                                			<td><c:out value="${record.phrmacy}" /></td>
                                			<td><fmt:formatDate pattern="yyyy-MM-dd" value="${record.visitdate}" /></td>                                			
                                			<td><c:out value="${record.pic}" /></td>
                      
                                			
                                	</c:forEach>
                                </tbody>
                                
                            </table>
                            <!-- /.table-responsive -->
                            
                            <!-- Modal -->
                            <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                            <h4 class="modal-title" id="myModalLabel">결과 처리 확인</h4>
                                        </div>
                                        <div class="modal-body">
                                            처리가 완료되었습니다.
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                            
                                        </div>
                                    </div>
                                    <!-- /.modal-content -->
                                </div>
                                <!-- /.modal-dialog -->
                            </div>
                            <!-- /.modal -->
                            
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->

	<script type="text/javascript" >
	
		$(document).ready(function() {
			
			var result = '<c:out value="${result}" />' ;
			
			checkModal(result);
			
			function checkModal(result) {
				
				if (result === '' ){
					return;
				}
				
				if(parseInt(result) >0) {
					$(".modal-body").html("게시글 " + parseInt(result) + "번이 등록되었습니다.");
					
				}
				
				$("#myModal").modal("show");
			}
			
				
			$('#dataTables-example tbody tr').on("click" , function() {
					var num = $(this).children().eq(0).text();
					
					console.log("클릭한 열의 r_no= " + num);
					
					self.location = "/record/get?r_no="+num ;
					
			});
				
			
		});
	
	</script>


<%@include file="../includes/footer.jsp" %>         