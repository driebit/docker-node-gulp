driebit/node-gulp
=================

Run a [Gulp](http://gulpjs.com/) task in a Docker container.

Usage
-----

Run Gulp against a Gulpfile.js in the current directory:

```bash
$ docker run -it -v $(pwd):/app driebit/node-gulp
```
