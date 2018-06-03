# nginx-sample
Simple NGINX Docker image which is setup for SSL and contains a few sample JSON files

## Usage

1. Pull the image
```bash
$ docker pull craigrueda/nginx-sample:latest
```

2. Run it
```bash
$ docker run -p 8080:80 -p 8443:443 craigrueda/nginx-sample:latest
```

3. Request sample JSON...
```bash
$ curl -k https://<docker_ip>:8443/1KB.json
$ curl -k https://<docker_ip>:8443/100KB.json
```
