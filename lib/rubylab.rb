require 'rubylab/version'

# "Prefixul claselor/metodelor noastre, aka namespace
module Rubylab

require 'tinder'
  
  # Clasa noastra de conectare la campfire
  class Campfire
    attr_reader :parola
  
    # Constructorul clasei noastre
    def initialize
        citeste_parola
        afiseaza_camerele
    end
    
    # Cere utilizatorului parola de la campfire
    def citeste_parola
        puts 'Tasteaza parola, aka tokenul tau Campfire:'
        @parola = gets.strip
    end
    
    # Cere utilizatorului un mesaj
    # @return [String], mesajul citit
    def citeste_mesajul
        puts 'Scrie un mesaj:'
        return gets.strip
    end
    
    # Interogheaza API-ul si listeaza camerele la care avem access
    # @param [String] mesaj, ce sa se scrie la camera noastra
    def afiseaza_camerele
        campfire = Tinder::Campfire.new('rubytribe2', :token => @parola)
        puts "Ai #{campfire.rooms.count} camere:"
        
        campfire.rooms.each do |camera|
            puts "\t #{camera.name} \n"
            if (mesaj = citeste_mesajul) != ''
                camera.speak(mesaj)
                puts "\t\t Mesaj trimis.\n"
            end
        end
    end
  
  end # class
  
end
