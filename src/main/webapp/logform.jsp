<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Employee Data</title>
    
    <style>
            table {
                border-collapse: collapse;
                width: 50%;
                align-self: auto;
                border-collapse: collapse;
                border: 1px solid rgb(118, 206, 233);
            }
            th{
                background-color: rgb(0, 102, 255);
               
            }
            
             td {
                text-align: center;
                padding: 8px;
                
            }
            tr:nth-child(odd) {background-color: #a462b8;}
            tr:nth-child(even) {background-color: #f19686;}
            </style>
  </head>
  <body>
    <div align="center">
        <c:if test="${resultset != null}">
            <form action="update" method="post">
        </c:if>
        <c:if test="${resultset == null}">
            <form action="insert" method="post">
        </c:if>
        <table border="1" >

            <!-- <caption>
                        <h2>
                            <c:if test="${logs != null}">
                                inbox
                            </c:if>
                            <c:if test="${logs == null}">
                               contacts
                            </c:if>
                        </h2>
                    </caption> -->
                    <div class="container">
                            <center><h2>Employee List</h2></center>
                            <h3>List</h3>
                            <table class="table">
                              <thead>
                                <tr>
                                  <th>ID</th>
                                  <th>NAME</th>
                                  <th>SALARY</th>
                                  <th>ACTIONS</th>
                                </tr>
                              </thead>
                              <tbody>
                                    
            <c:forEach items="${employee}" var="resultset">

                <tr>
                   
                    <td>
                        <c:out value='${resultset.id}'  />
                       
                    </td>

                   
                    <td>
                        <c:out value='${resultset.name}'  />
                    </td>

                   
                    <td>
                        <c:out value='${resultset.salary}'  />
                    </td>

                    <td>
                        <a href="UserController?action=edit&id=<c:out value=" ${resultset.id}" />">Update</a>
                   
                        <a href="UserController?action=delete&id=<c:out value=" ${resultset.id}" />">Delete</a>
                </td>
                </tr>
            </c:forEach>
          
        </tbody>
        </table>


        <p><a href="index.jsp">Add Employee</a></p>
    </div>
</body>

</html>