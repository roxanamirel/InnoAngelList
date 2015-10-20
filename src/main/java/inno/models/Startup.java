package inno.models;

import java.util.Date;
import java.util.List;

public class Startup {
	
	private int id;
	private boolean hidden;
	private boolean community_profile;
	private String name;
	private String angellist_url;
	private String logo_url;
	private String thumb_url;
	private int quality;
	private String product_desc;
	private String high_concept;
	private int follower_count;
	private String company_url;
	private Date created_at;
	private Date updated_at;
	private String crunchbase_url;
	private String twitter_url;
	private String blog_url;
	private String facebook_url;
	private String linkedin_url;
	private String video_url;
	private List<Company_Type> company_type;
	//private String status;
	private List<Screenshot> screenshots;
	private Ability ability;
	
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public boolean isHidden() {
		return hidden;
	}
	public void setHidden(boolean hidden) {
		this.hidden = hidden;
	}
	public boolean isCommunity_profile() {
		return community_profile;
	}
	public void setCommunity_profile(boolean community_profile) {
		this.community_profile = community_profile;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAngellist_url() {
		return angellist_url;
	}
	public void setAngellist_url(String angellist_url) {
		this.angellist_url = angellist_url;
	}
	public String getLogo_url() {
		return logo_url;
	}
	public void setLogo_url(String logo_url) {
		this.logo_url = logo_url;
	}
	public String getThumb_url() {
		return thumb_url;
	}
	public void setThumb_url(String thumb_url) {
		this.thumb_url = thumb_url;
	}
	public int getQuality() {
		return quality;
	}
	public void setQuality(int quality) {
		this.quality = quality;
	}
	public String getProduct_desc() {
		return product_desc;
	}
	public void setProduct_desc(String product_desc) {
		this.product_desc = product_desc;
	}
	public String getHigh_concept() {
		return high_concept;
	}
	public void setHigh_concept(String high_concept) {
		this.high_concept = high_concept;
	}
	public int getFollower_count() {
		return follower_count;
	}
	public void setFollower_count(int follower_count) {
		this.follower_count = follower_count;
	}
	public String getCompany_url() {
		return company_url;
	}
	public void setCompany_url(String company_url) {
		this.company_url = company_url;
	}
	public Date getCreated_at() {
		return created_at;
	}
	public void setCreated_at(Date created_at) {
		this.created_at = created_at;
	}
	public Date getUpdated_at() {
		return updated_at;
	}
	public void setUpdated_at(Date updated_at) {
		this.updated_at = updated_at;
	}
	public String getCrunchbase_url() {
		return crunchbase_url;
	}
	public void setCrunchbase_url(String crunchbase_url) {
		this.crunchbase_url = crunchbase_url;
	}
	public String getTwitter_url() {
		return twitter_url;
	}
	public void setTwitter_url(String twitter_url) {
		this.twitter_url = twitter_url;
	}
	public String getBlog_url() {
		return blog_url;
	}
	public void setBlog_url(String blog_url) {
		this.blog_url = blog_url;
	}
	public String getFacebook_url() {
		return facebook_url;
	}
	public void setFacebook_url(String facebook_url) {
		this.facebook_url = facebook_url;
	}
	public String getLinkedin_url() {
		return linkedin_url;
	}
	public void setLinkedin_url(String linkedin_url) {
		this.linkedin_url = linkedin_url;
	}
	public String getVideo_url() {
		return video_url;
	}
	public void setVideo_url(String video_url) {
		this.video_url = video_url;
	}
	
//	public String getStatus() {
//		return status;
//	}
//	public void setStatus(String status) {
//		this.status = status;
//	}
    
	public List<Screenshot> getScreenshots() {
		return screenshots;
	}
	public void setScreenshots(List<Screenshot> screenshots) {
		this.screenshots = screenshots;
	}
	public Ability getAbility() {
		return ability;
	}
	public void setAbility(Ability ability) {
		this.ability = ability;
	}
	public List<Company_Type> getCompany_type() {
		return company_type;
	}
	public void setCompany_type(List<Company_Type> company_type) {
		this.company_type = company_type;
	}
	
	
	
	
	 
	
	
	

}
