class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # private

    def scripture passage, version
      @scripture_scrape = ScriptureScraper.new("John 3", "NKJV") #("Psalm 1", "NKJV") #(passage ||= "Romans 12", version ||= "NKJV")
      text = @scripture_scrape.get_class_items('.poetry')
      
      # parse all the result set into a hash or array
      # and return it.
      # scripture_set = { chapternum: text.css('.text').text,
      #   version: text.css('.').text, passage: text.css('.text').text }
      # return scripture_set

      return text.css('.text').text

    end
end
