# fpm-mysql
Docker image of PHP-FPM with MySQL extension

**Suggested Database:**

- MariaDB
- MySQL

## Environment Variables

You can override the default working directory of `/var/www/html` to suit your project's app directory.

Sample usage:

```
  php-fpm:
    image: sreine/fpm-mysql:latest
      environment:
        - APP_WORKDIR="/home/user/app"
```
