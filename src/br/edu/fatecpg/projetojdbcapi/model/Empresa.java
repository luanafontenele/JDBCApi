package br.edu.fatecpg.projetojdbcapi.model;
import br.edu.fatecpg.projetojdbcapi.model.Socios;
import java.util.List;
import java.util.ArrayList;

public class Empresa {
    private String cnpj;
    private String razao_social;
    private String nome_fantasia;
    private String logradouro;

    private List<Socios> qsa;

    public Empresa(String cnpj, String razao_social, String nome_fantasia, String logradouro, List<Socios> qsa) {
        this.cnpj = cnpj;
        this.razao_social = razao_social;
        this.nome_fantasia = nome_fantasia;
        this.logradouro = logradouro;
        this.qsa = qsa;
    }

    public String getCnpj() {
        return cnpj;
    }

    public void setCnpj(String cnpj) {
        this.cnpj = cnpj;
    }

    public String getRazao_social() {
        return razao_social;
    }

    public void setRazao_social(String razao_social) {
        this.razao_social = razao_social;
    }

    public String getNome_fantasia() {
        return nome_fantasia;
    }

    public void setNome_fantasia(String nome_fantasia) {
        this.nome_fantasia = nome_fantasia;
    }

    public String getLogradouro() {
        return logradouro;
    }

    public void setLogradouro(String logradouro) {
        this.logradouro = logradouro;
    }

    public List<Socios> getQsa() {
        return qsa;
    }

    public void setQsa(List<Socios> qsa) {
        this.qsa = qsa;
    }

    @Override
    public String toString() {
        return "Empresa{" +
                "cnpj='" + cnpj + '\'' +
                ", razao_social='" + razao_social + '\'' +
                ", nome_fantasia='" + nome_fantasia + '\'' +
                ", logradouro='" + logradouro + '\'' +
                ", qsa=" + qsa +
                '}';
    }
}
