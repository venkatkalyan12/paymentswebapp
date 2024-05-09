import java.io.IOException;
import java.sql.SQLException;

import Entity.BankAccount;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/AddBankAccServlets")
public class AddBankAccServlets extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public AddBankAccServlets() {
        super();
    }
	
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String bankAcctNo = request.getParameter("bankAcctNo");
        String bankAcctName = request.getParameter("bankAcctName");
        String bankAcctTypeId = request.getParameter("bankAcctTypeId");
        String bankIFSCCode = request.getParameter("bankIFSCCode");
        String bankPin = request.getParameter("bankPin");
        
        HttpSession session = request.getSession();
        String phone = (String) session.getAttribute("uname");
        
        BankAccount ba = new BankAccount(phone, bankAcctNo, bankAcctName, bankAcctTypeId, bankIFSCCode, bankPin, 0);
        
        BankAccDAO BDAO = new BankAccDAO();
        String result = null;
        result = BDAO.addBank(ba);
		if (result.equals("SUCCESS")) {
		    RequestDispatcher rd = request.getRequestDispatcher("/Dashboard.jsp");
		    rd.forward(request, response);
		} else {
		    response.setContentType("text/html");
		    response.getWriter().write("Failed to add bank account. Please check your details.");
		    RequestDispatcher rd = request.getRequestDispatcher("/AddBankAcct.jsp");
		    rd.include(request, response);
		}
    }
}
