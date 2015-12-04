<%-- 
    Document   : displayRecords
    Created on : Nov 3, 2015, 4:52:40 PM
    Author     : John Phillips
--%>

<%@page import="java.util.List, model.Pet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Adam's Catnip Bungalow</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="mystyle.css">
    </head>
    <body>
        <h1><a href="home.html">Adam's Catnip Bungalow</a></h1>
        <h2>Pet Report</h2>
        <%
            List<Pet> mydata = (List<Pet>) request.getAttribute("mydata");
            out.println("<table>");
            for (Pet pet : mydata) {
                out.println(pet.inHTMLRowFormat());
            }
            out.println("</table>");
        %>
    </body>
</html>
