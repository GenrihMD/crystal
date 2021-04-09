# Lets's image I make a blog
require "kemal"
require "json"
require "pg"

module Blog
  VERSION = "0.1.0"

  get "/" do |ctx|
    ctx.response.content_type = "application/json"
    {name: "Лямин", age: 30}.to_json
  end

  Kemal.run
end
