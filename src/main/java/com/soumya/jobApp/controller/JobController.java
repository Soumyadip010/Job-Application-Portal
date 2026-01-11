package com.soumya.jobApp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.soumya.jobApp.model.JobPost;
import com.soumya.jobApp.service.JobService;

@Controller
public class JobController {
	
	@Autowired
	JobService service;

	@GetMapping({"/","/home"})
	public String home() {
		return "home";
	}
	
	@GetMapping("/addjob")
	public String addJob() {
		return "addjob";
	}
	
	@GetMapping("/viewalljobs")
	public String viewJobs(Model mv) {
		List<JobPost> jobList=service.getAllJobs();
		mv.addAttribute("jobList",jobList);
		return "viewalljobs";
	}
	
	@PostMapping("/handleForm")
	public String handleForm(JobPost jobPost, Model mv) { //@ModelAttribute runs in behind here; 
		mv.addAttribute("jobPost",jobPost);  //Private variable names of the model class should be same as the 'name' attribute of input tags.
		service.addJob(jobPost);
		return "success";						
	}
}
