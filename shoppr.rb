require 'pry'
require 'httparty'

# bd7150e5387c083154bc8b35a9719362

results = HTTParty.get("https://api.gilt.com/v1/products?q=jeans&store=women&apikey=bd7150e5387c083154bc8b35a9719362")

def parse_gilt_results(x)
  gilt_results = {}
  # Product.create(:name => product["name"], :brand => product["brand"])
  x["products"].each do |product|
    gilt_results[product["name"]] = {"brand" => product["brand"],
      "description" => product["brand"],
      "sale_price" => product["skus"][0]["sale_price"],
      "size" => product["skus"][0]["attributes"][0]["value"],
      "image" => product["image_urls"]["1080x1440"][0]["url"]}
  end
  gilt_results
end

g = parse_gilt_results(results)
binding.pry