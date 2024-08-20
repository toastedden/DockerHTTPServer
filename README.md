# Simple Dockerized HTTP Server

This project takes the Python HTTP Server and wraps it in a Docker container, making it easy to set up and deploy an open directory service. This service allows users to access and download files through a simple HTTP interface, making it ideal for file sharing or organizing files within a network. The project uses Docker Compose to manage the setup, which includes creating a `Files` directory where you can place files or organize them into subdirectories for better management.

## Features

- **Open Directory:** Acts as an open directory where users can download files directly from the server.
- **Easy File Organization:** You can create additional folders within the `Files` directory to organize your content as needed.
- **Dockerized for Portability:** The setup is entirely containerized, ensuring consistency across different environments.

## Prerequisites

- **Docker**: Make sure Docker is installed on your system.
- **Docker Compose**: Ensure Docker Compose is also installed.

## Getting Started

### 1. Clone the Repository

```bash
git clone https://github.com/toastedden/DockerHTTPServer.git
cd DockerHTTPServer
```

### 2. Run the Service

To build and start the service, use:
```bash
sudo docker compose up --build
```
For subsequent runs, you can start the service in detached mode:
```bash
sudo docker compose up -d
```

### 3. Open Port 9000

If you are on a Debian-based system, you may need to open port 9000 using UFW:
```bash
sudo ufw allow 9000/tcp
```
### 4. Accessing the Service

- Add your files or folders to the Files directory created in your project root.
- Navigate to http://localhost:9000 in your browser to access the open directory.
- To access the service outside your local network, you can port forward port 9000 on your router.

### 5. Customization

Changing the Port: If you want to use a different port, simply modify the ports section in the docker-compose.yaml file.
Organizing Files: You can create multiple folders within the Files directory to organize content better.

# Conclusion

This Dockerized SimpleHTTPServer is a straightforward way to share files within a network. By leveraging Docker, the setup is consistent and easily portable. Feel free to customize the setup to suit your needs, whether you're organizing files or sharing them across devices or networks. (Thanks for writting this README Chad Gregory Paul Thomas.)
