<%-- 
    Document   : chart
    Created on : 20 janv. 2022, 01:17:19
    Author     : admin
--%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <!-- Required meta tags -->
      <!--  <meta charset="ISO-8859-1">-->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>PARKING</title>
        <!-- plugins:css -->
        <%@ include file="/include/css.jsp" %>  
        
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.7.0/chart.min.js" integrity="sha512-TW5s0IT/IppJtu76UbysrBH9Hy/5X41OTAbQuffZFU6lQ1rdcLHzpU5BzVvr/YFykoiMYZVWlr/PX1mDcfM9Qg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>


    </head>
    <body>
        <div class="container-scroller">

            <!-- partial:partials/_sidebar.html -->
            <%@ include file="/include/sidebar.jsp" %> 
            <!-- partial -->

            <div class="container-fluid page-body-wrapper">

                <!-- partial:partials/_navbar.html -->
                <%@ include file="/include/header.jsp" %> 

                <!-- partial -->
                <div class="main-panel">
                    <div class="content-wrapper">

<canvas style="background-color:gainsboro;max-width:700px;position: relative ;left: 100px;top: 50px " id="myChart" ></canvas>

                    </div>
                </div>
            </div>
        </div>
    


    <p class="text-muted">Well, it seems to be working now. </p>
    <div class="progress progress-md portfolio-progress">
        <div class="progress-bar bg-success" role="progressbar" style="width: 50%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
    </div>







<!-- content-wrapper ends -->
<!-- partial:partials/_footer.html -->
<%@ include file="/include/footer.jsp" %> 
<!-- partial -->

<!-- main-panel ends -->

<!-- page-body-wrapper ends -->

<!-- container-scroller -->
<%@ include file="/include/js.jsp" %> 
<script src="scripts/chart.js" type="text/javascript"></script>
<!-- plugins:js -->



</body>
</html>