# Install Forgejo container on Fedora Linux

Forgejo is described as a self-hosted lightweight software forge. Forgejo, a software Fork of Gitea written in Go, is easy to maintain. This small guide presents a few steps for successfully running Forgejo using Podman on Fedora Linux.

## Installation

### Install podman

```bash
sudo dnf install podman
```

### Pull Docker image

```bash
docker pull codeberg.org/forgejo/forgejo:1.20.3-0
```

### Run Docker image
```bash
docker run -p 3000:3000 -v forgejo:/data codeberg.org/forgejo/forgejo:1.20.3-0
```
