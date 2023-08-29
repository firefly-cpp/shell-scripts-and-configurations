# Install Forgejo container on Fedora Linux

Forgejo is described as a self-hosted lightweight software forge. Forgejo, a software Fork of Gitea written in Go, is easy to maintain. This small guide presents a few steps for successfully running Forgejo using Podman on Fedora Linux.

## Installation

### Install podman

```bash
sudo dnf install podman
```

### Pull Docker image

```bash
podman pull codeberg.org/forgejo/forgejo:1.20.3-0
```

### Run Docker image
```bash
podman run -p 3000:3000 -v forgejo:/data codeberg.org/forgejo/forgejo:1.20.3-0
```

### SSH
To enable SSH access to Forgejo, define a ``SSH Server Point`` during the initialisation process. For example, to set port 22:
<img src="../.github/imgs/ssh-server-port.png" />

After initialisation, run the container with the following command:
```bash
podman run -p 3000:3000 -v forgejo:/data codeberg.org/forgejo/forgejo:1.20.3-0
```

## Data
### Local data backup
To create a local backup of the data, get the container's ID by running the following command:
```bash
podman ps
```
    
Once you have the container's ID, run the following command to copy the data to a local directory:
```bash
podman cp <container_id>:/data /path/to/backup
```
