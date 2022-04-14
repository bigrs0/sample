FROM jekyll/jekyll:latest

RUN echo "source 'https://rubygems.org'" > Gemfile \
  && echo "gem 'github-pages', group: :jekyll_plugins" >> Gemfile \
  && echo "gem 'webrick'" >> Gemfile \
  && bundle install \
  && rm -f Gemfile Gemfile.lock

# RUN sed -i 1i"repository: xsaori/xsaori.github.io" _config.yml \
# RUN gem install bundler

# COPY ./doc /srv/src

# USER jekyll
EXPOSE 4000

ENTRYPOINT [""]
CMD bundle exec jekyll serve --host 0.0.0.0 -s /srv/src -d /srv/jekyll --verbose --trace --livereload
