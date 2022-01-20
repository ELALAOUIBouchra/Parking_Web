/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$(document).ready(function() {
 $("#hiddenBtn").hide(); 
 var id;
    $.ajax({
        url: "SectionController",
        data: {op: "load"},
        type: 'POST',
        success: function (data, textStatus, jqXHR) {
            remplir(data);
            
        },
        error: function (jqXHR, textStatus, errorThrown) {
            console.log(textStatus);
        }
    });
    $("#add").click(function () {
        var reference = $("#reference").val();
        var code = $("#code").val();
        $.ajax({
            url: "SectionController",
            data: {reference : reference , code: code},
            type: 'POST',
            success: function (data, textStatus, jqXHR) {
                remplir(data);
            },
            error: function (jqXHR, textStatus, errorThrown) {
                console.log(textStatus);
            }
        });
    });


    $("#content").on("click", ".delete", function () {
       var id = $(this).closest("tr").find("td").eq(0).text();
       $.ajax({
        url: "SectionController",
        data: {op: "delete", id:id},
        type: 'POST',
        success: function (data, textStatus, jqXHR) {
            remplir(data);
        },
        error: function (jqXHR, textStatus, errorThrown) {
            console.log(textStatus);
        }
    });
       
    });
    
    $("#content").on("click", ".update", function ()
    {   
       $("#hiddenBtn").show();
       
              id = $(this).closest("tr").find("td").eq(0).text();
             var reference = $("#reference").val();
             $("#code").val($(this).closest("tr").find("td").eq(1).text());
             $("#reference").val($(this).closest("tr").find("td").eq(2).text());
            
            
           
        
    });
    
    $("#mod").click(function(){
       var code =  $("#code").val();
       var reference =  $("#reference").val();
       
        $.ajax({
                url: "SectionController",
                data: {op: "update", id: id,reference : reference , code: code},
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
            ligne += "<tr><td>" + e.id + "</td><td>" + e.reference + "</td><td>" + e.code + "</td><td><button class='btn btn-primary delete'>Supprimer</button></td><td><button class=' btn btn-primary update'>Select</button></td></tr>";
        });
        $("#content").html(ligne);
    }
});


