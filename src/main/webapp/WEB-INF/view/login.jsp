<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE HTML>
<html>
<head>
<title>CMPE 275 Book-Store</title>
<link href="${pageContext.request.contextPath}/resources/css/bootstrap.css" rel='stylesheet' type='text/css' media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="${pageContext.request.contextPath}/resources/js/jquery-1.11.0.min.js"></script>
<!-- Custom Theme files -->
<link href="${pageContext.request.contextPath}/resources/css/style.css" rel='stylesheet' type='text/css' media="all" />
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Google Fonts -->
<link href='http://fonts.googleapis.com/css?family=Lato:100,300,400,700,900' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/sticky-navigation.css" />
<link href="${pageContext.request.contextPath}/resources/css/demo.css" rel="stylesheet" type="text/css" />
<script>
$(function() {

	// grab the initial top offset of the navigation 
	var sticky_navigation_offset_top = $('#sticky_navigation').offset().top;
	
	// our function that decides weather the navigation bar should have "fixed" css position or not.
	var sticky_navigation = function(){
		var scroll_top = $(window).scrollTop(); // our current vertical position from the top
		
		// if we've scrolled more than the navigation, change its position to fixed to stick to top, otherwise change it back to relative
		if (scroll_top > sticky_navigation_offset_top) { 
			$('#sticky_navigation').css({ 'position': 'fixed', 'top':0, 'left':0 });
		} else {
			$('#sticky_navigation').css({ 'position': 'relative' }); 
		}   
	};
	
	// run our function on load
	sticky_navigation();
	
	// and run it again every time you scroll
	$(window).scroll(function() {
		 sticky_navigation();
	});
	
	// NOT required:
	// for this demo disable all links that point to "#"
	$('a[href="#"]').click(function(event){ 
		event.preventDefault(); 
	});
	
});
</script>
</head>
<script>
     function initialize()
     {
      if(document.getElementById('unameInput').value == "" || document.getElementById('pwdInput').value == "" ){
    	alert("Values Missing!");
    	return false;
    }
     }
    
    </script>
<body>
	<!-- Header Part Starts Here -->
<div class="header">
	<div class="container">
	<div id="demo_top_wrapper">
	<div id="sticky_navigation_wrapper">
		<div id="sticky_navigation">
			<div class="demo_container navigation-bar">
				<div class="navigation">
					<div class="logo"><a href="index.html">BookStore</a></div>
					<span class="menu"></span>
					<script>
						$( "span.menu" ).click(function() {
						  $( ".navig" ).slideToggle( "slow", function() {
						    // Animation complete.
						  });
						});
					</script>
					<div class="navig">
						<ul>
							<li><a href="buyers.html">Buyers</a></li>
							<li><a href="sellers.html">Sellers</a></li>
							<li><a href="books.html">Books</a></li>
							<li><a href="feedback.html">Feedback</a></li>
							<li><a href="about.html">About</a></li>
						</ul>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="navigation-right">
					<ul class="user">
						<li><span></span><a href="login.html">${currentView}</a></li>
									<li><span class="bascket"></span><a href="logout.html">Logout</a>
						</li>
						<li>
							<button class="search"></button>
						</li>
					</ul>
				</div>
				<div class="clearfix"></div>
				<div class="serch">
								<form action="doSearch" method="post">
								<span>
					      			<input type="text" placeholder="Search" name="searchText" />
									<input type="submit" value="" />
								</span>
							</form>
				</div>
				<script>
					$( "button.search" ).click(function() {
					  $( ".serch" ).slideToggle( "slow", function() {
					    // Animation complete.
					  });
					});
				</script>
			</div>
		</div>
	</div>
</div>
</div>
</div>
<div class="container">
<section id="main">
	<div class="content">
		<div class="pag-nav">
			<ul class="p-list">
				<li><a href="index.html">Home</a></li> &nbsp;&nbsp;/&nbsp;
				<li class="act">&nbsp;Login</li>
			</ul>
		</div>
		<div class="coats">
			<h3 class="c-head">Login</h3>
			<p>Please enter your details.</p>
		</div>
		<div class="contact-box login-box">
		${loginfailure}
		<form:form action="validating" method="post" modelAttribute="user" onsubmit="return initialize()">
			<div class="form">
				<small>User Name</small>
				<div class="text">
					<form:input path="username" id="unameInput" />
				</div>
			</div>
			<div class="form">
				<small>Password</small>
				<div class="text">
					<form:input path="password" id="pwdInput" type = "password" />
				</div>
			</div>
			<div class="text">
				<input type="submit" value="Login" />
			</div>
			<div class="text">
				<a href="#">Forgot Password</a>
			</div>
			</form:form>
		</div>
		<div class="coats login-bot">
			<h3 class="c-head">For New Users</h3>
			<p>Please Register.</p>
			<div class="reg">
				<a href="register.html">
					Register Here
				</a>
			</div>
		</div>
				<div class="clearfix"></div>
			</div>

</section>
</div>
</body>
</html>