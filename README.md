# 🚀 DevOps Project 3: Containerized NGINX Application

![Docker](https://img.shields.io/badge/Docker-Containerization-blue?logo=docker)
![NGINX](https://img.shields.io/badge/WebServer-NGINX-green)
![Status](https://img.shields.io/badge/Deployment-Live-brightgreen)

---

## 📖 Project Overview

This project demonstrates how to containerize a static web application using Docker and serve it using NGINX.

A custom HTML page is deployed inside a Docker container and made accessible from the outside world using port mapping.

---

## 🎯 Objective

- Build a Docker image using a Dockerfile  
- Deploy an NGINX container  
- Serve a custom HTML page  
- Access the application from a browser  

---

## 🛠️ Tech Stack

- Docker  
- NGINX  
- Rocky Linux (Base Image)  
- HTML / CSS  

---

## 📂 Project Structure


skillfied-project-3/
│── Dockerfile
│── index.html
│── README.md
|__ images
     |__ output.png


---

## ⚙️ Dockerfile

```dockerfile
FROM rockylinux:9.3.20231119

LABEL maintainer="Anurag Mishra | anurag@gmail.com"

RUN dnf install nginx -y && dnf clean all

COPY index.html /usr/share/nginx/html/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]

🚀 Implementation Steps
1️⃣ Build Docker Image
docker build -t nginx:v1 .
2️⃣ Run Docker Container
docker run -d -p 8080:80 nginx:v1
3️⃣ Verify Running Container
docker ps

4️⃣ Access Application (🌍 Live)

Open in browser:

http://<your-server-ip>:80

✅ Application successfully accessed from outside network

✅ Expected Outcome
Docker image created successfully
Container running NGINX
Custom HTML page served
Application accessible externally

📸 Output

images/output.png

🧠 Key Concepts
🔹 Docker Image

Blueprint for creating containers

🔹 Container

Running instance of an image

🔹 Port Mapping

Connects container to host machine

🧪 Learning Outcomes
Hands-on Docker containerization
NGINX web server deployment
Real-world exposure of application
Debugging container issues
👨‍💻 Author

Anurag Mishra

🔗 GitHub: https://github.com/Anurag842321/skillfied-project-3
