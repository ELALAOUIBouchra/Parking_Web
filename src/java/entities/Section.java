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
public class Section {

    private int id;
    private String code;
    private String reference;

    public Section(int id, String reference, String code) {
        super();
        this.id = id;
        this.reference = reference;
        this.code = code;

    }

    public Section(String reference, String code) {
        super();
        this.reference = reference;
        this.code = code;

    }
    
    public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getCode() {
		return code;
	}


	public void setCode(String code) {
		this.code = code;
	}


	public String getReference() {
		return reference;
	}


	public void setReference(String reference) {
		this.reference = reference;
	}


	@Override
	public String toString() {
		return "Section [id=" + id + ", code=" + code + ",reference=" +reference+"]";
	}
}
