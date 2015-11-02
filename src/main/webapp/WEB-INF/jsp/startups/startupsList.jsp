<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/reset.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/responsive.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/main.css">
<title>Insert title here</title>
</head>
<body>
	<div class="wrapper">
		<ul class="properties_list">
			<c:if test="${not empty total_startups_by_location}">
				<c:forEach var="listValue" items="${total_startups_by_location}">
					<li><a href="${listValue.company_url }"> <img src="${listValue.logo_url}" alt=""title="" class="property_img" />
					</a> 
						<div class="property_details">
							<h2>QualityIndex: ${listValue.quality}</h2>
							<h2>
								${listValue.name} <span class="property_size"></span>
							</h2>
						</div></li>
				</c:forEach>
			</c:if>
		</ul>
	</div>
	<div class="more_listing">
		<a href="#" class="more_listing_btn">Search again</a>
	</div>
</body>
</html>