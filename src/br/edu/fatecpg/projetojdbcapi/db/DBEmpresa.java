package br.edu.fatecpg.projetojdbcapi.db;

import java.sql.PreparedStatement;
import java.sql.SQLException;

import br.edu.fatecpg.projetojdbcapi.model.Empresa;

public class DBEmpresa {

    public void salvar(Empresa empresa) throws SQLException {

        String sql = """
    INSERT INTO empresa (cnpj, razao_social, nome_fantasia, logradouro)
    VALUES (?, ?, ?, ?)
    ON CONFLICT (cnpj) DO NOTHING;
    """;

        try (var conn = Conexao.connection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            System.out.println("Conectado com sucesso!");
            stmt.setString(1, empresa.getCnpj());
            stmt.setString(2, empresa.getRazao_social());
            stmt.setString(3, empresa.getNome_fantasia());
            stmt.setString(4, empresa.getLogradouro());

            stmt.executeUpdate();
        } catch (Exception e) {
            System.out.println("Erro: " + e.getMessage());
        }


    }
    public void listarPorCnpj(String cnpj) throws Exception {

        String sql = "SELECT * FROM empresa WHERE cnpj = ?";

        try (var conn = Conexao.connection();
             var stmt = conn.prepareStatement(sql)) {

            stmt.setString(1, cnpj);

            var rs = stmt.executeQuery();

            while (rs.next()) {

                System.out.println("CNPJ: " + rs.getString("cnpj"));
                System.out.println("Razão Social: " + rs.getString("razao_social"));
                String nomeFantasia = rs.getString("nome_fantasia");
                System.out.println("Nome Fantasia: " + (nomeFantasia == null || nomeFantasia.isBlank() ? "Não informado" : nomeFantasia));
                System.out.println("Logradouro: " + rs.getString("logradouro"));
                System.out.println("---------------------------");
            }
        }
    }
}