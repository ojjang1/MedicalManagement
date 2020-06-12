<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!--  header.jsp include -->
<%@include file="../includes/header.jsp" %>

<div class="row" >
	<div class="col-lg-12" >
		<h1 class="page-header" >기록 확인</h1>
	</div>
	<!-- /.col-lg-12 -->
</div>
<!--  /.row -->

<div class="row" >
	<div class="col-lg-12">
		<div class="panel panel-default" >
			
			<div class="panel-heading"> 방문기록 상세보기</div>
			<!--  /.panel-heading -->
			<div class="panel-body" >
			
					<div class="form-group" >
						<label>글 번호</label> <input class="form-control" name='r_no' value='<c:out value="${record.r_no}" />' readonly="readonly">
					</div>
					
					<div class="form-group" >
						<label>방문일</label> <input class="form-control" name='visitdate' value='<fmt:formatDate value="${record.visitdate}" pattern="yyyy-MM-dd" />' readonly="readonly" >
					</div>
					
					<div class="form-group" >
						<label>방문병원</label> <input class="form-control" name='hospital' value='<c:out value="${record.hospital}" />' readonly="readonly">
					</div>
					
					<div class="form-group" >
						<label>진료과</label> <input class="form-control" name='department' value='<c:out value="${record.department}" />' readonly="readonly" >
					</div>
					
					<div class="form-group" >
						<label>증상</label> <input class="form-control" name='sickness' value='<c:out value="${record.sickness}" />' readonly="readonly" >
						<label>질병코드</label><input class="form-control" name='kcd7' value='<c:out value="${record.kcd7}" />' readonly="readonly">
					</div>
					
					<div class="form-group">
                 		<label>진료 내용</label>
                  		<textarea class="form-control" rows="3" name="record" readonly="readonly" ><c:out value="${record.record}" /></textarea>
                  	</div>
					
					<div class="form-group" >
						<label>진료비</label> <input class="form-control" name='d_cost' value='<c:out value="${record.d_cost}" />' readonly="readonly">
					</div>
					
					<div class="form-group" >
						<label>약국</label> <input class="form-control" name='phrmacy' value='<c:out value="${record.phrmacy}" />' readonly="readonly">
					</div>
					
					<div class="form-group">
                 		<label>처방약</label>
                  		<textarea class="form-control" rows="2" name="medicine" readonly="readonly" ><c:out value="${record.medicine}" /></textarea>
                  	</div>
                  	
                  	<div class="form-group" >
						<label>약제비</label> <input class="form-control" name='m_cost' value='<c:out value="${record.m_cost}" />' readonly="readonly">
					</div>
					
					<div class="form-group" >
						<label>영수증/처방전 첨부(예정) </label> <button> 첨부 </button>
					</div>
					<button data-oper="modify" class="btn btn-default"  onclick="location.href='/record/modify?r_no=<c:out value="${record.r_no}" />' " >수정</button>
					<button data-oper="list" class="btn btn-info" onclick="location.href='/record/list'" >목록으로</button>
									
				
			</div>
			<!--  end panel-body -->
			
		</div>
		<!--  end panel-body -->
	</div>
	<!-- end panel -->
</div>
<!-- /.row -->

<%@include file="../includes/footer.jsp" %>