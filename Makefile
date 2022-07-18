up: 
	docker-compose up -d database wordpress nginx
down: 
	docker-compose down
wp-cli:
	docker-compose run --rm wordpress-cli $(cmd)
adminer-up:
	docker-compose up -d adminer
adminer-down:
	docker-compose rm -s -v adminer