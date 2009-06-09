require 'open-uri'
require 'hpricot'

module Edgeville
  class Player
    attr_reader :name
    SKILL_LIST = %w(Overall Attack Defence Strength Hitpoints Ranged Prayer Magic Cooking Woodcutting Fletching Fishing Firemaking Crafting Smithing Mining Herblore Agility Thieving Slayer Farming Runecraft Construction Hunter Summoning)
        
    def initialize(name)
      @name = name
    end
    
    def clean_name
      @name.gsub(/[^\w]/,"_").downcase
    end
    
    def skills
      stats = {}
      SKILL_LIST.each_with_index do |skill,i|
        line = highscores[i].split(",")
        stats[skill.downcase.to_sym] = { :rank => line[0].to_i, :level => line[1].to_i, :xp => line[2].to_i }
      end
      stats
    end
    
    private
    
    def highscores
      @highscores ||= open("http://hiscore.runescape.com/index_lite.ws?player=#{clean_name}").collect { |a| a.strip }
    end
    
  end
  
  class GEItem
    attr_reader :obj
    
    def initialize(obj)
      @obj = obj
    end
    
    def name
      doc.at(".main_ge_page .subsectionHeader").inner_text.strip
    end
    
    def examine
      additional[/^.*\.$/]
    end
    
    def min
      additional[/^Minimum price: (.*)$/, 1].delete(',').to_i
    end
    
    def market
      additional[/^Market price: (.*)$/, 1].delete(',').to_i
    end
    
    def max
      additional[/^Maximum price: (.*)$/, 1].delete(',').to_i
    end
    
    def seven_day_change
      additional[/^7 Days: (.*)$/, 1]
    end
    
    def thirty_day_change
      additional[/^30 Days: (.*)$/, 1]      
    end
    
    private
    
    def doc
      @doc ||= Hpricot(open("http://itemdb-rs.runescape.com/viewitem.ws?obj=#{obj}"))
    end
    
    def additional
      @additional ||= doc.at("#item_additional").inner_text.strip
    end
  end
end