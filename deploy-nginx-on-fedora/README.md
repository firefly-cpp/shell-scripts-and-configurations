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

#### Install FirewallD

sudo dnf install firewalld

#### Start service
sudo systemctl start firewalld
sudo systemctl enable firewalld

#### Add rules
sudo firewall-cmd --permanent --add-service=http
sudo firewall-cmd --permanent --add-service=https

restart firewall

### Test

screenshot

### Edit folder
Change contents in /usr/share/nginx/html

## Edit nginx configuration

### Check nginx.conf

- cd /etc/nginx.conf

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
