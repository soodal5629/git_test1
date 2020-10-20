<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Detail of Animals</title>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<h1>Details</h1>
		<table class="table table-bordered table-strpied nanum table-hover"  style="text-align:center">
			<tr><td>이름</td><td>${detail.animal_name}</td></tr>
			<tr><td>성별</td><td>${detail.gender}</td></tr>
			<tr><td>특징</td><td>${detail.memo}</td></tr>
		</table>
		<br><br>
		<div class="container">
		  <button type="button" class="btn btn-primary">Adopt?</button>
		  <button type="button" class="btn btn-warning" data-toggle="modal" data-target="#updateModal">게시물 수정</button>
		  <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#deleteModal">게시물 삭제</button>
		  <button type="button" class="btn btn">Go back to home</button>      
		</div>
		
		<!-- 수정 모달 -->
	<div class="modal fade" id="updateModal">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header" style="padding: 35px 50px; background-color: rgb(255,188,121);">
					<h4>동물 정보 수정</h4>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>
				<div class="modal-body" style="padding: 40px 50px;">
					<form class="form-horizontal" name="updateForm" id="updateForm"
						method="POST" action="update.do">
						<div class="form-group">
							<label for="animal_name">이름</label> <input type="text" class="form-control" id="animal_name" name="animal_name"
								maxlength="20" placeholder="이름을 입력하십시오" />
						</div>

						<div class="form-group">
							<label for="gender">성별</label> <input type="text" class="form-control" id="gender" maxlength="4"
								name="gender" placeholder="성별을 입력해주세요(dog/cat)">
						</div>

						<div class="form-group">
							<label for="memo">특징</label> <input type="text" class="form-control" id="memo" maxlength="100"
								name="memo" placeholder="특징을 입력해주세요">
						</div>
						
						<div>
							<input type="hidden" class="form-control" id="animal_idx" name="animal_idx" value="" />
							<!-- 수정필요 -->
						</div>
					</form>
					
					<!-- toast -->
					<div class="alert alert-danger collapse form-group" id="alert_name" role="alert" align="center" style="z-index: 999; position:absolute; left: 130px">
						    동물의 이름을 입력하십시오.
					</div>
					<div class="alert alert-danger collapse form-group" id="alert_gender" role="alert" align="center" style="z-index: 999; position:absolute; left: 130px">
						    동물의 성별을 입력하십시오.
					</div>
					<div class="alert alert-danger collapse form-group" id="alert_memo" role="alert" align="center" style="z-index: 999; position:absolute; left: 130px">
						    동물의 특징을 입력하십시오.
					</div>
					<div class="alert alert-success collapse form-group" id="alert_update" role="alert" align="center" style="z-index: 999; position:absolute; left: 130px">
						  게시물이 수정되었습니다.
					</div>
					
				</div>
				<div class="modal-footer">
					<button class="btn btn-warning btn-block" id="modalSubmit">
						<span class="glyphicon glyphicon-ok"></span> 수정
					</button>
				</div>

			</div>
		</div>
	</div>
		
		
<script>
$('#modalSubmit').on('click', function() { //프로젝트 수정 모달
	
	var err_yn = 0;
	if ($('#animal_name').val().length == 0) {
		//alert("프로젝트 제목을 입력하십시오.");
		$('#alert_name').toast('show');
		document.updateForm.animal_name.focus();
		err_yn = 1;
	}else{
		if ($('#gender').val().length == 0) {
			//alert("프로젝트 시작일을 입력하십시오.");
			 $('#alert_gender').toast('show');
			document.updateForm.gender.focus();
			err_yn = 1;
		}else{
			if ($('#memo').val().length == 0) {
				//alert("프로젝트 기한을 입력하십시오.");
				$('#alert_memo').toast('show');
				document.updateForm.memo.focus();
				err_yn = 1;
			}
		}
	}
	
	if (err_yn == 0) {
		$('#updateForm').submit();
		$('#alert_update').toast('show');
	} else {
		return false;
	}	
}); //프로젝트 수정모달 끝
</script>
</body>
</html>