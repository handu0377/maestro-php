# ʹ�ùٷ� PHP 8.0 ������Ϊ����
FROM php:8.0-apache

# ��װϵͳ����
RUN apt-get update && apt-get install -y \ 
    libzip-dev \ 
    unzip \ 
    && docker-php-ext-install zip pdo_mysql

# ���� Apache ��дģ��
RUN a2enmod rewrite

# ���ĵ���Ŀ¼����Ϊ Laravel �Ĺ���Ŀ¼
ENV APACHE_DOCUMENT_ROOT /var/www/html/public

# ��Ӧ�ó����ļ����Ƶ�����
COPY��/var/www/html

# ���ù���Ŀ¼
WORKDIR /var/www/html