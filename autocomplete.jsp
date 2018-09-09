<%-- 
    Document   : autocomplete
    Created on : Sep 9, 2018, 8:14:45 AM
    Author     : milan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
          <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
 
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
 $(document).ready(function (){

  var arr =[
      {id:1,value:"milanbhai123"},
      {id:2,value:"sagar"},
      {id:50,value:"vivek"}];
  
  $("#name").autocomplete({
     source:function (request,response){
     
        response($.map(arr,function (item){
            return {
                id:item.id,
                value:item.value
            }
           
        }))
     }, 
     select:function (event, ui){
       $(this).val(ui.item.value)
       $("#id").val(ui.item.id) 
     },
     
  });
 });  
  </script>
    </head>
    <body>
        <h1>Hello World!</h1>
        <input type="text" id="name"/>
        <input type="text" id="id"/>
    </body>
</html>
