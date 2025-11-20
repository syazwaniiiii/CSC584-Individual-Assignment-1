<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Profile Details</title>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

    <style>
        body {
            background-color: #f8f9fa;
            font-family: Arial, sans-serif;
        }
        .profile-box {
            max-width: 800px;
            margin: 30px auto;
            background: #fff;
            padding: 25px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0,0,0,0.15);
        }
        .section-title {
            font-size: 20px;
            font-weight: bold;
            border-bottom: 2px solid #ccc;
            padding-bottom: 5px;
            margin-bottom: 15px;
        }
        .label-title {
            font-weight: bold;
            color: #000;
        }
    </style>
</head>

<body>

<div class="profile-box">

    <h2 class="text-center mb-4">Profile Summary</h2>

    <%-- Personal Information --%>
    <div class="section-title">Personal Information</div>
    
    <%
        String name = (String) request.getAttribute("name");
        String email = (String) request.getAttribute("email");
    %>
    
    <p><span class="label-title">Name:</span> <%= (name != null ? name : "Not provided") %></p>
    <p><span class="label-title">Email:</span> <%= (email != null ? email : "Not provided") %></p>

    <%-- Academic Details --%>
    <div class="section-title mt-4">Academic Details</div>
    
    <%
        String studentID = (String) request.getAttribute("studentID");
        String program_code = (String) request.getAttribute("program_code");
        String program = (String) request.getAttribute("program");
    %>
    
    <p><span class="label-title">Student ID:</span> <%= (studentID != null ? studentID : "Not provided") %></p>
    <p><span class="label-title">Program Code:</span> <%= (program_code != null ? program_code : "Not provided") %></p>
    <p><span class="label-title">Program:</span> <%= (program != null ? program : "Not provided") %></p>

    <%-- Hobbies --%>
    <div class="section-title mt-4">Hobbies</div>
    
    <%
        String hobbies = (String) request.getAttribute("hobbies");
    %>
    
    <p><%= (hobbies != null && !hobbies.isEmpty() ? hobbies : "None listed") %></p>

    <%-- About Me --%>
    <div class="section-title mt-4">About Me</div>
    
    <%
        String selfIntroduction = (String) request.getAttribute("selfIntroduction");
    %>
    
    <p><%= (selfIntroduction != null && !selfIntroduction.isEmpty() ? selfIntroduction : "No introduction provided") %></p>

    <%-- Back Button --%>
    <div class="mt-4 text-center">
        <a href="profile.html" class="btn btn-primary">Back to Form</a>
    </div>

</div>

</body>
</html>
