<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="css/header.css" />
    <link rel="stylesheet" href="css/footer.css" />
    <link rel="stylesheet" href="css/managerPage.css" />
    <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
    <script src="js/header.js"></script>
    <title>상품 상세페이지</title>
  </head>
  <body>
    <div id="container">
      <jsp:include page="header.jsp" />
      <section id="manager_se1">
        <h2>상품등록</h2>
  		<form id="product_frm" name="product_frm" action="managerPagePro.do" method="post" 
  					enctype="multipart/form-data">
         제품코드: <input type="text" name="pdcode" id="pdcode" 
         placeholder="PSB000" minlength="6" maxlength="6" style="text-transform: uppercase;"> <br>
         이름: <input type="text" name="p_name" id="p_name"><br>
         색상: <input type="text" name="p_color" id="p_color" style="text-transform: lowercase;"><br>
         대분류 : <select name="p_page">
                <option value="men">MEN</option>
                <option value="kangol">캥거루</option>
                <option value="women">WOMEN</option>
                </select>
         소분류: <select name="p_classify">
                <option value="shoes">신발</option>
                <option value="dress">옷</option>
                <option value="pants">바지</option>
                <option value="acces">악세서리</option>
              </select><br>
         가격: <input type="text" name="p_price" id="p_price"
         	 minlength="5" maxlength="7" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');">원<br>
         설명: <textarea cols="40" rows="20" name="p_explain"></textarea><br>
         이미지: <input type="file" name="p_img" id="p_img"><br>
         서브이미지(여러개 등록): <input type="file" name="p_img2" multiple><br> 
         <input type="button" value="상품등록" onClick="checkSubmit()">
         <!-- <input type="button" value="테스트" id="btn_upload"> -->
        </form>
      </section>
  <jsp:include page="footer.jsp" />
    </div>
    <script src="js/managerPage.js"></script>
  </body>
</html>
