# Usa una imagen oficial de PHP con Apache
FROM php:8.2-apache

# Copia SOLO los archivos necesarios para producción
COPY index.php /var/www/html/
COPY dist/output.css /var/www/html/dist/

# Habilita mod_rewrite de Apache (si necesitas)
RUN a2enmod rewrite

# Puerto expuesto
EXPOSE 90