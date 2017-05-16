build:
	docker-compose build test

cleanup:
	rm -f export
	rm -rf fixtures/app/.heroku
	rm -rf fixtures/app/.profile.d
	rm -rf fixtures/cache

detect: cleanup build
	docker-compose run test /home/buildpack/bin/detect /home/app

compile: cleanup build
	docker-compose run test /home/buildpack/bin/compile /home/app /home/cache /home/env
