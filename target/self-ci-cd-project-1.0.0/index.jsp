<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CI/CD Pipeline Overview</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            text-align: center;
        }
        .container {
            width: 80%;
            margin: auto;
            padding: 20px;
            background: white;
            border-radius: 10px;
            box-shadow: 0px 0px 10px gray;
        }
        h1 {
            color: #007bff;
        }
        .step {
            margin: 20px 0;
            padding: 15px;
            background: #e3f2fd;
            border-left: 5px solid #007bff;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>CI/CD Pipeline Workflow</h1>
        
        <div class="step">
            <h2>Step 1: Code Push to GitHub</h2>
            <p>Developers push code changes to the GitHub repository. This triggers Jenkins to start the pipeline.</p>
        </div>
        
        <div class="step">
            <h2>Step 2: Jenkins Build</h2>
            <p>Jenkins pulls the latest code, compiles it using Maven, and runs tests.</p>
        </div>
        
        <div class="step">
            <h2>Step 3: SonarQube Code Analysis</h2>
            <p>Jenkins sends the code to SonarQube for static code analysis to ensure code quality and security.</p>
        </div>
        
        <div class="step">
            <h2>Step 4: Docker Image Creation</h2>
            <p>If tests pass, Jenkins builds a Docker image and pushes it to Docker Hub.</p>
        </div>
        
        <div class="step">
            <h2>Step 5: Kubernetes Deployment</h2>
            <p>Kubernetes pulls the Docker image from Docker Hub and deploys it in the cluster.</p>
        </div>
        
        <div class="step">
            <h2>Step 6: ArgoCD Sync</h2>
            <p>ArgoCD automatically detects new deployments and ensures the Kubernetes cluster is updated.</p>
        </div>
        
        <h3>Your application is now live and accessible!</h3>
    </div>
</body>
</html>
