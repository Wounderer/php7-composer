Docker - Composer image
=======================
A Docker Composer image based on [eviweb/php7-dev][php7-dev] with [su-exec][su-exec].

##### Health status
[![Build Status][build-status]][repository]
[![Github - Last tag][last-tag]][tags]

Usage
-----
### Simple use
Run the command `docker run --rm eviweb/php7-composer [Composer options]`.    
ie. `docker run --rm eviweb/php7-composer -V` displays the current Composer version

> Please note that by default the ansi mode is not enabled, you can force it by using the composer `--ansi` flag   
> ie. `docker run --rm eviweb/php7-composer --ansi [Composer options]`

### Change the entrypoint
Sometimes it is useful to bypass the default entrypoint, this can be done like this: `docker run --rm --entrypoint=entrypoint eviweb/php7-composer [Command]`.    
ie. `docker run --rm --entrypoint=entrypoint eviweb/php7-composer php` to run php directly from the container

> Please note that:
> * the `--entrypoint=entrypoint` where the value `entrypoint` permits to run the command using `su-exec`
> * xdebug is disabled by default, so to enable it in the example above, use the PHP CLI `-dzend_extension=xdebug.so` option.      
>   ie. docker run --rm --entrypoint=entrypoint eviweb/php7-composer php -dzend_extension=xdebug.so -r 'print_r(get_loaded_extensions());' displays the list of the loaded extensions

### Run as different user
By default the `composer` command is run by an internal user with the default `uid=9001`.     
To run the command with a different `uid`, use the docker environment option and set the variable `LOCAL_USER_UID` with the required value.    
ie. `docker run --rm -e LOCAL_USER_UID=1000 eviweb/php7-composer list` displays the list of composer commands.

> For more details, please refer to [Run as different user][base-image-runas]

Alpine Installed Packages
-------------------------
Please refer to [Alpine Packages][alpine-packages]

Current Composer Version
------------------------
Please refer to [Composer Version][composer-version]

> Please note that Docker images are tagged with the provided Composer version

Build
-----
To build this image, run `make` from the root of this project.

License
-------
This project is licensed under the terms of the [MIT License][license]

[alpine-packages]: https://github.com/eviweb/php7-composer/blob/master/alpine-packages.md
[base-image-runas]: https://github.com/eviweb/base-image/blob/master/README.md#run-as-different-user
[build-status]: https://travis-ci.org/eviweb/php7-composer.svg?branch=master
[composer-version]: https://github.com/eviweb/php7-composer/blob/master/composer-version
[last-tag]: https://img.shields.io/github/tag/eviweb/php7-composer.svg
[license]: https://github.com/eviweb/php7-composer/blob/master/LICENSE
[php7-dev]: https://github.com/eviweb/php7-dev
[repository]: https://travis-ci.org/eviweb/php7-composer
[su-exec]: https://github.com/ncopa/su-exec
[tags]: https://github.com/eviweb/php7-composer/tags