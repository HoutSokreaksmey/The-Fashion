<p align="center"><img src="https://res.cloudinary.com/dtfbvvkyp/image/upload/v1566331377/laravel-logolockup-cmyk-red.svg" width="400"></p>

<p align="center">
<a href="https://travis-ci.org/laravel/framework"><img src="https://travis-ci.org/laravel/framework.svg" alt="Build Status"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/d/total.svg" alt="Total Downloads"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/v/stable.svg" alt="Latest Stable Version"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/license.svg" alt="License"></a>
</p>

# Getting started

## Learning Laravel

Please check the official laravel installation guide for server requirements before you start. [Official Documentation](https://laravel.com/docs/7.x/installation#installing-laravel).

Clone the repository

git clone git@github.com/HoutSokreaksmey/The-Fashion.git
Switch to the repo folder

cd The-Fashion
Install all the dependencies using composer

composer install
Copy the example env file and make the required configuration changes in the .env file

cp .env.example .env

Generate a new application key
php artisan key:generate

Run the database migrations (Set the database connection in .env before migrating)

php artisan migrate
Start the local development server

php artisan serve
You can now access the server at http://localhost:8000

## Database and Database seeding

Populate the database with seed data with relationships which includes name, email, password favorites and follows. This can help you to quickly start testing the User Management  

Open the DatabaseSeeder and set the property values as per your requirement
C:\Users\USER\Desktop\blog\database\seeds\DatabaseSeeder.php

Run the database seeder and you're done

php artisan db:seed

Note : It's recommended to have a clean database before seeding. You can refresh your migrations at any point to clean the database by running the following command

php artisan migrate:refresh

If you import DB from project which has filename db_test.sql don't follow the step above. You just import filename db_test.sql to MySQL 

php artisan config:clear
php artisan migrate

## Other 
Sitemap backend and frontend input in report which input in project filename SlideAndReport.