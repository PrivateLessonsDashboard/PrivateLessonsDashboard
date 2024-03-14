#!/bin/sh

run_dev() {
  docker-compose up -d &&
    docker exec pld-laravel-1 php artisan config:clear --quiet &&
    docker exec pld-laravel-1 php artisan cache:clear --quiet &&
    docker exec pld-laravel-1 php artisan route:clear --quiet &&
    docker exec pld-laravel-1 php artisan migrate:fresh --seed --quiet
}

stop_dev() {
  docker-compose stop
}
