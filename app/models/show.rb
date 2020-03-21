class Show < ActiveRecord::Base
  belongs_to :network
  has_many :characters 
  has_many :actors, through: :characters
  
  def actors_list
    #returns array off full names of actor associated with a show
    self.actors.collect |t|
      "#{t.first_name} {t.last_name}"
    end
  end
end

