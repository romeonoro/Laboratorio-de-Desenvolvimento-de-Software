/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package conexao;

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

    }
}
