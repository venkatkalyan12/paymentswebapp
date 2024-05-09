<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add BankAccount</title>

</head>
<body>
	<center>
		
			<h1>Bank Account Deitails</h1>
			<label>BankAcctNo     : </label><input type="text" name="bankno"><br>
			<label>BankAcctName   : </label><input type="text" name="bankname"><br>
			<label>BankAcctTypeId : </label><input type="text" name="accttypeid"><br>
			<label>BankIFSCCode   : </label><input type="text" name="bankifsc"><br>
			<label>Bankpin        : </label><input type="text" name="bankpin"><br>
			<form action="AddBankAccServlets" method="post">
			<input type="Submit">
		</form>
	</center>
</body>
</html>