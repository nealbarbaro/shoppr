require 'pry'
require 'httparty'

# bd7150e5387c083154bc8b35a9719362

results = HTTParty.get("https://api.gilt.com/v1/products?q=jeans&store=women&apikey=bd7150e5387c083154bc8b35a9719362)

def parse_gilt_results(results)
  results["products"].each do |product|



  end

end