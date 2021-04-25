package beans;

import java.util.ArrayList;
import java.util.List;

public class FilenamesBean {
	private int p_no;
	private String name;
	private List p_img;
	private List names;
	
	public int getP_no() {
		return p_no;
	}
	public void setP_no(int p_no) {
		this.p_no = p_no;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public List getP_img() {
		return p_img;
	}
	public void setP_img(List p_img) {
		this.p_img = p_img;
	}
	public List getNames() {
		return names;
	}
	public void setNames(List names) {
		this.names = names;
	}
}
