<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:import url="/top" />

<div class="container" style="margin-top:2rem">    
	<h1 style="text-align:center">Board Write</h1>
	<div class="row">
		<div class="col-md-10 col-md-offset-1">
		<!-- 주의: method는 post
				파일업로드시 enctype="multipart/form-data" -->
		<form name="boardF" action="board"
			 method="post" enctype="multipart/form-data">
			 <!-- --hidden data--------------------------- -->
			 <input type="hidden" name="mode" value="write">
			 <!-- ---------------------------------------- -->
			<table class="table">
				<tr>
					<td style="width:20%"><b>제목</b></td>
					<td>
					<input type="text" name="subject" maxlength="200"
					class="form-control" placeholder="Subject">
					</td>
				</tr>
				<tr>
					<td style="width:20%"><b>글쓴이</b></td>
					<td>
					<input type="text" name="name" 					
					class="form-control" placeholder="Name">
					</td>
				</tr>
				<tr>
					<td style="width:20%"><b>글내용</b></td>
					<td>
						<textarea rows="10" cols="50" 
						name="content" class="form-control"
						 placeholder="Content"></textarea>
					</td>
				</tr>
				<tr>
					<td style="width:20%"><b>첨부파일</b></td>
					<td>
					<input type="file" name="mfilename" 
					class="form-control" placeholder="Attach File">
					</td>
				</tr>
				<tr>
					<td style="width:20%"><b>비밀번호</b></td>
					<td>
					<input type="password" name="pwd" 
					class="form-control" placeholder="Password">
					</td>
				</tr>
				<tr>
					<td colspan="2" style="text-align:center">
						<button class="btn btn-success">글쓰기</button>
						<button type="reset" class="btn btn-warning">다시쓰기</button>
					</td>
				</tr>
			</table>
			</form>		
		</div>		
	</div>
	
</div>

<c:import url="/foot" />