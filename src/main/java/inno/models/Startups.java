package inno.models;

import java.util.ArrayList;
import java.util.List;

public class Startups {
	List<Startup> startups;

	public Startups(){
		startups = new ArrayList<Startup>();
	}
	public List<Startup> getStartups() {
		return startups;
	}

	public void setStartups(List<Startup> startups) {
		this.startups = startups;
	}
	
	
}
