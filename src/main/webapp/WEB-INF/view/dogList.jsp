<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List of Dogs</title>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<table class="table table-bordered table-strpied nanum table-hover"  style="text-align:center">
			<tr>
				<th>index ${path}</th>
				<th>name</th>
				<th>gender</th>
			</tr>
			<c:forEach var="row" items="${dogList}" varStatus="status">
			<tr>
				<td><a href="detail.do/${row.animal_idx}">${row.animal_idx}</a></td>
				<td>${row.animal_name }</td>
				<td>${row.gender}</td>
			</tr>
			</c:forEach>	
		</table>

</body>
</html>