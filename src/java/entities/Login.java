/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entities;



/**
 *
 * @author admin
 */
public class Login   {
    private static int cmp;
	private int id;
	private String username;
	private String password;
        private String role;

        public Login(int id, String username, String password) {
		super();
		this.id = id;
		this.username = username;
		this.password = password;
               
		
	}
	
	public Login(String username, String password) {
		this.id = ++cmp;
		this.username = username;
		this.password = password;
               
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
        public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}
    
}
