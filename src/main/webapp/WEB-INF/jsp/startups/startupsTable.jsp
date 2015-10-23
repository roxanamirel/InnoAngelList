<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
.search_results_class2 {
	float: left;
	width: 100%;
	overflow-y: auto;
	height: 200px;
}
</style>
</head>
<body>
	<p>Vlad Rocks!</p>
	<div class="search_results_class2" id="search_results">
		<table>
			<tr>
				<th>Startup Name</th>
				<th>Startup Location</th>
			</tr>
			<c:if test="${not empty total_startups_by_location}">
				<c:forEach var="listValue" items="${total_startups_by_location}">
					<tr>
						<td>${listValue.name}</td>
						<td>Helsinki</td>
					</tr>
				</c:forEach>
			</c:if>
		</table>
	</div>
</body>
</html>