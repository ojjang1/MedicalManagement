<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!--  header.jsp include -->
<%@include file="../includes/header.jsp" %>

<div class="row" >
	<div class="col-lg-12" >
		<h1 class="page-header" >기록 등록</h1>
	</div>
	<!-- /.col-lg-12 -->
</div>
<!--  /.row -->

<div class="row" >
	<div class="col-lg-12">
		<div class="panel panel-default" >
			
			<div class="panel-heading"> 방문 사항을 입력하세요</div>
			<!--  /.panel-heading -->
			<div class="panel-body" >
			
				<form role="form" action="/record/register" method="post" >
					
					<div class="form-group" >
						<label>방문일</label> <input class="form-control" name='#' >
					</div>
					
					<div class="form-group" >
						<label>방문병원</label> <input class="form-control" name='hospital' >
					</div>
					
					<div class="form-group" >
						<label>진료과</label> <input class="form-control" name='department' >
					</div>
					
					<div class="form-group" >
						<label>증상</label> <input class="form-control" name='sickness' >
						<label>질병코드</label><input class="form-control" name='kcd7' >
					</div>
					
					<div class="form-group">
                 		<label>진료 내용</label>
                  		<textarea class="form-control" rows="3" name="record"></textarea>
                  	</div>
					
					<div class="form-group" >
						<label>진료비</label> <input class="form-control" name='d_cost' >
					</div>
					
					<div class="form-group" >
						<label>약국</label> <input class="form-control" name='phrmacy' >
					</div>
					
					<div class="form-group">
                 		<label>처방약</label>
                  		<textarea class="form-control" rows="2" name="medicine"></textarea>
                  	</div>
                  	
                  	<div class="form-group" >
						<label>약제비</label> <input class="form-control" name='m_cost' >
					</div>
					
					<div class="form-group" >
						<label>영수증/처방전 첨부(예정) </label> <button> 첨부 </button>
					</div>
					<button type="submit" class="btn btn-default" >등록하기</button>
					<button type="reset" class="btn btn-default" >초기화</button>
									
				</form>
				
			</div>
			<!--  end panel-body -->
			
		</div>
		<!--  end panel-body -->
	</div>
	<!-- end panel -->
</div>
<!-- /.row -->

<%@include file="../includes/footer.jsp" %>