package dao;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import model.Usuario;

public class UsuarioDAO implements DAO<Usuario> {
	private DataSource dataSource;
	public UsuarioDAO(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	
	public DataSource getDataSource() {
		return this.dataSource;
	}

	@Override
	public void create(Usuario object) {
		// TODO Auto-generated method stub
		try{
			String SQL = "insert into usuario (id,nome,email,senha,acesso,nasc,estado,genero,foto) values (?,?,?,?,?,?,?,?,?)";
		
		PreparedStatement stm = DataSource.getConexaoMySQL().prepareStatement(SQL);
		
		stm.setInt(1, object.getId());
		stm.setString(2, object.getNome());
		stm.setString(3, object.getEmail());
		stm.setString(4, object.getSenha());
		stm.setString(5, object.getAcesso());
		stm.setString(6, object.getNasc());
		stm.setString(7, object.getEstado());
		stm.setString(8, object.getGenero());
		stm.setString(9, object.getFoto());
		
		int resultado = stm.executeUpdate();
		if(resultado != 0) {
			System.out.println("Usuário cadastrado com sucesso");
		}
		else {
			System.out.println("Erro ao inserir usuário");
			throw new RuntimeException("Erroa ao inserir usuário. Não cadastrado");
		}
		} catch(Exception ex){
			System.out.println("Erro metodo usuárioDao.create" + ex.getMessage());
		}
	}

	@Override
	public Usuario read(Usuario object) {
		try {
			String SQL = "SELECT * FROM usuario where email=? and senha=?";
			
			PreparedStatement stm = DataSource.getConexaoMySQL().prepareStatement(SQL);
			stm.setString(1, object.getEmail());
			stm.setString(2, object.getSenha());
			
			ResultSet rs = stm.executeQuery();
			
			if(rs.next()) {
				Usuario resultado = new Usuario();
				resultado.setEmail(rs.getString("email"));
				resultado.setSenha(rs.getString("senha"));
				resultado.setId(rs.getInt("id"));
				resultado.setNome(rs.getString("nome"));
				resultado.setAcesso(rs.getString("acesso"));
				resultado.setNasc(rs.getString("nasc"));
				resultado.setEstado(rs.getString("estado"));
				resultado.setGenero(rs.getString("genero"));
				resultado.setFoto(rs.getString("foto"));
				
				return resultado;
			}
			else {
				return null;
			}
			
		} catch(Exception ex){
			System.out.println("Erro metodo usuárioDao.create" + ex.getMessage());
		}
		return null;
	}

	@Override
	public void update(Usuario object) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(Usuario object) {
		// TODO Auto-generated method stub
		
	}

}
