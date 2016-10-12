<%-- 
    Document   : OPERACIONES
    Created on : 11/10/2016, 08:02:13 PM
    Author     : Irene
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
 double num1 = request.getParameter("numero1") == null ? 0.0 : Double.parseDouble(request.getParameter("numero1")); 
//Si el contenido de la vriable es nulo (?)entonces poner 0.0 (:)sino  tomar como valor lo que provenga del formulario 
 double num2 = request.getParameter("numero2") == null ? 0.0 : Double.parseDouble(request.getParameter("numero2"));
 double resultado = 0;
 
 String operacion = request.getParameter("opera") == null ? "" : request.getParameter("opera");
 
 if(request.getParameter("opera") != null)  
 {
     if(operacion.equals("+"))
     {
        resultado = num1+num2;
     }
     else
       if(operacion.equals("-"))
        {
         resultado = num1-num2;
         }
       else
         if(operacion.equals("*"))
         {
          resultado = num1*num2;
         }
         else
           if(operacion.equals("/"))
           {
             resultado = num1/num2;
            }
 }        
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="JS/funcionesCalcu.js" type="text/javascript"></script>
        <link href="CSS/estilos.css" rel="stylesheet" type="text/css"/>
        <title>CALCULADORA </title>
    </head>
    <body>
    <center>
        <marquee><h1> CALCULADORA JSP</h1></marquee>
        <form action="OPERACIONES.jsp" method="post">
            <input type ="number" name="numero1" id="numero1" placeholder="numero 1" required /><br/><br/>
            <input type ="number" name="numero2" id="numero2" placeholder="numero 2" required /> <br/></br>
             
             
             <input type="hidden" id="opera" name="opera" readonly="true"/><br/><br/>
             
             <input type ="submit" value ="suma" id="suma" name="suma" onclick="asignar('+')" />&nbsp;&nbsp;
             <input type ="submit" value ="resta" id="resta"  name="resta" onclick="asignar('-')" />&nbsp;&nbsp;
             <input type ="submit" value ="multiplicacion" id="multiplicacion"  name="multiplicacion" onclick="asignar('*')" />&nbsp;&nbsp;
             <input type ="submit" value ="division" name="division" onclick="asignar('/')" />
          
           
        </form>
    </center>
    <center><h1> <%=resultado%></h1></center>
    </body>
</html>
