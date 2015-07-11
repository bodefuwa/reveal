class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private

    def scripture #(passage, version)
      @scripture_scrape = ScriptureScraper.new(passage ||= "Romans 12", version ||= "NKJV")
      text = @scripture_scrape.get_class_items('.poetry')
      
      return text.css('.text').text

    end
end
