class ApplicationController < ActionController::Base
  before_action :authenticate_user!
end

# Rails image_url helper requires you setup your host to generate the absolute url needed to load your images from the external world (Facebook, Twitter, ...)
# source: https://www.lewagon.com/blog/setup-meta-tags-rails
# activate this when domain is set up:

# def default_url_options
#   { host: ENV["DOMAIN"] || "localhost:3000" }
# end
