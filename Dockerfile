# 使用官方 PHP 8.0 镜像作为基础
FROM php:8.0-apache

# 安装系统依赖
RUN apt-get update && apt-get install -y \ 
    libzip-dev \ 
    unzip \ 
    && docker-php-ext-install zip pdo_mysql

# 启用 Apache 重写模块
RUN a2enmod rewrite

# 将文档根目录设置为 Laravel 的公共目录
ENV APACHE_DOCUMENT_ROOT /var/www/html/public

# 将应用程序文件复制到容器
COPY。/var/www/html

# 设置工作目录
WORKDIR /var/www/html