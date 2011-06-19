require 'rubygems'
require 'bundler'

#Bundler.requireを使用してGemfileに書いてあるgemを自動でrequireする
Bundler.require

require './app'
run Sinatra::Application  