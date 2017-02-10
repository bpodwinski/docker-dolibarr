# Supported tags and respective `Dockerfile` links

`4.0.4`, `stable` [*(BenoitPodwinski/docker-dolibarr)*](https://github.com/BenoitPodwinski/docker-dolibarr)<br>
`3.9.4`, `3.9` [*(BenoitPodwinski/docker-dolibarr/3.9)*](https://github.com/BenoitPodwinski/docker-dolibarr/tree/3.9)<br>
`3.8.4`, `3.8` [*(BenoitPodwinski/docker-dolibarr/3.8)*](https://github.com/BenoitPodwinski/docker-dolibarr/tree/3.8)<br>
`3.7.4`, `3.7` [*(BenoitPodwinski/docker-dolibarr/3.7)*](https://github.com/BenoitPodwinski/docker-dolibarr/tree/3.7)<br>
`3.6.6`, `3.6` [*(BenoitPodwinski/docker-dolibarr/3.6)*](https://github.com/BenoitPodwinski/docker-dolibarr/tree/3.6)<br>
`3.5.8`, `3.5` [*(BenoitPodwinski/docker-dolibarr/3.5)*](https://github.com/BenoitPodwinski/docker-dolibarr/tree/3.5)<br>

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

- Configuration folder: `/var/www/html/config`
- Data folder: `/var/www/html/documents`

Use the flag -v to mount a volume on the host machine like described in [official Docker documentation](https://docs.docker.com/engine/userguide/containers/dockervolumes/).