<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="talkdog.vo.ProductVO" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>



<!DOCTYPE html>
<html>
<head>
<style>
  /* 여기에 추가한 CSS 스타일 */
  .form-container {
    align-content: center;
  }
  .logout-btn {
    position: absolute;
    right: 530px;
  }
</style>

<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" media="screen">

 <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="../assets/img/favicon.png" rel="icon">
  <link href="../assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="../assets/vendor/animate.css/animate.min.css" rel="stylesheet">
  <link href="../assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="../assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="../assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="../assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="../assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">
<title>prouctAdd.jsp</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" media="screen">
<script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
</head>
<body>
<!-- 상품등록 페이지 : admin으로 로그인한 경우에만 접속할 수 있도록 web.xml과 tomcat-users.xml에 설정함 -->
<%@ include file="../include/header.jsp" %>

<div class="jumbotron">
   <div class="container">

   <fmt:setLocale value="${param.language }"/><!-- 상품등록창 넘어올 때 파라미터에 language 넘김 -->
   <fmt:setBundle basename="talkdog.bundle.message" var="msgBundle"/>
      <h1 class="display-4">✅ 상품등록</h1>
   </div>
</div>

<main role="main">
  <div class="container">
       <div class="row mx-auto">
   
      <!-- 파일첨부의 경우 form태그에 enctype="multipart/form-data" 필수 -->
      <form action="productAddProc.jsp" method="post" class="form-horizontal" enctype="multipart/form-data">
         <div class="form-group row"> 
            <label class="col-sm-2">상품고유번호</label>
            <div class="col-sm-3">
               <input name="pId" id="pId" type="text" class="form-control"  required>
            </div></div>
      
         <div class="form-group row"> 
            <label class="col-sm-2">상품명</label>
            <div class="col-sm-3">
               <input name="pName" id="pName" type="text" class="form-control" required>
            </div></div>
      
         <div class="form-group row"> 
            <label class="col-sm-2">상품가격</label>
            <div class="col-sm-3">
               <input name="pPrice" id="pPrice" type="number" class="form-control"
                     value="0" min="0" step="1000" required>
            </div></div>
      
         <div class="form-group row"> 
            <label class="col-sm-2">상세설명</label>
            <div class="col-sm-5">
               <textarea name="pDetail" id="pDetail" class="form-control" 
                       cols="50" rows="2" required></textarea>
            </div></div>
      
         <div class="form-group row"> 
            <label class="col-sm-2">카테고리</label>
            <div class="col-sm-3">
               <select name="pCate" id="pCate" class="form-control" required>
                  <option>도서 · 다이어리
                  <option>아로마
                  <option>영양제
               </select>
            </div></div>
      
         <div class="form-group row"> 
            <label class="col-sm-2">옵션</label>
            <div class="col-sm-3">
               <select name="pType" id="pType" class="form-control" required>
                  <option>--옵션없음--
                  <option>사이즈
               </select>
            </div></div>
      
         <div class="form-group row"> 
            <label class="col-sm-2">재고수량</label>
            <div class="col-sm-3">
               <input name="pVol" id="pVol" type="number" class="form-control"
                     value="0" min="0" required>
            </div></div>
      
   
         <!-- 이 부분을 파일업로드되도록 수정 -->
         <div class="form-group row"> 
            <label class="col-sm-2">썸네일</label>
            <div class="col-sm-5">
               <input name="pMimg" id="pMimg" type="file" class="form-control" required>
            </div></div>
            <div class="form-group row"> 
            <label class="col-sm-2">상품상세사진</label>
            <div class="col-sm-5">
               <input name="pImg" id="pImg" type="file" class="form-control" required>
            </div></div>

            <div class="form-group row text-right"> 
            <div class="col-sm-offset-2 col-sm-10">
               <input type="submit" class="btn btn-info" value="등록" onclick="checkProduct()"/>
               <input type="button" class="btn btn-secondary" formaction="productList.jsp" value="취소">
            </div>
            </div>
            <br><br><br>
      </form>
      </div>
      </div>
      </main>

<%@ include file="../include/footer.jsp" %>
   
</body>
</html>
