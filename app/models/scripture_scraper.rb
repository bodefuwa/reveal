require 'nokogiri'
require 'open-uri'

class ScriptureScraper
  
  attr_reader :reference, :version # :url, :data

  # def initialize(reference, version)
  def initialize reference, version
  	# @url = url
  	@url = resource(reference, version)
  end

  def get_class_items(selector)
  	data.css(selector)
  end

  def data
  	@data ||= Nokogiri::HTML(open(@url))

  end

  def resource reference, version
    url = "https://www.biblegateway.com/passage/?search=#{reference}&version=#{version.to_s}"
   
    return url
  end

end