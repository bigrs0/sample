FROM jekyll/jekyll:3

WORKDIR /home/jekyll
# RUN gem update --system
RUN echo "source 'https://rubygems.org'" > Gemfile \
  && echo "gem 'github-pages', group: :jekyll_plugins" >> Gemfile 
# && echo "gem 'webrick'" >> Gemfile
# RUN bundle add webrick
RUN bundle install
# RUN bundle update
# RUN rm -f Gemfile Gemfile.lock

# COPY ./doc /srv/src
RUN mkdir -p /srv/src/_site && mkdir -p /srv/jekyll/_site

# USER jekyll
# EXPOSE 35729
# EXPOSE 4000

ENTRYPOINT [""]
