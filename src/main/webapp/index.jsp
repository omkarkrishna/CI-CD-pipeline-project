<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>CI/CD Pipeline Visualization</title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/animejs/3.2.1/anime.min.js"></script>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            background-color: #f4f4f4;
        }
        .container {
            margin-top: 50px;
        }
        .step {
            display: inline-block;
            padding: 20px;
            margin: 20px;
            background-color: #0073e6;
            color: white;
            border-radius: 10px;
            font-size: 20px;
            position: relative;
        }
        .arrow {
            display: inline-block;
            font-size: 30px;
            color: #0073e6;
            position: relative;
            top: -5px;
        }
        .ball {
            width: 20px;
            height: 20px;
            background-color: red;
            border-radius: 50%;
            position: absolute;
        }
    </style>
</head>
<body>
    <h1>CI/CD Pipeline Workflow</h1>
    <div class="container">
        <div class="step">GitHub</div>
        <div class="arrow">→</div>
        <div class="step">Jenkins</div>
        <div class="arrow">→</div>
        <div class="step">SonarQube</div>
        <div class="arrow">→</div>
        <div class="step">Docker</div>
        <div class="arrow">→</div>
        <div class="step">Kubernetes</div>
        <div class="arrow">→</div>
        <div class="step">ArgoCD</div>
    </div>

    <script>
        function animateBall() {
            let ball = document.createElement("div");
            ball.classList.add("ball");
            document.body.appendChild(ball);
            anime({
                targets: ball,
                translateX: [0, window.innerWidth - 50],
                duration: 5000,
                easing: 'easeInOutSine',
                complete: function() { ball.remove(); }
            });
        }
        setInterval(animateBall, 3000);
    </script>
</body>
</html>
