# Use a Ruby 2.7 base image
FROM ruby:2.7

# Install Node.js and npm
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash - \
    && apt-get update -y \
    && apt-get install -y nodejs \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Install serverless framework
RUN npm install -g serverless

# Set the working directory
WORKDIR /app

# Copy the application code and Gemfile
COPY . .

# Install Ruby dependencies
RUN bundle install
RUN serverless plugin install -n serverless-offline
