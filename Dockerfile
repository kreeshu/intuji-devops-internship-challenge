# Use the official PHP image with Apache
FROM php:8.2-apache

# Copy application files to the container's web root
COPY . /var/www/html/

# Set permissions for the web directory
RUN chown -R www-data:www-data /var/www/html && chmod -R 755 /var/www/html

# Expose port 80 for HTTP
EXPOSE 80

# Start Apache in the foreground
CMD ["apache2-foreground"]
