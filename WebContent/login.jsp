<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Airways</title>
    <!-- plugins:css -->
    <link rel="stylesheet" href="assets/vendors/mdi/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="assets/vendors/flag-icon-css/css/flag-icon.min.css">
    <link rel="stylesheet" href="assets/vendors/css/vendor.bundle.base.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <!-- endinject -->
    <!-- Plugin css for this page -->
    <!-- End plugin css for this page -->
    <!-- inject:css -->
    <!-- endinject -->
    <!-- Layout styles -->
    <link rel="stylesheet" href="assets/css/style.css">
    <!-- End layout styles -->
    <link rel="shortcut icon" href="assets/images/favicon.png" />
  </head>
  <body>
    <div class="container-scroller">
      <div class="container-fluid page-body-wrapper full-page-wrapper">
        <div class="content-wrapper d-flex align-items-center auth">
          <div class="row flex-grow">
            <div class="col-lg-4 mx-auto">
              <div class="auth-form-light text-left p-5">
               <h1 style='text-align:center'>Airways</h1>
              <c:if test="${not empty ntf}">
              <div class="alert alert-danger text-center" role="alert">${ntf}</div>
              <c:remove var="ntf"/>
              </c:if>
              
              
              <c:if test="${not empty notf}">
              <div class="alert alert-success text-center" role="alert">${notf}</div>
              <c:remove var="notf"/>
              </c:if>
              
                
             
                <h4>Welcom Back Admin</h4>
                <h6 class="font-weight-light">Sign in to continue.</h6>
                
                
                <form action="loginhand.jsp"class="pt-3">
                  <div class="form-group">
                    <input type="text" class="form-control form-control-lg" name="auser" id="exampleInputEmail1" placeholder="Username"/>
                  </div>
                  <div class="form-group">
                    <input type="password" class="form-control form-control-lg" name="apass" id="exampleInputPassword1" placeholder="Password"/>
                  </div>
                  <div class="mt-3">
                    <input type="submit" value="SIGN IN" class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn" />
                  </div>
                </form>
                
				 </div>
				          </div>
				        </div>
				        <!-- content-wrapper ends -->
				      </div>
				      <!-- page-body-wrapper ends -->
				    </div>
				    <!-- container-scroller -->
				    <!-- plugins:js -->
				    <script src="../../assets/vendors/js/vendor.bundle.base.js"></script>
				    <!-- endinject -->
				    <!-- Plugin js for this page -->
				    <!-- End plugin js for this page -->
				    <!-- inject:js -->
				    <script src="../../assets/js/off-canvas.js"></script>
				    <script src="../../assets/js/hoverable-collapse.js"></script>
				    <script src="../../assets/js/misc.js"></script>
				    <!-- endinject -->
  </body>
</html>