
import java.io.IOException;
import java.sql.SQLException;

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
        
        BankAccount ba = new BankAccount(bankAcctNo,bankAcctName,bankAcctTypeId,bankIFSCCode,bankPin, bankPin, 0);
        BankAccDAO BDAO=new BankAccDAO();
        String result=BDAO.addBank(ba);
        response.getWriter().print(result);
//        ba.setBankAcctName(bankAcctNo);
//        ba.setBankAcctName(bankAcctName);
//        ba.setBankAcctTypeId(bankAcctTypeId);
//        ba.setBankIFSCCode(bankIFSCCode);
//        ba.setBankPin(bankPin);
//        ba.setCurrBankBal(2000);

     
        HttpSession session = request.getSession();
        String phone = (String) session.getAttribute("uname");
        ba.setPhone(phone);

        try {
            BankAccDAO db = new BankAccDAO();
            if (db.addBank(ba) > 0) {
                RequestDispatcher rd = request.getRequestDispatcher("/Dashboard.jsp");
                rd.forward(request, response);
            } else {
                response.setContentType("text/html");
                response.getWriter().write("PLEASE ENTER THE CORRECT BANK ACCOUNT DETAILS");
                RequestDispatcher rd = request.getRequestDispatcher("/AddBankAcct.jsp");
                rd.include(request, response);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
