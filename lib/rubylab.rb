require "rubylab/version"

# "Prefixul claselor/metodelor noastre, aka namespace
module Rubylab
  
  # Clasa noastra de conectare la campfire
  class Campfire
    attr_reader :parola
  
    # Constructorul clasei noastre
    def initialize
        citeste_parola
        afiseaza_camerele
    end
    
    # Ceara utilizatorului parola de la campfire
    def citeste_parola
        puts 'Tasteaza parola, aka tokenul tau Campfire:'
        @parola = gets.strip
    end
    
    # Interogheaza API-ul si listeaza camerele la care avem access
    def afiseaza_camerele
        campfire = Tinder::Campfire.new('rubytribe2', :token => @parola)
        puts "Ai #{campfire.rooms.count} camere:"
        puts campfire.rooms.inspect
        #campfire.rooms.each do |camera|
        #    puts "\t #{camera} \n"
        #end
    end
  
  end # class
  
end
