package com.soumya.jobApp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.soumya.jobApp.model.JobPost;
import com.soumya.jobApp.repo.JobRepo;

@Service
public class JobService {

	@Autowired
	JobRepo jobRepo;
	
	public void addJob(JobPost jobPost) {
		jobRepo.add(jobPost);
	}
	
	public List<JobPost> getAllJobs() {
		return jobRepo.getJobs();
		
	}
}
