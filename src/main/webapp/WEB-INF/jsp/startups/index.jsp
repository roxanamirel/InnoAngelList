<!DOCTYPE html>
<html lang="en">
<head>
<title>InnoDigital</title>
<meta charset="utf-8">
<meta name="description"
	content="La casa free real state fully responsive html5/css3 home page website template" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, minimum-scale=1.0" />

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/reset.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/responsive.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/main.css">

<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/main.js"></script>

<script>
	function searchStartupsByLocation(event) {
		if (event.keyCode == 13) {
			var startupsLocation = document.getElementById('max_price').value;
			var toSend = '{"location":"' + startupsLocation + '"}';
			/*
			$.ajax({
				url : '/getStartupsByLocation/' + startupsLocation,
				type : 'GET',
				dataType : 'html',
				success : function(response, textStatus, xhr) {
					alert("ok");
					$('#search_results').html(response);
				},
				error : function(xhr, textStatus, errorThrown) {
					alert("An error occurred!! " + errorThrown + xhr);
				}
			});
			 */

			$.ajax({
				url : '/startupsTable',
				type : 'POST',
				dataType : 'html',
				contentType : 'application/json',
				data : toSend,
				success : function(response, textStatus, xhr) {
					alert("ok");
					$('#search_results').html(response);
				},
				error : function(xhr, textStatus, errorThrown) {
					alert("An error occurred!! " + errorThrown + xhr);
				}
			});
		}

	}
</script>

