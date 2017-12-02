class BestBuy
    def initialize
    end
    
    def search(category_id='abcat0901000')
        key = ENV['BEST_BUY_KEY']
        attributes = %w{salePrice name sku}

        url = "https://api.bestbuy.com/v1/products((categoryPath.id=#{category_id}))?apiKey=#{key}&sort=salePrice.asc&show=#{attributes.join(',')}&format=json"
        response = HTTParty.get(url)
        if response
            results = JSON.parse response.body, symbolize_names: true
            results[:products].each do |item|
                # product = Product.create(name: item[:name], sku: item[:sku])
            end
        else 
            puts "Failed to search BestBuy"
        end
        
    end
end
