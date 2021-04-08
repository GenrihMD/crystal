# Lets's image I make a blog
require "kemal"
require "json"
require "pg"
require "crecto"

module Blog
  VERSION = "0.1.0"

  module Repo
    extend Crecto::Repo

    config do |conf|
      conf.adapter = Crecto::Adapters::Postgres
      conf.hostname = "localhost"
      conf.database = "laam"
    end
  end

  get "/" do |ctx|
    ctx.response.content_type = "application/json"
    {name: "Лямин", age: 30}.to_json
  end

  Kemal.run
end
