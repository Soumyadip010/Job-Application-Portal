<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<!-- jQuery (required) -->
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	
	<!-- Select2 CSS -->
	<link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet"/>
		
	<!-- Select2 JS -->
	<script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>

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

    <div class="app-card card-add-job">

        <h2 class="card-title" style="text-align:center; margin-bottom: 24px;">
            Post a New Job
        </h2>

        <form:form action="handleForm" method="post" modelAttribute="jobPost">

            <!-- Post ID -->
            <div class="form-group">
                <label for="postID" class="form-label">Post ID</label>
                <input
                    type="text"
                    id="postID"
                    name="postID"
                    class="form-input"
                    required>
            </div>

            <!-- Post Profile -->
            <div class="form-group">
                <label for="postProfile" class="form-label">Post Profile</label>
                <input
                    type="text"
                    id="postProfile"
                    name="postProfile"
                    class="form-input"
                    required>
            </div>

            <!-- Post Description -->
            <div class="form-group">
                <label for="postDesc" class="form-label">Post Description</label>
                <textarea
                    id="postDesc"
                    name="postDesc"
                    rows="3"
                    class="form-input"
                    required></textarea>
            </div>

            <!-- Required Experience -->
            <div class="form-group">
                <label for="reqExperience" class="form-label">Required Experience</label>
                <input
                    type="number"
                    id="reqExperience"
                    name="reqExperience"
                    class="form-input"
                    required>
            </div>

            <!-- Tech Stack -->
            <div class="form-group">
                <label for="postTechStack" class="form-label">Tech Stack</label>
                <select
                    id="postTechStack"
                    name="postTechStack"
                    multiple
                    class="form-input"
                    required>

                    <!-- VALUES UNTOUCHED -->
                    <option value="Java">Java</option>
                    <option value="JavaScript">JavaScript</option>
                    <option value="Swift">Swift</option>
                    <option value="TypeScript">TypeScript</option>
                    <option value="Go">Go</option>
                    <option value="Kotlin">Kotlin</option>
                    <option value="Rust">Rust</option>
                    <option value="PHP">PHP</option>
                    <option value="HTML5">HTML5</option>
                    <option value="CSS3">CSS3</option>
                    <option value="GraphQL">GraphQL</option>
                    <option value="Raspberry Pi">Raspberry Pi</option>
                    <option value="Arduino">Arduino</option>
                    <option value="IoT (Internet of Things)">IoT (Internet of Things)</option>
                    <option value="Apache Kafka">Apache Kafka</option>
                    <option value="Elasticsearch">Elasticsearch</option>
                    <option value="Unity">Unity</option>
                    <option value="Game Development">Game Development</option>
                    <option value="Vue.js">Vue.js</option>
                    <option value="Angular">Angular</option>
                    <option value="Hibernate">Hibernate</option>
                    <option value="React Native">React Native</option>
                    <option value="Flutter">Flutter</option>
                    <option value="Node.js">Node.js</option>
                    <option value="Express.js">Express.js</option>
                    <option value="Django">Django</option>
                    <option value="Flask">Flask</option>
                    <option value="Ruby on Rails">Ruby on Rails</option>
                    <option value="Laravel">Laravel</option>
                    <option value="TensorFlow">TensorFlow</option>
                    <option value="PyTorch">PyTorch</option>
                    <option value="Kubernetes">Kubernetes</option>
                    <option value="Docker">Docker</option>
                    <option value="Jenkins">Jenkins</option>
                    <option value="AWS (Amazon Web Services)">AWS (Amazon Web Services)</option>
                    <option value="Azure">Azure</option>
                    <option value="Google Cloud">Google Cloud</option>
                    <option value="DevOps">DevOps</option>
                    <option value="Blockchain">Blockchain</option>
                    <option value="Machine Learning">Machine Learning</option>
                    <option value="Artificial Intelligence">Artificial Intelligence</option>
                    <option value="Cybersecurity">Cybersecurity</option>
                    <option value="CISSP (Certified Information Systems Security Professional)">
                        CISSP (Certified Information Systems Security Professional)
                    </option>
                    <option value="CompTIA Security+">CompTIA Security+</option>
                    <option value="Certified Ethical Hacker (CEH)">
                        Certified Ethical Hacker (CEH)
                    </option>
                    <option value="Scrum">Scrum</option>
                    <option value="Agile">Agile</option>
                    <option value="Kanban">Kanban</option>

                </select>
            </div>

            <!-- Submit -->
            <div style="text-align:center; margin-top: 24px;">
                <button type="submit" class="btn btn-secondary">
                    Submit
                </button>
            </div>

        </form:form>

    </div>
	</div>
	<script>
		$(document).ready(function() {
		    $('#postTechStack').select2({
		        placeholder: "Select required skills",
		        allowClear: true
		    });
		});
	</script>
	


</body>
</html>