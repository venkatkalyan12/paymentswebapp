<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="Entity.BankAccount" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <title>Dashboard</title>
</head>
<style>
body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
}

header {
    background-color: #333;
    color: #fff;
    padding: 10px 0;
}

header h1 {
    margin: 0;
    padding-left: 20px;
}

nav ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
}
.right{
text-align: right;
}
.left{
text-align: left;
}
.center{
text-align: center;
}

nav ul li {
    display: inline;
    margin-right: 20px;
}

nav ul li a {
    color: #fff;
    text-decoration: none;
}

main {
    padding: 20px;
}

.card {
    background-color: #f4f4f4;
    border-radius: 5px;
    padding: 10px;
    margin: 10px;
    text-align: center;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

table {
    width: 100%;
    border-collapse: collapse;
}

th, td {
    padding: 10px;
    border-bottom: 1px solid #ddd;
}

th {
    background-color: #333;
    color: #fff;
}

footer {
    background-color: #333;
    color: #fff;
    text-align: center;
    padding: 10px 0;
    position: fixed;
    bottom: 0;
    width: 100%;
}


</style>
<body>
    <header>
        <div class="center">
            <h1>Payment Application</h1>
        </div>
        <nav>
            <ul>
                <div class="left">
                    <% String userName = (String) session.getAttribute("uname"); %>
                    <h3>Welcome, <%= userName %></h3>
                </div>
                <div class="right">
                    <li><a href="#">Transactions</a></li>
                    <li><a href="#">Customers</a></li>
                    <li><a href="#">Settings</a></li>
                </div>
            </ul>
        </nav>
    </header>

    <main>
        <div class="BankAcctList"> 
            <h1>BANK ACCOUNT LIST</h1><br>
             <% 
                    List<BankAccount> balist = (List<BankAccount>) session.getAttribute("Balist"); 
                    if (balist != null) {
                        for (int i = 0; i < balist.size(); i++) { 
                            BankAccount ba = balist.get(i); 
                %>
            <div>
                <h2>Bank Account No : <%= ba.getBankAcctNo() %></h2>
                <h2>Bank Account Name : <%= ba.getBankAcctName() %></h2>
                <h2>Bank IFSC Code : <%= ba.getBankIFSCCode() %></h2>
                <h2>Current Bank Balance : <%= ba.getCurrBankBal() %></h2>
            </div>
            <% 
                    }
                } else {
            %>
            <div>
                <p>No bank accounts found.</p>
            </div>
            <% 
                }
            %>
            <div>
                <a href="AddBankAcc.jsp" class="btn"><input type="button" value="Add NEW BankACC"></a>
            </div>
        </div>
    </main>

    <footer>
        <p>&copy; 2024 Payment Gateway Inc.</p>
    </footer>
</body>
</html>
