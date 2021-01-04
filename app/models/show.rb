class Show < ActiveRecord::Base
  has_many :actors, through: :characters
  belongs_to :network
  has_many :characters

  def actors_list
    self.actors.map{|key| key.full_name}
  end


end
