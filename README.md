# Supported tags and respective `Dockerfile` links

`7.0.2`, `stable`, `latest` [*(bpodwinski/docker-dolibarr)*](https://github.com/bpodwinski/docker-dolibarr)<br>
`6.0.7` [*(bpodwinski/docker-dolibarr/6.0.7)*](https://github.com/bpodwinski/docker-dolibarr/tree/6.0.7)<br>
`6.0-php7.0` [*(bpodwinski/docker-dolibarr/6.0-php7.1)*](https://github.com/bpodwinski/docker-dolibarr/tree/6.0-php7.1)<br>
`6.0-php7.0` [*(bpodwinski/docker-dolibarr/6.0-php7.0)*](https://github.com/bpodwinski/docker-dolibarr/tree/6.0-php7.0)<br>
`5.0.6`, `5.0` [*(bpodwinski/docker-dolibarr/5.0)*](https://github.com/bpodwinski/docker-dolibarr/tree/5.0)<br>
`4.0.4`, `4.0` [*(bpodwinski/docker-dolibarr/4.0)*](https://github.com/bpodwinski/docker-dolibarr/tree/4.0)<br>
`3.9.4`, `3.9` [*(bpodwinski/docker-dolibarr/3.9)*](https://github.com/bpodwinski/docker-dolibarr/tree/3.9)<br>
`3.8.4`, `3.8` [*(bpodwinski/docker-dolibarr/3.8)*](https://github.com/bpodwinski/docker-dolibarr/tree/3.8)<br>
`3.7.4`, `3.7` [*(bpodwinski/docker-dolibarr/3.7)*](https://github.com/bpodwinski/docker-dolibarr/tree/3.7)<br>
`3.6.6`, `3.6` [*(bpodwinski/docker-dolibarr/3.6)*](https://github.com/bpodwinski/docker-dolibarr/tree/3.6)<br>
`3.5.8`, `3.5` [*(bpodwinski/docker-dolibarr/3.5)*](https://github.com/bpodwinski/docker-dolibarr/tree/3.5)<br>

### What is this ?

Dolibarr ERP & CRM is a modern and easy to use software package to manage your business (customers, invoices, orders, products, stocks, agenda, e-mailings, shipments...). More details on the [official website](https://www.dolibarr.org/).

### Features

- Based on Debian
- Latest stable versions
- With Apache2 and PHP5.6
- DB driver for Mysql and PostgreSQL

### Ports

- **80**

### Environment

| Variable | Type | Default value |
| -------- | ---- | ------------- |
| **PHP_TIMEZONE** | *optional* | UTC
| **PHP_MEMORY_LIMIT** | *optional* | 256M
| **MAX_UPLOAD** | *optional* | 128M


### Volumes

You can attach 2 volumes to your container:

- Configuration folder: `/var/www/html/conf`
- Data folder: `/var/www/html/documents`

Use the flag -v to mount a volume on the host machine like described in [official Docker documentation](https://docs.docker.com/engine/userguide/containers/dockervolumes/).
