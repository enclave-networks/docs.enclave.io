FROM enclavenetworks/jekyll:latest

# copy Jekyll website from ./web into the container
COPY ./ .

# run bundle install and then clear the directory
RUN bundle install && \
    rm -rf $WEB_DIR

ENTRYPOINT ["/usr/local/bin/bundle"]
CMD [ "exec", "jekyll serve --host 0.0.0.0 --port 8081" ]
