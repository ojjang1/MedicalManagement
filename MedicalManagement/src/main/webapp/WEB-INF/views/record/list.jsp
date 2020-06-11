<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@include file="../includes/header.jsp" %>


            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Tables</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Board List Page
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <table width ="100%" class="table table-striped table-bordered table-hover" id="dataTables-example" >
                                <thead>
                                    <tr>
                                        <th>#번호</th>
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
                            
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->


<%@include file="../includes/footer.jsp" %>         