class Chart

  attr_accessor :name, :artist, :rank, :billboard

  def initialize(chart_hash)
  	@billboard = chart_hash.map do |song|
  	  Song.new(song[:name], song[:artist], song[:rank])
  	end
  end


end