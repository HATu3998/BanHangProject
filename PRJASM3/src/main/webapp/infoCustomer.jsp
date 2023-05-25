<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"><script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

</head>
<body>
<main class="mt-5 pt-4">
 <form action="PayController" method="post">
    <div class="container wow fadeIn">

      <!-- Heading -->
      <h2 class="my-5 h2 text-center">Checkout form</h2>

      <!--Grid row-->
      <div class="row">

        <!--Grid column-->
        <div class="col-md-8 mb-4">

          <!--Card-->
          <div class="card">

            <!--Card content-->
            <form class="card-body">

              <!--Grid row-->
              <div class="row">

                <!--Grid column-->
                <div class="col-md-6 mb-2">

               <form action ="" method="get">
                <div class="md-form ">
                  <label for="firstName" class="">First name</label>
                    <input type="text" name="firstName" class="form-control">
                    
                  </div></form>   <!--firstName-->
                 

                </div>
                <!--Grid column-->

                <!--Grid column-->
                <div class="col-md-6 mb-2">

                  <!--lastName-->
                  <div class="md-form">
                  
                  
                  <label for="lastName" class="">Last name</label>
                    <input type="text" name="name" class="form-control">
                    
                  </div>

                </div>
                <!--Grid column-->

              </div>
              <!--Grid row-->

             
              <div class="md-form input-group pl-0 mb-5">
                <div class="input-group-prepend">
                  <span class="input-group-text" id="basic-addon1"></span>
                </div>
               
              </div>

              <!--email-->
              <div class="md-form mb-5">
               <label for="email" class="">Email (optional)</label>
                <input type="text" name="discount" class="form-control" placeholder="youremail@example.com">
               
              </div>

              <!--address-->
              <div class="md-form mb-5">
              <label for="address" class="">Address</label>
                <input type="text" name="address" class="form-control" placeholder="1234 Main St">
                
              </div>
  <hr class="mb-4">
 
          <button class="btn btn-primary btn-lg btn-block" type="submit">Continue to checkout</button>
             </form>
  </main>
  <!--Main layout-->
</body>
</html>