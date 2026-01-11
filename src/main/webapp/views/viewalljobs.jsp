<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<%@ page import="java.util.List" %>
<%@ page import="com.soumya.jobApp.model.JobPost" %>
<%@ page import="com.soumya.jobApp.repo.JobRepo" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Job Post List</title>
 
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

<c:set var="job" value="${jobList}" />

<div class="app-container">

    <h2 class="card-title" style="text-align:center; margin-bottom: 32px;">
        Job Post List
    </h2>

    <div class="card-grid">

        <c:forEach var="jobPost" items="${job}">

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

        </c:forEach>

    </div>

</div>

</body>
</html>
