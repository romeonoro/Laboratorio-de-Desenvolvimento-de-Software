/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package bdaula01;

import beans.Pessoa;
import conexao.Conexao;
import dao.PessoaDAO;

/**
 *
 * @author laboratorio
 */
public class JavaBD01 {
    public static void main(String[] args) {
        Conexao c = new Conexao();
        c.getConexao();
        
        
        Pessoa p = new Pessoa();
        p.setNome("Ricardin");
        p.setSexo("M");
        p.setIdioma("PORTUGUÊS");
        
        PessoaDAO pDAO = new PessoaDAO();
        pDAO.inserir(p);
    }
}
