# require 'scripture_lookup'
require 'nokogiri'
require 'open-uri'

class PagesController < ApplicationController
  def home
    version = "NIV" 
    passage   = "Romans 12"
    
    @text = scripture(passage, version)
    @doc =  @data ||= Nokogiri::HTML(open("https://www.biblegateway.com/passage/?search=#{passage}&version=#{version}"))

    # @doc =  @data ||= Nokogiri::HTML(open("https://www.biblegateway.com/passage/?search=psalm+1%3A1&version=NKJV"))
  end

  def about
  end

  def contact
  end

  def terms
  end

  def privacy
  end

  def faqs
  end

  def help
  end

  private

#    def scripture
#      @scripture_scrape = ScriptureScraper.new("Psalm 1", "NKJV")
#      text = @scripture_scrape.get_class_items('.poetry')
      
#      return text.css('.text').text

#    end

end
