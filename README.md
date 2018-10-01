# Supported tags and respective `Dockerfile` links

`8.0.2`, `stable`, `latest` [*(bpodwinski/docker-dolibarr)*](https://github.com/bpodwinski/docker-dolibarr)<br>
`7.0.3`, `7.0` [*(bpodwinski/docker-dolibarr)*](https://github.com/bpodwinski/docker-dolibarr/tree/7.0.3)<br>
`6.0.7` [*(bpodwinski/docker-dolibarr/6.0.7)*](https://github.com/bpodwinski/docker-dolibarr/tree/6.0.7)<br>

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
| **PHP_MEMORY_LIMIT** | *optional* | 128M
| **MAX_UPLOAD** | *optional* | 64M


### Volumes

You can attach 2 volumes to your container:

- Configuration folder: `/var/www/html/conf`
- Data folder: `/var/www/html/documents`

Use the flag -v to mount a volume on the host machine like described in [official Docker documentation](https://docs.docker.com/engine/userguide/containers/dockervolumes/).
