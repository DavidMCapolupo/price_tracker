require 'HTTParty'



class BestBuy
def initialize 
  
  def get_details(id)
    HTTParty.get(base_uri, :query => {:DID => id, :DeveloperKey => devKey})
    @json_hash = api_response.parsed_response
    return @json_hash
  end
end
