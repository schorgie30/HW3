<%-- 
    Document   : results
    Created on : Oct 2, 2017, 12:28:46 AM
    Author     : Cameron_Schorg
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="style.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Results</title>
    </head>
    
    <%
        String total_hours_worked = request.getParameter("hours_worked");
        String hourly_pay = request.getParameter("hourly_pay");
        String pretax_deduct = request.getParameter("pretax_deduct");
        String posttax_deduct = request.getParameter("posttax_deduct");
        %>
    
    <body>
        <h4>Salary Info</h4>
        
        <table>
            <tbody>
                <tr>
                    <td>Total Hours Worked:</td>
                    <td><%= total_hours_worked %></td>
                </tr>
                <tr>
                    <td>Hourly Rate:</td>
                    <td><%= hourly_pay %></td>
                </tr>
                <tr>
                    <td># Hours Overtime:</td>
                    <td></td>
                </tr>
                <tr>
                    <td>Overtime Hourly Rate:</td>
                    <td></td>
                </tr>
                <tr>
                    <td>Gross Pay:</td>
                    <td></td>
                </tr>
                <tr>
                    <td>Pre-tax Deduct:</td>
                    <td><%= pretax_deduct %></td>
                </tr>
                <tr>
                    <td>Pre-tax Pay:</td>
                    <td></td>
                </tr>
                <tr>
                    <td>Tax Amount:</td>
                    <td></td>
                </tr>
                <tr>
                    <td>Post-tax Pay:</td>
                    <td></td>
                </tr>
                <tr>
                    <td>Post-tax Deduct:</td>
                    <td><%= posttax_deduct %></td>
                </tr>
                <tr>
                    <td>Net Pay:</td>
                    <td></td>
                </tr>
            </tbody>
        </table>
    </body>
</html>
