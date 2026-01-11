<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.soumya.jobApp.model.JobPost" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page isELIgnored="false" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Job Post Details</title>
    
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
	    <h2 class="card-title" style="text-align:center; margin-bottom: 32px;">
	        Job Post Details
	    </h2>
	    <div style="max-width: 600px; margin: 0 auto;">
	        <div class="app-card card-job-item">
	            <h3 class="card-title">
	            ${jobPost.postProfile}
	            </h3>
	
	            <p class="card-text">
	                <strong>Job ID:</strong> ${jobPost.postID}
	            </p>
	
	            <p class="card-text">
	                <strong>Description:</strong><br>
	               	${jobPost.postDesc}
	            </p>
	
	            <p class="card-text">
	                <strong>Experience Required:</strong>
	                ${jobPost.reqExperience} years
	            </p>
	
	            <p class="card-text">
	                <strong>Tech Stack Required:</strong>
	            </p>
	
	            <ul class="card-text">
	                <c:forEach var="tech" items="${jobPost.postTechStack}">
                        <li>${tech}</li>
                    </c:forEach>
	            </ul>
	        </div>
	    </div>
	</div>
</body>
</html>
