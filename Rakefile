require 'rubygems'
require 'rake'
require 'echoe'

Echoe.new('edgeville', '0.1.0') do |p|
  p.description = "Gem for accessing player and GE info from the popular MMORPG, Runescape."
  p.url = "http://github.com/firblitz/edgeville"
  p.author = "Tamal White"
  p.email = "tamal@firblitz.com"
  p.ignore_pattern = ["tmp/*", "script/*"]
  p.development_dependencies = []
end

Dir["#{File.dirname(__FILE__)}/tasks/*.rake"].sort.each { |ext| load ext }
