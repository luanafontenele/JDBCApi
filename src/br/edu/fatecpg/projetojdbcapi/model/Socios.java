package br.edu.fatecpg.projetojdbcapi.model;

public class Socios {
    private String nome_socio;
    private String cnpj_cpf_do_socio; // Nome igual ao da API
    private String qualificacao_socio;

    public Socios(String nome_socio, String cnpj_cpf_do_socio, String qualificacao_socio) {
        this.nome_socio = nome_socio;
        this.cnpj_cpf_do_socio = cnpj_cpf_do_socio;
        this.qualificacao_socio = qualificacao_socio;
    }

    public String getNome_socio() {
        return nome_socio;
    }

    public void setNome_socio(String nome_socio) {
        this.nome_socio = nome_socio;
    }

    // Ajustei o nome do método para bater com o atributo
    public String getCnpj_cpf_do_socio() {
        return cnpj_cpf_do_socio;
    }

    public void setCnpj_cpf_do_socio(String cnpj_cpf_do_socio) {
        this.cnpj_cpf_do_socio = cnpj_cpf_do_socio;
    }

    public String getQualificacao_socio() {
        return qualificacao_socio;
    }

    public void setQualificacao_socio(String qualificacao_socio) {
        this.qualificacao_socio = qualificacao_socio;
    }

    @Override
    public String toString() {
        return "Socios{" +
                "nome_socio='" + nome_socio + '\'' +
                ", cnpj_cpf_do_socio='" + cnpj_cpf_do_socio + '\'' +
                ", qualificacao_socio='" + qualificacao_socio + '\'' +
                '}';
    }
}