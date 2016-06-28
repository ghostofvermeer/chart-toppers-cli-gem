require 'nokogiri'
require 'open-uri'

class Scraper

  attr_accessor :billboard, :indie_shuffle, :hypem, :shazam, :bbc_radio_one

  def self.scrape_billboard
    chart = Nokogiri::HTML(open('http://www.billboard.com/charts/hot-100'))
    @billboard = chart.css('article').map do |row|
      {:chart_rank => row.css('.chart-row__current-week').text.strip,
       :artist => row.css('.chart-row__artist').text.strip,
       :song => row.css('.chart-row__song').text.strip
      }
    end

  end

  def self.scrape_indie_shuffle
  	
  end

  def self.scrape_hypem
  	
  end

  def self.scrape_shazam
  	
  end

  def self.scrape_bbc_radio_one
  	
  end


end