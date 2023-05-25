<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel ="stylesheet" href="CSS/body.css">

  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

</head>
<body>


<!-- <div class ="row"> -->
<!--  <div class="col-md-8"> -->
<!--        <div class="leftcolumn" > -->
      
<!--       <div class="card"> -->
      
<%--       <c:forEach var="o" items="${listP}"> --%>

<%-- <h5>"${o.name}"</h5> --%>
<%-- <div class ="fakeimg" style ="height:200px;" ><img src="${o.src}"></div> --%>
<%-- <p>"${o.description}"</p> --%>
<%-- </c:forEach> --%>
<!--      </div> -->

 <div class="container">


    <!--Section: Products v.3-->
    <section class="text-center mb-4">

      <!--Grid row-->
      <div class="row wow fadeIn">

        <!--Grid column-->
        <c:forEach var="o" items="${listP}">
        <div class="col-lg-3 col-md-6 mb-4">

          <!--Card-->
            
          <div class="card">

            <!--Card image-->
            <div class="view overlay">
              <img src="${o.src}" class="card-img-top" alt="">
              <a>
                <div class="mask rgba-white-slight"></div>
              </a>
            </div>
            <!--Card image-->

            <!--Card content-->
            <div class="card-body text-center">
              <!--Category & Title-->
              <a href="List?pid=${o.id}" class="grey-text">
                <h5>"${o.brand}"</h5>
              </a>
              <h5>
                <strong>
                  <a href="List?pid=${o.id}" class="dark-grey-text">"${o.name}"
                    <span class="badge badge-pill danger-color">"${o.description}"</span>
                  </a>
                </strong>
              </h5>

              <h4 class="font-weight-bold blue-text">
                <strong>${o.price}</strong>
              </h4>

            </div>
            <!--Card content-->
  
          </div>
          <!--Card-->
           
 </div></c:forEach> 
        </div>
        <!--Grid column-->
 </div>
        <!--Grid column-->
   
     
</body>
</html>