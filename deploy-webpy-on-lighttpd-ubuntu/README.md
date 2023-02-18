# Lighttpd and web.py installation instructions (+ configurations)

## About
Lighttpd is a lightweight web server that is secure and fast and can be used for serving simple websites and even highly complex applications where performance is crucial. It is also well suited to serve web.py applications. Working with Lighttpd is an easy and enjoyable experience.

## Installation (tested on Ubuntu)

### Install from official repository

```bash
apt-get install lighttpd
```

### Enable service

```bash
systemctl start lighttpd
systemctl enable lighttpd
```

If you need to check the status of service, you can check using the following command:

```bash
systemctl status lighttpd
```

### Edit lighttpd.conf file

```bash
cd /etc/lighttpd/
nano lighttpd.conf
```
An example of configuration can be found in: 

### Install web.py and flup

Install web.py using pip:

```bash
pip install web.py
```

Install flup using pip:

```bash
pip install flup
```

### Install application

* Copy web.py application to /var/www/
* chmod 755 on python files
* Restart lighttpd web server
* Visit your site http://your-ip

