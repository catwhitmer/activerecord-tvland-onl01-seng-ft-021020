class Show < ActiveRecord::Base
  belongs_to :network
  has_many :characters 
  has_many :actors, through: :characters
  
  def actors_list
    #returns array off full names of actor associated with a show
    self.characters.map do |actors|
      "#{actors.first_name} #{actors.last_name}"
    end
  end
end



    
    
    
    #show.characters
    
    #character.actor
    
    #actor.first_name
    #actor.last_name
    
   #self.characters.map do |character|
      #character.actor
    #end