package model;
import model.PessoaDAO;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class PessoaDAO {
    private final String url = "jdbc:postgresql://localhost/poo2";
    private final String user = "postgres";
    private final String password = "root";

    public Connection connect() {
        Connection conn = null;
        try {
            conn = DriverManager.getConnection(url, user, password);
            System.out.println("Connected to the PostgreSQL server successfully.");
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }

        return conn;
    }

    public boolean inserir(Pessoa pessoa) {
        String sql = "INSERT INTO pessoa(id, nome, cpf, telefone) VALUES(?, ?,?,?)";
        try {
            PreparedStatement stmt = connect().prepareStatement(sql);
            stmt.setInt(1, pessoa.getId());
            stmt.setString(2, pessoa.getNome());
            stmt.setString(3, pessoa.getCpf());
            stmt.setString(4, pessoa.getTelefone());
            stmt.execute();
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(PessoaDAO.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }

    public List<Pessoa> listar() {
        String sql = "SELECT * FROM pessoa";
        List<Pessoa> retorno = new ArrayList<>();
        try {
            PreparedStatement stmt = connect().prepareStatement(sql);
            ResultSet resultado = stmt.executeQuery();
            while (resultado.next()) {
                Pessoa pessoa = new Pessoa();
                pessoa.setId(resultado.getInt("id"));
                pessoa.setNome(resultado.getString("nome"));
                pessoa.setCpf(resultado.getString("cpf"));
                pessoa.setTelefone(resultado.getString("telefone"));
                retorno.add(pessoa);
                System.out.println(pessoa);
            }
        } catch (SQLException ex) {
            Logger.getLogger(PessoaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return retorno;
    }

}
