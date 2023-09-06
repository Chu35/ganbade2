<%@ page contentType="text/html;charset=utf-8" %>
<!DOCTYPE html>
<html>
    <% String memberName = (String) session.getAttribute("memberName"); %>
<head>
	<meta charset="utf-8">
	<title>甘吧茶ㄉㄟˊ</title>
	<meta content="width=device-width, initial-scale=1.0" name="viewport">
	<meta content="" name="keywords">
	<meta content="" name="description">

	<!-- Favicon -->
	<link href="img/favicon.ico" rel="icon">

	<!-- Google Web Fonts 字型 -->
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link
		href="https://fonts.googleapis.com/css2?family=Jost:wght@500;600;700&family=Open+Sans:wght@400;500&display=swap"
		rel="stylesheet">

	<!-- Icon Font Stylesheet -->
	<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

	<!-- Libraries Stylesheet -->
	<link href="lib/animate/animate.min.css" rel="stylesheet">
	<link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

	<!-- Customized Bootstrap Stylesheet -->
	<link href="css/bootstrap.min.css" rel="stylesheet">

	<!-- Template Stylesheet -->
	<link href="css/style.css" rel="stylesheet">
</head>

<body>
	<!-- Spinner Start -->
	<div id="spinner"
		class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
		<div class="spinner-border text-primary" role="status" style="width: 3rem; height: 3rem;"></div>
	</div>
	<!-- Spinner End -->

	<!-- Navbar Start -->
	<div class="container-fluid fixed-top px-0 wow fadeIn top-0" data-wow-delay="0.1s">
		<div class="row gx-0 align-items-center d-none d-lg-flex"> </div>
		<nav class="navbar navbar-expand-lg navbar-light py-lg-0 px-lg-4 wow fadeIn" data-wow-delay="0.1s">
			<a class="navbar-brand logo" href="index.html">
				<img src="img/logo.png" alt="Website Logo" width="70px" />
			</a>
			<a href="index.html" class="navbar-brand ms-4 ms-lg-0">
				<link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico" />
			</a>
			<button type="button" class="navbar-toggler me-4" data-bs-toggle="collapse"
            data-bs-target="#navbarCollapse" id="navbar-toggler">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarCollapse">
				<div class="navbar-nav ms-auto p-4 p-lg-0">
					<a href="index.html#home" class="nav-item nav-link">首頁</a>
					<a href="index.html#life" class="nav-item nav-link">茶的一生</a>
					<div class="nav-item dropdown">
						<a href="knowl.html" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"
							aria-expanded="true">知識調查局</a>
						<div class="dropdown-menu border-light m-0" data-bs-popper="none">
							<a href="knowl.html" class="dropdown-item">茶種介紹</a>
							<a href="knowl2.html" class="dropdown-item">烘培發酵介紹</a>
							<a href="knowl3.html" class="dropdown-item">製茶步驟介紹</a>
						</div>
					</div>
					<a href="fun.html" class="nav-item nav-link">茶遊此地</a>
					<a href="contact.html" class="nav-item nav-link">關於我們</a>
					<div class="nav-item dropdown">
						<div id="user-icon" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><small
							class="fa fa-user text-primary"></small></div>
					<div class="dropdown-menu border-light m-0">
                            <a class="dropdown-item"><%= memberName %>, 你好</a>
							<div id="openTestButton" class="dropdown-item" style="cursor: pointer;">心理測驗</div>
							<a href="member.html" class="dropdown-item">客製滴滴</a>
						</div>
					</div>
				</div>
			</div>
		</nav>
	</div>

	<!-- Navbar End -->
	
	<!-- Test Start -->
	<div class="modal fade" id="exampleModaltest" tabindex="-1" aria-labelledby="exampleModalLabel1" aria-hidden="true" data-bs-backdrop="static" data-bs-keyboard="false"><div class="center">
    <div class="modal-dialog modal-dialog-centered modal-lg">
      <div class="modal-content">
        <div class="modal-header">
          <i type="button" id="closetest" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></i>
			<button id="back" onclick="goBack()">&laquo; back</button>
        </div>
        <div class="modal-body">
          <div class="container-xxl py-3">
              <div class="text-center mx-auto" style="max-width: 600px;">
				  <img id="imgtest" alt="Question Image">
				  <div id="question1"></div>
				  <div id="choices"></div>
				  <div id="results"></div>
			  </div>
			</div>
		  </div>
		</div>
		</div>
	</div>
	</div>
	<!-- Test End -->
	
	
	<!-- Keyvision Start -->
	<div id="home" class="container-fluid p-0 mb-1 wow fadeIn">
		<div id="image-container">
			<img src="img/kv1.png" alt="Original Image" class="image w-100">
			<img src="img/kv2.png" alt="Original Image" class="image w-100">
			<img src="img/kv3.png" alt="Left Image" class="image left-image w-100">
			<img src="img/kv4.png" alt="Right Image" class="image right-image w-100">
			<img src="img/kv5.png" alt="Right Image" class="image right-image w-100">
			<img src="img/kv7.png" alt="Left Image" class="image left-image w-100">
			<img src="img/kv9.png" alt="Right Image" class="image right-image w-100">
		</div>
	</div>
	<!-- keyvision End -->
	

	<!-- Tealife Start -->
	<div id="life" class="container-xxl py-4"></div>
	<div class="container-xxl py-4">
    <div class="container">
        <div class="text-center mx-auto wow fadeInUp" data-wow-delay="0.2s" style="max-width: 700px;">
            <div id="carouselExampleDark" class="carousel carousel-dark slide" data-bs-interval="false">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <h1 class="tealife py-1 px-3">紅茶的一生</h1>
                        <div class="video-container">
                            <video class="d-block w-100" autoplay muted loop playsinline>
                                <source src="img/採茶.mp4" type="video/mp4" >
                            </video>
                            <video class="d-block w-100" autoplay muted loop playsinline>
                                <source src="img/萎凋.mp4" type="video/mp4">
                            </video>
							<video class="d-block w-100" autoplay muted loop playsinline>
                                <source src="img/浪菁.mp4" type="video/mp4">
                            </video>
							<video class="d-block w-100" autoplay muted loop playsinline>
                                <source src="img/炒菁.mp4" type="video/mp4">
                            </video>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <h1 class="tealife py-1 px-3">綠茶的一生</h1>
                        <div class="video-container">
                            <video class="d-block w-100" controls>
                                <source src="path_to_your_green_tea_video1.mp4" type="video/mp4">
                                Your browser does not support the video tag.
                            </video>
                            <video class="d-block w-100" controls>
                                <source src="path_to_your_green_tea_video2.mp4" type="video/mp4">
                                Your browser does not support the video tag.
                            </video>
                            <!-- Add more video elements as needed -->
                        </div>
                    </div>
                    <!-- Add similar code for other tea types -->
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                </button>
            </div>
        </div>
    </div>
</div>

	<!-- About End -->

	<!-- Back to Top -->
	<a href="#" class="btn btn-lg btn-primary btn-lg-square rounded-circle back-to-top">
		<i class="bi bi-arrow-up"></i>
	</a>


	<!-- JavaScript Libraries -->
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
	<script src="lib/wow/wow.min.js"></script>
	<script src="lib/easing/easing.min.js"></script>
	<script src="lib/waypoints/waypoints.min.js"></script>
	<script src="lib/owlcarousel/owl.carousel.min.js"></script>
	<script src="lib/counterup/counterup.min.js"></script>

	<!-- Template Javascript -->
	<script src="js/main.js"></script>
	<script src="js/test.js"></script>
</body>

</html>