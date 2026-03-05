# Stage 1 - Builder
FROM php:8.2-cli AS builder
WORKDIR /app
COPY . .

# Stage 2 - Production
FROM php:8.2-apache
WORKDIR /var/www/html
COPY --from=builder /app /var/www/html
