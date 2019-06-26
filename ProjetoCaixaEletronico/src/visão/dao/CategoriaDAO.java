package visão.dao;

import connection.ConnectionFactory;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import visao.TelaCadastrar;


/**
 * CRUD
 * @author Otavio & Alan
 */
public class CategoriaDAO {
    
    private Connection con = null; 

    public CategoriaDAO() {
        con = ConnectionFactory.getConnection(); 
    } 
    
    public boolean save(TelaCadastrar telaCadastro) { 
      
        String sql = "INTERT INTO conta (dados) VALUES (txt)  "; 
        
        PreparedStatement stmt = null; 
        
        try {
            stmt = con.prepareCall(sql);
            
            
        } catch (SQLException ex) {
            Logger.getLogger(CategoriaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
        
    }
    
    
}
