# SSHD Docker Image

This Docker image provides a quick and easy way to spin up an isolated SSH server environment for **testing purposes**. The image comes with a dynamically generated root user password, and all necessary SSH keys are generated at startup. Ideal for development and test scenarios where you need a standalone SSH server.

## Getting Started

### Start SSH Server

To start an SSH server container, you can run:

```bash
docker run -d -p 22:22 ghcr.io/mazzz1y/docker-sshd:latest
```

### Accessing SSH Server

After the container starts, it will output the root user's dynamically generated password. You will need to fetch this password to connect to the SSH server. To retrieve the password, execute:

```bash
docker logs <container_id>
```

Replace `<container_id>` with the actual ID of your running container.

Once you have the password, connect to the SSH server using:

```bash
ssh root@localhost
```

When prompted, enter the password.

### Security Considerations

This image is designed for use in isolated and secure testing environments. The root password is dynamically generated at each startup, ensuring that it is unique to each session. 

**Do not use this image in production environments or expose the SSH server to public networks**.
