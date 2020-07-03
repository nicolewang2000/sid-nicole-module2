require 'httparty'

class Google
    def self.search(keyword)
        url = "https://www.googleapis.com/books/v1/volumes?q=#{keyword}&maxResults=1&key=#{ENV["AIzaSyAgVvMhsu146bu4nO-b-QahKuqh9WwnAAg"]}"
        response = HTTParty.get(url)
        response.parsed_response
    end

    def self.title(keyword)
        search(keyword)["items"][0]["volumeInfo"]["title"]
    end
    
    def self.author(keyword)
        search(keyword)["items"][0]["volumeInfo"]["authors"].join(', ')
    end 

    def self.image(keyword)
        search(keyword)["items"][0]["volumeInfo"]["imageLinks"]["thumbnail"]
    end 

    def self.genre(keyword) #returns an array of genre
        search(keyword)["items"][0]["volumeInfo"]["categories"]
        end
    end 
end