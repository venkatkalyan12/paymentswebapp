import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Entity.BankAccount;

public class BankAccDAO {

    private Connection getConnection() throws SQLException {
        return DriverManager.getConnection("jdbc:mysql://localhost:3306/userdb", "root", "9490");
    }

    public String addBank(BankAccount bank) {
        String result = "Added";
        try (Connection con = getConnection();
             PreparedStatement ps = con.prepareStatement("INSERT INTO bankaccount (BankAcctNo, BankAcctName, BankAcctTypeId, BankIFSCCode, BankPin, phone, CurrBankBal) VALUES (?, ?, ?, ?, ?, ?, ?)")) {

            ps.setString(1, bank.getBankAcctNo());
            ps.setString(2, bank.getBankAcctName());
            ps.setString(3, bank.getBankAcctTypeId());
            ps.setString(4, bank.getBankIFSCCode());
            ps.setString(5, bank.getBankPin());
            ps.setString(6, bank.getPhone());
            ps.setDouble(7, bank.getCurrBankBal());

            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
            result = "Failed to add";
        }
        return result;
    }

    public List<BankAccount> bankAcctList(String phone) {
        List<BankAccount> balist = new ArrayList<>();

        try (Connection con = getConnection();
             PreparedStatement st = con.prepareStatement("SELECT BankAcctNo, BankAcctName, BankIFSCCode, CurrBankBal FROM bankaccount WHERE phone=?")) {

            st.setString(1, phone);

            try (ResultSet rs = st.executeQuery()) {
                while (rs.next()) {
                    BankAccount b = new BankAccount();
                    b.setBankAcctNo(rs.getString("BankAcctNo"));
                    b.setBankAcctName(rs.getString("BankAcctName"));
                    b.setBankIFSCCode(rs.getString("BankIFSCCode"));
                    b.setCurrBankBal(rs.getDouble("CurrBankBal"));
                    balist.add(b);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return balist;
    }
}
