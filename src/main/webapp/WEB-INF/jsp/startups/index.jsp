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
	function searchStartups(event) {
		if (event.keyCode == 13) {
			var startupsLocation = document.getElementById('max_price').value;

			if (startupsLocation.length <= 0) {
				alert("Please fill in the location");
			} else {
				var qualityIndex = document.getElementById('min_price').value;
				var toSend = '{"location":"' + startupsLocation
						+ '", "qualityIndex":"' + qualityIndex + '"}';

				$.ajax({
					url : '/startupsTable',
					type : 'POST',
					dataType : 'html',
					contentType : 'application/json',
					data : toSend,
					success : function(response, textStatus, xhr) {
						alert("ok");
						$('#startupListing').html(response);
					},
					error : function(xhr, textStatus, errorThrown) {
						alert("An error occurred!! " + errorThrown + xhr);
					}
				});
			}
		}
	}

	function searchStartupsByName(event) {
		if (event.keyCode == 13) {
			var name = document.getElementById('search').value;
			if (name.length <= 0) {
				alert("Please type in a name");
			} else {
				var toSend = '{"name":"' + name + '"}';
			
				$.ajax({
					url : '/startupByName',
					type : 'POST',
					dataType : 'html',
					contentType : 'application/json',
					data : toSend,
					success : function(response, textStatus, xhr) {
						alert("ok");
						$('#startupListing').html(response);
					},
					error : function(xhr, textStatus, errorThrown) {
						alert("An error occurred!! " + errorThrown + xhr);
					}
				});
			}
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

		<br /> <br />

		<section class="search">
			<div class="wrapper">
				<input type="text" id="search" name="search"
					placeholder="Search startup by name.."
					onkeypress="searchStartupsByName(event)" autocomplete="off" /> <a
					href="#" class="advanced_search_icon" id="advanced_search_btn"></a>
			</div>

			<div class="advanced_search">
				<div class="wrapper">
					<span class="arrow"></span>
					<div class="search_fields">
						<input type="text" class="float" id="min_price" name="min_price"
							placeholder="Quality Index" onkeypress="searchStartups(event)"
							autocomplete="off">

						<hr class="field_sep float" />

						<input type="text" class="float" id="max_price"
							onkeypress="searchStartups(event)" name="max_price"
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
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<!--  end hero section  -->
	<section class="listings">
		<div id="startupListing">
			
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