init:
	mkdir -p .certificate
	mkcert -key-file .certificate/localhost-key.pem -cert-file .certificate/localhost-cert.pem localhost 127.0.0.1 ::1
# if not exist .env copy .env.example .env  # for Windows
	[ -f .env ] || cp .env.example .env
	docker compose build
	docker compose up -d

initLaravel:
	docker compose exec php bash -c "php artisan key:generate"
	docker compose exec php bash -c "php artisan migrate"

# install_laravel:
# 	docker compose exec php bash -c "composer create-project --prefer-dist laravel/laravel . || true"

rebuild:
	docker compose down
	docker compose build
	docker compose up -d

up:
	docker compose up -d

stop:
	docker compose stop

bash:
	docker compose exec php bash

ps: 
	docker compose ps

cacheClearConfig:
	docker compose exec php php artisan config:clear

cacheClearAll:
	docker compose exec php php artisan cache:clear
	docker compose exec php php artisan config:clear
	docker compose exec php php artisan route:clear
	docker compose exec php php artisan view:clear
