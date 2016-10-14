Docker - Composer image
=======================
A Docker Composer image based on [eviweb/php7-dev][php7-dev] with [su-exec][su-exec].

##### Health status
[![Build Status][build-status]][repository]
[![Github - Last tag][last-tag]][tags]

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
[php7-dev]: https://github.com/eviweb/php7-dev/blob/master/README.md#run-as-different-user
[build-status]: https://travis-ci.org/eviweb/php7-composer.svg?branch=master
[last-tag]: https://img.shields.io/github/tag/eviweb/php7-composer.svg
[license]: https://github.com/eviweb/php7-composer/blob/master/LICENSE
[composer-version]: https://github.com/eviweb/php7-composer/blob/master/composer-version
[repository]: https://travis-ci.org/eviweb/php7-composer
[su-exec]: https://github.com/ncopa/su-exec
[tags]: https://github.com/eviweb/php7-composer/tags