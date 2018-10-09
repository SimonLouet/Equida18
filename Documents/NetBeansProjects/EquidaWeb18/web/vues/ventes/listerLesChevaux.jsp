<%-- 
    Document   : Lister les Ventes 
    Created on : 22/06/2017, 07:43
    Author     : Zakina
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="modele.Lot"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>LISTE DES CHEVAUX</title>
    </head>
    <body>
        <h1>LISTE DES CHEVAUX</h1>
        
         <%
        ArrayList<Lot> lesLots = (ArrayList)request.getAttribute("pLesLots");
        %>
        
        
        <table  class="table table-bordered table-striped table-condensed">  
            <thead>
                <tr>             
                    
             
                    <th>Nom</th>
                    <th>Sexe</th>  
                    <th>Sire</th>
                    <th>Type de cheval</th>
                    <th>Prix Depart</th>
                    <th>Nom du pere</th>
                    <th>Sire du pere</th>
                    <th>Nom de la mere</th>
                    <th>Sire de la mere</th>
                    <th></th>
            <br>
            <br>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <%
                    for(int i = 0; i < lesLots.size();i++)
                    {
                        
                        Lot unLot = lesLots.get(i);
                        

                       

                        out.println("<tr><td>");
                        out.println(unLot.getCheval().getNom());
                        out.println("</td>");
                        
                        out.println("<td>");
                        out.println(unLot.getCheval().getSexe());
                        out.println("</td>");
                        
                        out.println("<td>");
                        out.println(unLot.getCheval().getSire());
                        out.println("</td>");
                        
                        out.println("<td>");
                        out.println(unLot.getCheval().getTypeCheval().getLibelle());
                        out.println("</td>");
                        
                        out.println("<td>");
                        out.println(unLot.getPrixDepart());
                        out.println(" €</td>");
                        
                        if(unLot.getCheval().getPere() != null){
                            out.println("<td>");
                            out.println(unLot.getCheval().getPere().getNom());
                            out.println("</td>");

                            out.println("<td>");
                            out.println(unLot.getCheval().getPere().getSire());
                            out.println("</td>");
                        }
                        
                        if(unLot.getCheval().getMere() != null){
                            out.println("<td>");
                            out.println(unLot.getCheval().getMere().getNom());
                            out.println("</td>");

                            out.println("<td>");
                            out.println(unLot.getCheval().getMere().getSire());
                            out.println("</td>");
                        }
                        out.println("</tr>");
                    }
                    %>
                </tr>
            </tbody>
        </table>
        <a href ='../ServletVentes/listerLesVentes'> Retour</a>
    </body>
</html>
