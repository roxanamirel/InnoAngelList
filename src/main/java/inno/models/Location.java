package inno.models;

public class Location {

	private int id;
	private String tag_type;
	private String name;
	private String display_name;
	private String angellist_url;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTag_type() {
		return tag_type;
	}
	public void setTag_type(String tag_type) {
		this.tag_type = tag_type;
	}
	public String getDisplay_name() {
		return display_name;
	}
	public void setDisplay_name(String display_name) {
		this.display_name = display_name;
	}
	public String getAngellist_url() {
		return angellist_url;
	}
	public void setAngellist_url(String angellist_url) {
		this.angellist_url = angellist_url;
	}
	
	
}
