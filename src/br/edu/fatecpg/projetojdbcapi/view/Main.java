package br.edu.fatecpg.projetojdbcapi.view;

import br.edu.fatecpg.projetojdbcapi.model.Empresa;
import br.edu.fatecpg.projetojdbcapi.model.Socios;
import br.edu.fatecpg.projetojdbcapi.service.ConsumoApi;
import br.edu.fatecpg.projetojdbcapi.db.DBEmpresa;
import br.edu.fatecpg.projetojdbcapi.db.DBSocios;

import com.google.gson.Gson;

import java.util.Scanner;

public class Main {

    public static void main(String[] args){

        Scanner scan = new Scanner(System.in);
        Gson gson = new Gson();

        System.out.print("Digite o CNPJ: ");
        String cnpj = scan.nextLine().replaceAll("[^0-9]", "");

        try {

            String json = ConsumoApi.buscarCnpj(cnpj);

            Empresa empresa = gson.fromJson(json, Empresa.class);

            DBEmpresa dbEmpresa = new DBEmpresa();
            dbEmpresa.salvar(empresa);

            DBSocios dbSocios = new DBSocios();

            if (empresa.getQsa() != null && !empresa.getQsa().isEmpty()) {
                dbSocios.deletarPorEmpresa(empresa.getCnpj());
                for (Socios socio : empresa.getQsa()) {
                    dbSocios.salvar(socio, empresa.getCnpj());
                }

            } else {
                System.out.println("Empresa não possui sócios cadastrados.");
            }

            System.out.println("\nEmpresa e sócios cadastrados!");

            // LISTAR DADOS
            System.out.println("\nEmpresas cadastradas:");
            dbEmpresa.listarPorCnpj(empresa.getCnpj());

            System.out.println("\nSócios cadastrados:");
            dbSocios.listar(empresa.getCnpj());

        } catch (Exception e){
            System.out.println("Erro: " + e.getMessage());
        }

        scan.close();
    }
}