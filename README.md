# Locale Buildpack

In order to reduce the stack image size, the [heroku 16](https://devcenter.heroku.com/articles/heroku-16-stack) stack doesn't include language packs by default.  
You may still want to use a custom language pack though.

## Installation

```
heroku buildpacks:add https://github.com/heroku/heroku-buildpack-locale
```

## Configuration

Create a `.locales` file at your app's root, with all the locales you need. Example:

```
de_DE
fr_FR
```

Commit that file and trigger a new build. The specified locales will be installed by the buildpack.

### Hacking

You can test this buildpack in a local docker container with the following command:

```
make compile
```

Then, to connect to the container:

```
docker-compose run test bash
```
