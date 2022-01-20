<%-- 
    Document   : login
    Created on : 19 janv. 2022, 20:23:55
    Author     : admin
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>PARKING</title>
    <!-- plugins:css -->
    <link rel="stylesheet" href="<%= request.getContextPath() %>/template/vendors/mdi/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/template/vendors/css/vendor.bundle.base.css">
    <!-- endinject -->
    <!-- Plugin css for this page -->
    <!-- End plugin css for this page -->
    <!-- inject:css -->
    <!-- endinject -->
    <!-- Layout styles -->
    <link rel="stylesheet" href="<%= request.getContextPath() %>/template/css/style.css">
    <!-- End layout styles -->
    <link rel="shortcut icon" href="<%= request.getContextPath() %>/template/images/favicon.png" />
  </head>
  <body>
    <div class="container-scroller">
      <div class="container-fluid page-body-wrapper full-page-wrapper">
        <div class="row w-100 m-0">
          <div class="content-wrapper full-page-wrapper d-flex align-items-center auth login-bg">
            <div class="card col-lg-4 mx-auto">
              <div class="card-body px-5 py-5">
                <h3 class="card-title text-left mb-3">Login</h3>
                
                  <div class="form-group">
                    <label>Username  *</label>
                    <input id="user" type="text" class="form-control p_input">
                  </div>
                  <div class="form-group">
                    <label>Password *</label>
                    <input id="pass" type="password" class="form-control p_input">
                  </div>
                  <div class="form-group d-flex align-items-center justify-content-between">
                    <div class="form-check">
                      <label class="form-check-label">
                        <input type="checkbox" class="form-check-input"> Remember me </label>
                    </div>
                    <a href="#" class="forgot-pass">Forgot password</a>
                  </div>
                  <div class="text-center">
                    <button id="login" class="btn btn-primary btn-block enter-btn">Login</button>
                  </div>
                  <div class="d-flex">
                    <button class="btn btn-facebook mr-2 col">
                      <i class="mdi mdi-facebook"></i> Facebook </button>
                    <button class="btn btn-google col">
                      <i class="mdi mdi-google-plus"></i> Google plus </button>
                  </div>
                  <p class="sign-up">Don't have an Account?<a href="#"> Sign Up</a></p>
                
              </div>
            </div>
          </div>
          <!-- content-wrapper ends -->
        </div>
        <!-- row ends -->
      </div>
      <!-- page-body-wrapper ends -->
    </div>
    <!-- container-scroller -->
    <!-- plugins:js -->
    <script src="<%= request.getContextPath() %>/template/vendors/js/vendor.bundle.base.js"></script>
    <!-- endinject -->
    <!-- Plugin js for this page -->
    <!-- End plugin js for this page -->
    <!-- inject:js -->
    <script src="<%= request.getContextPath() %>/template/js/off-canvas.js"></script>
    <script src="<%= request.getContextPath() %>/template/js/hoverable-collapse.js"></script>
    <script src="<%= request.getContextPath() %>/template/js/misc.js"></script>
    <script src="<%= request.getContextPath() %>/template/js/settings.js"></script>
    <script src="<%= request.getContextPath() %>/template/js/todolist.js"></script>
    <script src="scripts/login.js" type="text/javascript"></script>
    <!-- endinject -->
  </body>
</html>