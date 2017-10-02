<%-- 
    Document   : index
    Created on : Oct 1, 2017, 11:19:29 PM
    Author     : Cameron_Schorg
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="style.css">
        <title>Salary Calculator</title>
    </head>
    <body>
        <h4>Salary Calculator</h4>
        <div>
            <div>
        <form name="salary_caulator" action="results.jsp" method="post">
            <table>
                <tbody>
                <hr>
                    <tr>
                        <td>Hours Worked:</td>
                        <td><input type="number" name="hours_worked" value="" size="10"></td>
                    </tr>
                    <tr>
                        <td>Hourly Pay:</td>
                        <td><input type="number" name="hourly_pay" value="" size="10"></td>
                    </tr>
                    <tr>
                        <td>Pre-tax Deduct:</td>
                        <td><input type="number" name="pretax_deduct" value="" size="10"></td>
                    </tr>
                    <tr>
                        <td>Post-tax Deduct:</td>
                        <td><input type="number" name="posttax_deduct" value="" size="10"></td>
                    </tr>
                </tbody>
            </table>
            
            <input type="reset" value="Clear" id="clear">
            <input type="submit" value="Submit" id="submit">
                  
        </form>
            </div>
        </div>
    </body>
</html>
