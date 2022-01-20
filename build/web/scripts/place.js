/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$(document).ready(function () {
     $("#list").hide();
     $("#add").click(function(){
         $("#list").toggle(1000);
     });
    $("#hiddenBtn").hide();
    var id;
    $.ajax({
        url: "PlaceController",
        data: {op: "load"},
        type: 'POST',
        success: function (data, textStatus, jqXHR) {
            remplir(data);
           // alert(data);
        },
        error: function (jqXHR, textStatus, errorThrown) {
            console.log(textStatus);
        }
    });
     $.ajax({
        url: "PlaceController",
        data: {op: "loadSection"},
        type: 'POST',
        success: function (data, textStatus, jqXHR) {
            remplirSection(data);

        },
        error: function (jqXHR, textStatus, errorThrown) {
            console.log(textStatus);
        }
    });

    /*$("#add").click(function () {
        var numero = $("#numero").val();
        var etat = $("#etat").val();
        var type = $("#type").val();
        var idsection = $("#idsection").val();
        console.log(numero);
        console.log(etat);
        console.log(type);
        console.log(idsection);
        $.ajax({
            url: "SectionController",
            data: {op: "addPlace"},
            type: 'POST',
            success: function (data, textStatus, jqXHR) {
                remplir(data);
               //alert(data);
            },
            error: function (jqXHR, textStatus, errorThrown) {
                console.log(textStatus);
            }
        });
    });*/


    $("#content").on("click", ".delete", function () {
        var id = $(this).closest("tr").find("td").eq(0).text();
        $.ajax({
            url: "PlaceController",
            data: {op: "delete", id: id},
            type: 'POST',
            success: function (data, textStatus, jqXHR) {
                remplir(data);
            },
            error: function (jqXHR, textStatus, errorThrown) {
                console.log(textStatus);
            }
        });

    });

    $("#content").on("click", ".update", function () {

        $("#hiddenBtn").show();

        var numero = $("#numero").val();

        $("#numero").val($(this).closest("tr").find("td").eq(1).text());
        $("#etat").val($(this).closest("tr").find("td").eq(2).text());
        $("#type").val($(this).closest("tr").find("td").eq(3).text());
        $("#idsection").val($(this).closest("tr").find("td").eq(4).text());

    });
    $("#mod").click(function () {
        var numero = $("#numero").val();
        var etat = $("#etat").val();
        var type = $("#type").val();
        var idsection = $("#idsection").val();

        $.ajax({
            url: "PlaceController",
            data: {op: "update", id: id, numero: numero, etat: etat, type: type, idsection: idsection},
            type: 'POST',
            success: function (data, textStatus, jqXHR) {
                remplir(data);
            },
            error: function (jqXHR, textStatus, errorThrown) {
                console.log(textStatus);
            }
        });

    });

    $("#content").on("click", ".liberer", function () {

        id = $(this).closest("tr").find("td").eq(0).text();
        $.ajax({
            url: "PlaceController",
            data: {op: "liberer", id: id},
            type: 'POST',
            success: function (data, textStatus, jqXHR) {
                remplir(data);
            },
            error: function (jqXHR, textStatus, errorThrown) {
                console.log(textStatus);
            }
        });
        });
        $("#content").on("click", ".occupe", function () {

            id = $(this).closest("tr").find("td").eq(0).text();
            $.ajax({
                url: "PlaceController",
                data: {op: "occupe", id: id},
                type: 'POST',
                success: function (data, textStatus, jqXHR) {
                    remplir(data);
                },
                error: function (jqXHR, textStatus, errorThrown) {
                    console.log(textStatus);
                }
            });

        });

       function remplir(data) {
            var ligne = "";
            console.log(data);
            data.forEach(function (e) {
                 var etat;
            if (e.etat===true) {
                etat = "Occupée";
            } else if (e.etat===false) {
                etat = "Libre";
            }
                ligne += "<tr><td>" + e.id + "</td><td>" + e.numero + "</td><td>" + e.etat + "</td><td>" + e.type + "</td><td>" + e.idsection + "</td><td><button class='btn btn-primary delete'>Supprimer</button></td><td><button class=' btn btn-primary update'>Select</button></td><td><button class='btn btn-primary liberer'>Libre</button></td><td><button class='btn btn-primary occupe'>Occupee</button></td></tr>";
            });
            $("#content").html(ligne);
        }
        
        function remplirSection(data) {
        var ligne = "";
        console.log(data);
        //alert("..");
        data.forEach(function (e) {
            ligne += "<option value='" + e.idsection + "'>" + e.idsection + "</option>";
        });
        $("#idsection").html(ligne);
    }
    
});


