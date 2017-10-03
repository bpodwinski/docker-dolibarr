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