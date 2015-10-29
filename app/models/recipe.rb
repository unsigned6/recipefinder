class Recipe
  include HTTParty

  base_uri 'http://food2fork.com/api'
  default_params sort: "r", key: ENV["FOOD2FORK_KEY"]
  format :json

  def self.for keyword
  	get("/search", query: { query: keyword})["recipes"]
  end
end