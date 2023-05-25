<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel ="stylesheet" href="CSS/HeaderMenu.css">
<link rel ="stylesheet" href="CSS/Newstyle.css">
<link rel ="stylesheet" href="CSS/Banner.css">

<style>
.dropdown-submenu {
 position: relative;
}

.dropdown-submenu .dropdown-menu {
 top: 0;
 left: 100%;
 margin-top: -1px;
}
</style>
</head>
<body>

<div class="slideshow-container">
 
  <div class="mySlides fade">
    <img src="./Img/banner1.jpg" class="imageChange">
    <div class="text">Nội dung </div>
  </div>
 
  <div class="mySlides fade">
    <img src="./Img/banner2.jpg" class="imageChange">
    <div class="text">Nội dung </div>
  </div>
 
  <div class="mySlides fade">
    <img src="./Img/banner3.jpg" class="imageChange">
    <div class="text">Nội dung </div>
  </div>
</div>
<br>
 
<div style="text-align:center">
  <span class="dot" onclick="currentSlide(0)"></span> 
  <span class="dot" onclick="currentSlide(1)"></span> 
  <span class="dot" onclick="currentSlide(2)"></span> 
</div>


<div class="topnav" >
<div style="float:right"> <form action="search" method="post">
        <input type="text" name="txt" placeholder="Search..">
               </form></div>
              </div>




<script>
  //khai báo biến slideIndex đại diện cho slide hiện tại
  var slideIndex;
  // KHai bào hàm hiển thị slide
  function showSlides() {
      var i;
      var slides = document.getElementsByClassName("mySlides");
      var dots = document.getElementsByClassName("dot");
      for (i = 0; i < slides.length; i++) {
         slides[i].style.display = "none";  
      }
      for (i = 0; i < dots.length; i++) {
          dots[i].className = dots[i].className.replace(" active", "");
      }
 
      slides[slideIndex].style.display = "block";  
      dots[slideIndex].className += " active";
      //chuyển đến slide tiếp theo
      slideIndex++;
      //nếu đang ở slide cuối cùng thì chuyển về slide đầu
      if (slideIndex > slides.length - 1) {
        slideIndex = 0
      }    
      //tự động chuyển đổi slide sau 5s
      setTimeout(showSlides, 5000);
  }
  //mặc định hiển thị slide đầu tiên 
  showSlides(slideIndex = 0);
 
 
  function currentSlide(n) {
    showSlides(slideIndex = n);
  }
</script>

</body>
</html>