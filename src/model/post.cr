require "pg"
require "crecto"

class Post < Crecto::Model
  schema "posts" do
    field :header, String
    field :text, String
  end
end