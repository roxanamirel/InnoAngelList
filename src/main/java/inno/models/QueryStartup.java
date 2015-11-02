package inno.models;

public class QueryStartup {
	
	private String location;
	private String name;
	private int qualityIndex;
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getQualityIndex() {
		return qualityIndex;
	}

	public void setQualityIndex(int qualityIndex) {
		this.qualityIndex = qualityIndex;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}
}