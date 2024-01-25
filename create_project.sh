#!/bin/bash

# Check if an argument is provided
if [ $# -eq 0 ]
then
    echo "No arguments supplied. Please provide a directory name."
    exit 1
fi

# Use the first argument as the app directory
APP_DIR=$1

# Create the main directory
mkdir -p $APP_DIR

# Create subdirectories
mkdir -p $APP_DIR/api/auth
mkdir -p $APP_DIR/api/users
mkdir -p $APP_DIR/public/css
mkdir -p $APP_DIR/public/js
mkdir -p $APP_DIR/public/images
mkdir -p $APP_DIR/views
mkdir -p $APP_DIR/config

# Create PHP files for API and auth
touch $APP_DIR/api/auth/login.php
touch $APP_DIR/api/auth/logout.php
touch $APP_DIR/api/users/getUsers.php
touch $APP_DIR/api/users/addUser.php
touch $APP_DIR/api/users/updateUser.php
touch $APP_DIR/api/users/deleteUser.php

# Create frontend files
touch $APP_DIR/public/index.php
touch $APP_DIR/views/dashboard.php
touch $APP_DIR/views/login.php

# Create config and .htaccess files
touch $APP_DIR/config/db.php
touch $APP_DIR/.htaccess

# Create a README file
echo "Your App Description" > $APP_DIR/README.md

echo "Project structure created in $APP_DIR"

