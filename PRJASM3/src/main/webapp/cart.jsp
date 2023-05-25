<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"><script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<link rel ="stylesheet" href="CSS/Cart.css">
<style></style>
</head>
<body>

<script src="js/jquery-1.11.1.min.js"></script>



<h2 class="text-center"> giỏ hàng </h2>
<div class="container"> 
 <table id="cart" class="table table-hover table-condensed"> 
  <thead> 
   <tr> 
    <th style="width:50%">Tên sản phẩm</th> 
    <th style="width:10%">Giá</th> 
    <th style="width:8%">Số lượng</th> 
    <th style="width:22%" class="text-center">Thành tiền</th> 
    <th style="width:10%"> </th> 
   </tr> 
  </thead> 
  <tbody>
  <% //thông tin sản phẩm đã chọn vào giỏ hàng%>
  <c:set var="priceTotal" value="${0}" /> 
 <c:forEach var="product" items="${productList}">
  <tr> 
   <td data-th="Product"> 
    <div class="row"> 
     <div class="col-sm-2 hidden-xs"><img src="${product.src}" alt="Sản phẩm 1" class="img-responsive" width="100">
     </div> 
     <div class="col-sm-10"> 
      <h4 class="nomargin">${product.name}</h4> 
      <p>${product.description}</p> 
     </div> 
    </div> 
   </td> 
   <td data-th="Price">${product.price}$</td> 
   <td data-th="Quantity"><input class="form-control text-center" value="1" type="number">
   </td> 
   <td data-th="Subtotal" class="text-center">${product.price}$</td> 
   <td class="actions" data-th="">
    <button class="btn btn-info btn-sm"><i class="fa fa-edit">+</i>
    </button> 
    <form method="get"  action="AddToCartController">
              <!-- Default input -->
               <input type="hidden" name="idd" value="${product.id}">
              <input type="hidden" name="action" value="delete">
    <button class="btn btn-danger btn-sm"><i class="fa fa-trash-o">x</i>
    </button> </form>
   </td> 
  </tr> 
  <c:set var="priceTotal" value="${priceTotal+product.price}"/>
  </c:forEach>
  
  
   <tr> 
    <td><a href="Body" class="btn btn-warning"><i class="fa fa-angle-left"></i> Tiếp tục mua hàng</a>
    </td> 
  
    <td colspan="2" class="hidden-xs"> </td> 
    <td class="hidden-xs text-center"><strong>${priceTotal}   $</strong>
    </td>
    <td><a href="infoCustomer.jsp" class="btn btn-success btn-block">Thanh toán <i class="fa fa-angle-right"></i></a>
    </td> 
   </tr> 
  </tfoot> 
 </table>
</div>
</body>
</html>