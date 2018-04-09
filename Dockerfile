FROM ruby:slim 
RUN mkdir /app 
ADD . /app/ 
WORKDIR /app/ 
CMD ["ruby", "lib/main.rb"]
