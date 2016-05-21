FROM gcr.io/google_appengine/ruby

# Install 2.3.0 if not already preinstalled by the base image
RUN cd /rbenv/plugins/ruby-build && \
    git pull && \
    rbenv install -s 2.3.0 && \
    rbenv global 2.3.0 && \
    gem install -q --no-rdoc --no-ri bundler --version 1.11.2
ENV RBENV_VERSION 2.3.0

RUN apt-get update && apt-get install imagemagick -y

# Copy the application files.
COPY . /app/

# Install required gems if Gemfile.lock is present.
RUN if test -f Gemfile.lock; then \
    bundle install --deployment && rbenv rehash; \
    fi

# Temporary. Will be moved to base image later.
ENV RACK_ENV=production \
    RAILS_ENV=production \
    RAILS_SERVE_STATIC_FILES=true

# Run asset pipeline if we're in a Rails app.
RUN if test -d app/assets -a -f config/application.rb; then \
    bundle exec rake assets:precompile; \
    fi

# BUG: Reset entrypoint to override base image.
ENTRYPOINT []

# Start application on port $PORT.
CMD bundle exec rackup -p 8080 -E production config.ru