</head>
<body>

	<section class="hero">
		<header>
			<div class="wrapper">
				<a href="#"><img
					src="${pageContext.request.contextPath}/img/logo.png" class="logo"
					alt="" titl="" />InnoDigitalLogo</a> <a href="#" class="hamburger"></a>
			<!-- <nav>
					<ul>
						<li><a href="#">About</a></li>
						<li><a href="#">Contact</a></li>
					</ul>
					<a href="#" class="login_btn">Login</a>
				</nav> -->
			</div>
		</header>
		<!--  end header section  -->

		
	
		<br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br />
		<br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br />
		<br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br />
		<br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br />
		<br /> <br />
		<section class="search">
			<div class="wrapper">
				<form action="#" method="post">
					<input type="text" id="search" name="search"
						placeholder="Search startup by name.." autocomplete="off" /> <input
						type="submit" id="submit_search" name="submit_search" />
				</form>
				<a href="#" class="advanced_search_icon" id="advanced_search_btn"></a>
			</div>

			<div class="advanced_search">
				<div class="wrapper">
					<span class="arrow"></span>
					<div class="search_fields">
						<input type="text" class="float" id="min_price" name="investment"
							placeholder="Investment" autocomplete="off">

						<hr class="field_sep float" />

						<input type="text" class="float" id="max_price"
							onkeypress="searchStartupsByLocation(event)" name="location"
							placeholder="Location" autocomplete="off">
					</div>
					
				</div>
			</div>
			<!--  end advanced search section  -->
		</section>
		<section class="search_results_section">
			<div class="search_results_class" id="search_results">
				<!-- <jsp:include page="/startupsTable"/> -->
			</div>
		</section>

	</section>
	<br/><br/><br/><br/><br/><br/><br/><br/><br/>
	<br/><br/><br/><br/><br/><br/><br/><br/><br/>
	<!--  end hero section  -->
	<section class="listings">
		<div class="wrapper">
			<ul class="properties_list">
				<li><a href="#"> <img
						src="${pageContext.request.contextPath}/img/property_1.jpg" alt=""
						title="" class="property_img" />
				</a> <span class="price">QualityIndex</span>
					<div class="property_details">
						<h1>
							<a href="#">Fuisque dictum tortor at purus libero</a>
						</h1>
						<h2>
							Most important details... <span class="property_size"></span>
						</h2>
					</div></li>
				<li><a href="#"> <img
						src="${pageContext.request.contextPath}/img/property_2.jpg" alt=""
						title="" class="property_img" />
				</a> <span class="price">QualityIndex</span>
					<div class="property_details">
						<h1>
							<a href="#">Fuisque dictum tortor at purus libero</a>
						</h1>
						<h2>
							Most important details... <span class="property_size">)</span>
						</h2>
					</div></li>
				<li><a href="#"> <img
						src="${pageContext.request.contextPath}/img/property_3.jpg" alt=""
						title="" class="property_img" />
				</a> <span class="price">QualityIndex</span>
					<div class="property_details">
						<h1>
							<a href="#">Fuisque dictum tortor at purus libero</a>
						</h1>
						<h2>
							Most important details... <span class="property_size"></span>
						</h2>
					</div></li>
				<li><a href="#"> <img src="img/property_1.jpg" alt=""
						title="" class="property_img" />
				</a> <span class="price">QualityIndex</span>
					<div class="property_details">
						<h1>
							<a href="#">Fuisque dictum tortor at purus libero</a>
						</h1>
						<h2>
							Most important details... <span class="property_size"></span>
						</h2>
					</div></li>
				<li><a href="#"> <img src="img/property_2.jpg" alt=""
						title="" class="property_img" />
				</a> <span class="price">QualityIndex</span>
					<div class="property_details">
						<h1>
							<a href="#">Fuisque dictum tortor at purus libero</a>
						</h1>
						<h2>
							Most important details... <span class="property_size"></span>
						</h2>
					</div></li>
				<li><a href="#"> <img
						src="${pageContext.request.contextPath}/img/property_3.jpg" alt=""
						title="" class="property_img" />
				</a> <span class="price">QualityIndex</span>
					<div class="property_details">
						<h1>
							<a href="#">Fuisque dictum tortor at purus libero</a>
						</h1>
						<h2>
							Most important details... <span class="property_size"></span>
						</h2>
					</div></li>
				<li><a href="#"> <img
						src="${pageContext.request.contextPath}/img/property_1.jpg" alt=""
						title="" class="property_img" />
				</a> <span class="price">QualityIndex</span>
					<div class="property_details">
						<h1>
							<a href="#">Fuisque dictum tortor at purus libero</a>
						</h1>
						<h2>
							Most important details... <span class="property_size"></span>
						</h2>
					</div></li>
				<li><a href="#"> <img
						src="${pageContext.request.contextPath}/img/property_2.jpg" alt=""
						title="" class="property_img" />
				</a> <span class="price">QualityIndex</span>
					<div class="property_details">
						<h1>
							<a href="#">Fuisque dictum tortor at purus libero</a>
						</h1>
						<h2>
							Most important details... <span class="property_size"></span>
						</h2>
					</div></li>
				<li><a href="#"> <img
						src="${pageContext.request.contextPath}/img/property_3.jpg" alt=""
						title="" class="property_img" />
				</a> <span class="price">QualityIndex</span>
					<div class="property_details">
						<h1>
							<a href="#">Fuisque dictum tortor at purus libero</a>
						</h1>
						<h2>
							Most important details... <span class="property_size"></span>
						</h2>
					</div></li>
			</ul>
			<div class="more_listing">
				<a href="#" class="more_listing_btn">Search again</a>
			</div>
		</div>
	</section>
	<!--  end listing section  -->

	<footer>
		<div class="wrapper footer">
			<ul>

				<li class="about">
					<p>tellus varius, dictum erat vel, maximus tellus. Sed vitae
						auctor ipsum</p>
					<ul>
						<li><a href="http://facebook.com/pixelhint" class="facebook"
							target="_blank"></a></li>
						<li><a href="http://twitter.com/pixelhint" class="twitter"
							target="_blank"></a></li>
						<li><a href="http://plus.google.com/+Pixelhint"
							class="google" target="_blank"></a></li>
						<li><a href="#" class="skype"></a></li>
					</ul>
				</li>
			</ul>
		</div>

		<div class="copyrights wrapper">Copyright © 2015 All Rights
			Reserved.</div>
	</footer>
	<!--  end footer  -->

</body>
</html>