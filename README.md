# Docker Zero to Hero

## Overview

This repository is a complete guide to learning Docker from scratch, progressing from basic concepts to advanced implementations. It includes Docker containers for Python apps, Node.js, MySQL, WordPress, multi-stage builds, and three-tier architectures, along with detailed notes and Docker Compose configurations.

---

### Repository Structure

```plaintext
├── notes/                     # Detailed handwritten notes about Docker concepts
├── 1_pythonapp/               # Dockerfiles and examples for Python applications
├── 12_nodejs/                 # Dockerfiles and examples for Node.js applications
├── 3_mysql_with_dockerfile/   # MySQL setup using Dockerfile
├── 4_mysql_dockerfile_with_.sh_&_sql_shellscripting/ # MySQL setup with shell scripting and SQL files
├── 5_multistage_building/     # Multi-stage build examples
├── 6_wordpress_with_docker-compose/ # WordPress setup using Docker Compose
├── 17_threetier_docker-compose/     # Three-tier architecture using Docker Compose
├── docker-compose-files/      # Docker Compose configurations for various setups
├── dockerfiles/               # Custom Dockerfiles for applications
├── examples/                  # Practical Docker examples and projects
│   ├── basic-usage/           # Basic Docker usage examples
│   ├── networking/            # Docker networking examples
│   └── volumes/               # Examples showcasing volume management
└── README.md                  # Project documentation (this file)
```

---

### Key Topics Covered

1. **Introduction to Docker**
   - What is Docker? Why use it?
   - Installing Docker
   - Docker architecture (Client, Daemon, Images, Containers)

2. **Working with Containers**
   - Creating and managing containers
   - Running applications in containers
   - Container lifecycle management

3. **Docker Images**
   - Building custom images with Dockerfiles
   - Using public images from Docker Hub
   - Optimizing and managing images

4. **Networking in Docker**
   - Bridge, Host, and Overlay networks
   - Container communication
   - Exposing and mapping ports

5. **Docker Compose**
   - Defining multi-container applications
   - Managing services with `docker-compose.yml`
   - Examples of single-service and multi-service setups

6. **Volume Management**
   - Persistent storage with Docker volumes
   - Backing up and restoring data

7. **Advanced Docker**
   - Multi-stage builds
   - Deploying Nginx and reverse proxy setup
   - Docker in production environments

---

### Getting Started

1. **Clone the Repository**:
   ```bash
   git clone <repository-url>
   cd docker-zero-to-hero
   ```

2. **Explore the Structure**:
   - Navigate through the directories to access notes, Docker Compose configurations, and Dockerfiles.

3. **Run Examples**:
   - Use the provided files to practice Docker concepts step-by-step.

---

### Example: Creating a Dockerfile

#### Dockerfile: `Dockerfile`
```dockerfile
FROM python:3.9-slim
WORKDIR /app
COPY requirements.txt ./
RUN pip install -r requirements.txt
COPY . ./
CMD ["python", "app.py"]
```

#### Commands:
```bash
# Build the Docker image
docker build -t my-python-app .

# Run the Docker container
docker run -d -p 5000:5000 my-python-app
```

---

### Contributions

Contributions are welcome! Feel free to submit issues or pull requests to enhance the repository or add new examples.

---

### License

This repository is open-source and available under the [MIT License](LICENSE).
