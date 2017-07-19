# Locale Buildpack

In order to reduce the stack image size, the [heroku 16](https://devcenter.heroku.com/articles/heroku-16-stack) stack doesn't include language packs by default.  
You may still want to use a custom language pack though.

This buildpack will use the `$LANG` environment variable, install the appropriate language pack and configure it on your app.

## Multiple Locales

You can request the installation of multiple locales by creating a `.locales` file and setting every locale you need, one per line.

## Installation

```
heroku buildpacks:add https://github.com/heroku/heroku-buildpack-locale
```

### Hacking

You can test this buildpack in a local docker container with the following command:

```
make compile
```

Then, to connect to the container:

```
docker-compose run test bash
```
