FROM php:8.1-apache

# 启用必要的PHP扩展
RUN docker-php-ext-install mysqli pdo pdo_mysql

# 复制项目文件到Apache根目录
COPY . /var/www/html/

# 设置权限
RUN chown -R www-data:www-data /var/www/html \
    && chmod -R 755 /var/www/html

# 暴露端口
EXPOSE 8000
