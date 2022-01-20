<%-- 
    Document   : place
    Created on : 14 janv. 2022, 18:20:42
    Author     : admin
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ page import="service.SectionService , entities.Section" %>
<%  SectionService ss=new SectionService(); %>
<!DOCTYPE html>
<html>
    <head>
        <%-- <meta charset="ISO-8859-1">--%>
        <meta charset="utf-8">
        <meta name="viewport"
              content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>PARKING</title>
        <script src="scripts/jquery-3.3.1.min.js"></script>

        <%@ include file="/include/css.jsp"%>
    </head>

    <body>
        <div class="container-scroller">

            <!-- partial:partials/_sidebar.html -->
            <%@ include file="/include/sidebar.jsp"%>
            <!-- partial -->

            <div class="container-fluid page-body-wrapper">

                <!-- partial:partials/_navbar.html -->
                <%@ include file="/include/header.jsp"%>

                <!-- partial -->
                <div class="main-panel">
                    <div class="content-wrapper">

                        <div class="col-12 grid-margin">
                            <div class="card">
                                <div class="card-body">
                                    <h4 class="card-title">Gestion des places</h4>

                                    
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group row">
                                                <label class="col-sm-3 col-form-label">Numéro </label>
                                                <div class="col-sm-9">
                                                    <input id="numero" type="text" name="numero" value=""
                                                           required="" class="form-control" />
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group row">
                                                <label class="col-sm-3 col-form-label">Etat</label>
                                                <div class="col-sm-9">
                                                     <select id="etat"  name="etat"
                                                            required="" class="form-control" />
                                                    <option value="libre">libre</option>
                                                    <option value="occupé">occupé</option>
                                                 
                                                    </select>
                                                    
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group row">
                                                <label class="col-sm-3 col-form-label">Type </label>
                                                <div class="col-sm-9">
                                                    <input id="type" type="text" name="type" value=""
                                                           required="" class="form-control" />
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group row">
                                                <label class="col-sm-3 col-form-label">Section</label>
                                                <div class="col-sm-9">

                                                    <select id="idsection"  name="idsection"
                                                            required="" class="form-control" />
                                                    <option disabled selected value> Section </option>
                                                    <%for (Section section : ss.findAll()){ %>
                                                    <option  value="<%=section.getCode()%>"><%=section.getCode()%> </option>
                                                    <%}%>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group row">
                                            <div class="col-sm-9">
                                                <button type="submit" id = "add" class="btn btn-outline-primary btn-icon-text">
                                                    <i class="mdi mdi-file-check btn-icon-prepend"></i> Afficher </button>

                                            </div>

                                        </div>
                                        <div class="form-group row">
                                            <div class="col-sm-9" id="hiddenBtn">
                                                <button type="submit" id = "mod" class="btn btn-outline-primary btn-icon-text">
                                                    <i class="mdi mdi-file-check btn-icon-prepend"></i> Modifier </button>

                                            </div>
                                        </div>
                                    </div>


                                    <fieldset>

                                        <div  id="list" class="col-lg-6 grid-margin stretch-card">
                                            <div class="card">
                                                <div class="card-body">
                                                    <h4 class="card-title">Liste des places</h4>

                                                    <div  class="table-responsive">
                                                        <table class="table">
                                                            <thead>
                                                                <tr>
                                                                    <th>Id</th>
                                                                    <th>Numéro</th>
                                                                    <th>Etat</th>
                                                                    <th>Type</th>
                                                                    <th>Section</th>
                                                                    <th>Supprimer</th>
                                                                    <th>Selection</th>
                                                                    <th>Place Libre</th>
                                                                    <th>Place Occupée</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody id="content">

                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                    </fieldset>
                                </div>

                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>


        <p class="text-muted">Well, it seems to be working now.</p>
        <div class="progress progress-md portfolio-progress">
            <div class="progress-bar bg-success" role="progressbar"
                 style="width: 50%" aria-valuenow="25" aria-valuemin="0"
                 aria-valuemax="100"></div>
        </div>

        <!-- content-wrapper ends -->
        <!-- partial:partials/_footer.html -->
        <%@ include file="/include/footer.jsp"%>
        <!-- partial -->

        <%@ include file="/include/js.jsp"%>
        <script src="scripts/place.js" type="text/javascript"></script>
        <!-- plugins:js -->



    </body>
</html>
