class Recipe
  include HTTParty

  base_uri ENV["FOOD2FORK_SERVER_AND_PORT"] || 'http://food2fork.com/api'
  default_params key: ENV["FOOD2FORK_KEY"] || 'c462426be71ffcf830437c8779a34f59'
  format :json

  def self.for keyword
  	get("/search", query: { q: keyword})["recipes"]
  end
end