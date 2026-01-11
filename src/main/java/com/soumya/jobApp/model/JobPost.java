package com.soumya.jobApp.model;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@AllArgsConstructor
public class JobPost {
	private int postID;
	private String postProfile;
	private String postDesc;
	private int reqExperience;
	private List<String> postTechStack;
	
//	public int getPostID() {
//		return postID;
//	}
//	public void setPostID(int postID) {
//		this.postID = postID;
//	}
//	public String getPostProfile() {
//		return postProfile;
//	}
//	public void setPostProfile(String postProfile) {
//		this.postProfile = postProfile;
//	}
//	public String getPostDesc() {
//		return postDesc;
//	}
//	public void setPostDesc(String postDesc) {
//		this.postDesc = postDesc;
//	}
//	public int getReqExperience() {
//		return reqExperience;
//	}
//	public void setReqExperience(int reqExperience) {
//		this.reqExperience = reqExperience;
//	}
//	public List<String> getPostTechStack() {
//		return postTechStack;
//	}
//	public void setPostTechStack(List<String> postTechStack) {
//		this.postTechStack = postTechStack;
//	}
//	public JobPost(int postID, String postProfile, String postDesc, int reqExperience, List<String> postTechStack) {
//		super();
//		this.postID = postID;
//		this.postProfile = postProfile;
//		this.postDesc = postDesc;
//		this.reqExperience = reqExperience;
//		this.postTechStack = postTechStack;
//	}
//	public JobPost() {
//		super();
//		// TODO Auto-generated constructor stub
//	}
//	@Override
//	public String toString() {
//		return "JobPost [postID=" + postID + ", postProfile=" + postProfile + ", postDesc=" + postDesc
//				+ ", reqExperience=" + reqExperience + ", postTechStack=" + postTechStack + "]";
//	}
	
	
}

