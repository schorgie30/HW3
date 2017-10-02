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
        double total_hours_worked = Double.parseDouble(request.getParameter("hours_worked"));
        double hourly_pay = Double.parseDouble(request.getParameter("hourly_pay"));
        double pretax_deduct = Double.parseDouble(request.getParameter("pretax_deduct"));
        double posttax_deduct = Double.parseDouble(request.getParameter("posttax_deduct"));
        double overtime_pay_rate = 0;
        double hours_overtime = 0;
        double gross_pay = 0;
        double pretax_pay = 0;
        double posttax_pay = 0;
        double tax_amount = 0;
        double netpay = 0;
        int regular_hours = 0;
        double overtime_pay = 0;
        double regular_pay = 0;
        
        if (total_hours_worked > 40) {
            regular_hours = 40;
            hours_overtime = total_hours_worked - 40;
            overtime_pay_rate =  hourly_pay * 1.5;
            overtime_pay = hours_overtime * overtime_pay_rate;
            regular_pay = regular_hours * hourly_pay;
            gross_pay = regular_pay + overtime_pay;
        }
        else {
            gross_pay = total_hours_worked * hourly_pay;
        }
        
        pretax_pay = gross_pay - pretax_deduct;
        
        if (gross_pay < 500) {
            tax_amount = pretax_pay * .18;
        }
        else {
            tax_amount = pretax_pay * .22;
        }
        
        posttax_pay = pretax_pay - tax_amount;
        netpay = posttax_pay - posttax_deduct;
        
        %>
    
    <body>
        <h4>Salary Info</h4>
        
        <div>
            <div>
        
        <table id="results_table">
            <tbody>
            <hr>
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
                    <td><%= hours_overtime %></td>
                </tr>
                <tr>
                    <td>Overtime Hourly Rate:</td>
                    <td><%= overtime_pay_rate %></td>
                </tr>
                <tr>
                    <td>Gross Pay:</td>
                    <td><%= gross_pay %></td>
                </tr>
                <tr>
                    <td>Pre-tax Deduct:</td>
                    <td><%= pretax_deduct %></td>
                </tr>
                <tr>
                    <td>Pre-tax Pay:</td>
                    <td><%= pretax_deduct %></td>
                </tr>
                <tr>
                    <td>Tax Amount:</td>
                    <td><%= tax_amount %></td>
                </tr>
                <tr>
                    <td>Post-tax Pay:</td>
                    <td><%= posttax_pay %></td>
                </tr>
                <tr>
                    <td>Post-tax Deduct:</td>
                    <td><%= posttax_deduct %></td>
                </tr>
                <tr>
                    <td>Net Pay:</td>
                    <td><%= netpay %></td>
                </tr>
            </tbody>
        </table>
            </div>
        </div>
               
    </body>
</html>
