# Deploy Nginx web server with two domains on Fedora

## Installation (tested on Fedora 38)

### Install from [official repository](https://src.fedoraproject.org/rpms/nginx)

```bash
dnf install nginx
```

### Enable service

```bash
sudo systemctl enable nginx
sudo systemctl start nginx
```

If you need to check the status of the service, you can check using the following command:

```bash
TODO
```

### Enable firewall

#### Install firewalld

```bash
sudo dnf install firewalld
```

#### Start service
```bash
sudo systemctl start firewalld
sudo systemctl enable firewalld
```

#### Add rules
```bash
sudo firewall-cmd --permanent --add-service=http # support http (port 80)
sudo firewall-cmd --permanent --add-service=https # support https (port 443)

systemctl restart firewalld # restart service
```

### Test

- visit http://127.0.0.1

<p align="center">
  <img width="600" src="https://raw.githubusercontent.com/firefly-cpp/shell-scripts-and-configurations/main/.github/imgs/fedora-nginx-test.png">
</p>

### Edit folder
Change contents in /usr/share/nginx/html

## Edit nginx configuration

### Check nginx.conf
```bash
cd /etc/nginx.conf
```

Check that line: include /etc/nginx/conf.d/*.conf; is enabled.

### Add server blocks in /etc/nginx/conf.d

Example: website1.conf
```bash
server {
  	listen 80;
  	listen [::]:80;
	root /var/www/website1.com;
	index index.html;
	server_name website1.com www.website1.com;
	access_log /var/log/nginx/website1_access.log main;
	error_log /var/log/nginx/website1_error.log warn;
	location / { try_files $uri $uri/ =404;}
}
```

Example: website2.conf
```bash
server {
  	listen 80;
  	listen [::]:80;
	root /var/www/website2.com;
	index index.html;
	server_name website2.com www.website2.com;
	location / { try_files $uri $uri/ =404;}
}
```

### certbot

```bash
certbot --nginx -d website1.com -d www.website1.com
```
