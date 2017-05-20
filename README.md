# Docker for [Mecodify](https://github.com/wsaqaf/mecodify)

Given an external mysql database, enables you to run
[mecodify](https://github.com/wsaqaf/mecodify) in a docker container (including
Apache and PHP).

## How

* Create a `configurations.php` file, as per the [mecodify installation
  instructions](https://github.com/wsaqaf/mecodify/blob/master/install.md).
* Run a container, mapping `configurations.php` into the container's filesystem:

```
docker -it -v /path/on/host/configurations.php:/var/www/html/configurations.php chris5/mecodify-docker
```

That's it. If however more configuration is required, check the base docker
image, which is `php:5.0-apache`.
