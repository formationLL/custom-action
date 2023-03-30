FROM php:8.2-cli

# Install PHPUnit
RUN wget https://phar.phpunit.de/phpunit-9.phar && \
    chmod +x phpunit-9.phar && \
    mv phpunit-9.phar /usr/local/bin/phpunit

# Set the working directory to the project root
WORKDIR /app

# Copy the project files into the container
COPY . /app

# Define the default command to run when the container starts
CMD ["phpunit"]