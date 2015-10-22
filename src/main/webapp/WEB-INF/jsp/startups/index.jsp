<html>
<head>
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.min.css">
<link rel="stylesheet"
	href="http://bootsnipp.com/dist/bootsnipp.min.css?ver=7d23ff901039aef6293954d33d23c066">

<title>Hello world page</title>
</head>
<body>
	<h1>${message}</h1>

	<form class="form-horizontal">
		<fieldset>

			<!-- Form Name -->
			<legend>Form Name</legend>

			<!-- Select Multiple -->
			<div class="form-group">
				<label class="col-md-2 control-label" for="selectmultiple">Select
					Multiple</label>
				<div class="col-md-4">
					<select id="selectmultiple" name="selectmultiple"
						class="form-control" multiple="multiple">
						<option value="1">Option one</option>
						<option value="2">Option two</option>
					</select> <input id="searchinput" name="searchinput"
						placeholder="placeholder" class="form-control input-md"
						type="search">
					<p class="help-block">help</p>
					<button id="singlebutton" name="singlebutton"
						class="btn btn-primary">Button</button>
				</div>
			</div>
		</fieldset>
	</form>

</body>
</html>