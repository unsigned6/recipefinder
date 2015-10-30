class Recipe
  include HTTParty

  base_uri ENV["FOOD2FORK_SERVER_AND_PORT"] || 'http://food2fork.com/api'
  default_params key: ENV["FOOD2FORK_KEY"]
  format :json

  def self.for keyword
  	get("/search", query: { q: keyword})["recipes"]
  end
end