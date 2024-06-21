# Use the official MySQL image
FROM mysql:5.7

# Set environment variables for MySQL
# These can be adjusted later for secure deployment
ENV MYSQL_DATABASE=mydatabase
ENV MYSQL_ROOT_PASSWORD=rootpassword

# Copy the SQL file to the Docker image to initialize the database
COPY omartill.sql /docker-entrypoint-initdb.d/

# Expose the default MySQL port
EXPOSE 3306
