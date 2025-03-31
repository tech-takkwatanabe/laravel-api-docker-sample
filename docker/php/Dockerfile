FROM php:8.4-fpm-alpine

# 必要なパッケージをインストール
RUN apk --no-cache add \
    bash \
    git \
    unzip \
    curl \
    libpng \
    libpng-dev \
    libjpeg-turbo \
    libjpeg-turbo-dev \
    freetype \
    freetype-dev \
    icu-dev \
    postgresql-dev \
    oniguruma-dev \
    mysql-client \
    && docker-php-ext-configure gd \
        --with-freetype \
        --with-jpeg \
    && docker-php-ext-install \
        pdo \
        pdo_mysql \
        pdo_pgsql \
        mbstring \
        exif \
        gd \
        intl \
        opcache \
        bcmath

# Composerのインストール
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Laravelの設定（ワーキングディレクトリを `apps/api` に）
WORKDIR /var/www

# Laravel用のユーザーを作成
RUN addgroup -g 1000 laravel && adduser -G laravel -u 1000 -D laravel

# 権限の設定
RUN chown -R laravel:laravel /var/www

USER laravel
CMD ["php-fpm"]
