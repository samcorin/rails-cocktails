require "open-uri"
require "nokogiri"

def scrape_craiglist_antiques(city)
  product = "antiques"
  url = "https://#{city}.craigslist.jp/search/sss?query=#{product}&sort=rel"
  list = []
  doc = Nokogiri::HTML(open(url))

  doc.search('.result-title').each_with_index do |element|
    list << element.text.strip
  end
  puts list
end

def scrape_cocktail_site(cocktail)
  product = "antiques"
  url = "https://#{city}.craigslist.jp/search/sss?query=#{product}&sort=rel"
  list = []
  doc = Nokogiri::HTML(open(url))

  doc.search('.result-title').each_with_index do |element|
    list << element.text.strip
  end
  puts list
end

# p scrape_craiglist_antiques("Tokyo")
