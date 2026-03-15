package br.edu.fatecpg.projetojdbcapi.db;

import br.edu.fatecpg.projetojdbcapi.db.Conexao;
import br.edu.fatecpg.projetojdbcapi.model.Socios;

import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DBSocios {

    public void deletarPorEmpresa(String cnpjEmpresa) throws SQLException {
        String sql = "DELETE FROM socios WHERE empresa_id = ?";

        try (var conn = Conexao.connection(); var stmt = conn.prepareStatement(sql)) {

            stmt.setString(1, cnpjEmpresa);
            stmt.executeUpdate();
        }
    }

    public void salvar(Socios socio, String cnpjEmpresa) throws SQLException {
        String sql = """
                INSERT INTO socios (nome_socio, cnpj_cpf_socio, qualificacao_socio, empresa_id)
                VALUES (?, ?, ?, ?)
                """;

        try (var conn = Conexao.connection(); PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setString(1, socio.getNome_socio());
            stmt.setString(2, socio.getCnpj_cpf_do_socio());
            stmt.setString(3, socio.getQualificacao_socio());
            stmt.setString(4, cnpjEmpresa);

            stmt.executeUpdate();
        }
    }

    public void listar(String cnpjEmpresa) throws Exception {
        String sql = "SELECT * FROM socios WHERE empresa_id = ?";

        try (var conn = Conexao.connection(); var stmt = conn.prepareStatement(sql)) {

            stmt.setString(1, cnpjEmpresa);
            var rs = stmt.executeQuery();

            while (rs.next()) {
                System.out.println("Nome do Sócio: " + rs.getString("nome_socio"));
                System.out.println("CPF/CNPJ: " + rs.getString("cnpj_cpf_socio"));
                System.out.println("Qualificação: " + rs.getString("qualificacao_socio"));
                System.out.println("---------------------------");
            }
        }
    }
}