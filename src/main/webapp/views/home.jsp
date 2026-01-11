<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<title>Job Portal</title>
	
	<link rel="stylesheet" href="<%=request.getContextPath()%>/css/jobportal.css">
</head>

<body>
	<nav class="app-navbar">
	    <a class="app-logo" href="home">Job Portal</a>
	
	    <div class="nav-links">
	        <a class="nav-link-btn" href="home">Home</a>
	        <a class="nav-link-btn" href="viewalljobs">All Jobs</a>
	        <a class="nav-link-btn" href="#">Contact</a>
	    </div>
	</nav>

	<div class="app-container">
	    <div class="card-grid">	
	        <!-- View All Jobs Card -->
	        <div class="app-card card-view-jobs">
	            <h3 class="card-title">View All Jobs</h3>
	            <p class="card-text">
	                Browse all available job postings.
	            </p>
	            <form action="/viewalljobs" method="get">
	                <button type="submit" class="btn btn-primary">
	                    View Jobs
	                </button>
	            </form>	
	        </div>
	
	        <!-- Add Job Card -->
	        <div class="app-card card-add-job">	
	            <h3 class="card-title">Add Job</h3>
	            <p class="card-text">
	                Create and publish a new job post.
	            </p>	
	            <form action="/addjob" method="get">
	                <button type="submit" class="btn btn-secondary">
	                    Add Job
	                </button>
	            </form>
	        </div>
	    </div>
	</div>


</body>
</html>
