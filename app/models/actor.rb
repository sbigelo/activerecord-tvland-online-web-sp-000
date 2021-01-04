class Actor < ActiveRecord::Base
  has_many :shows, through: :characters

end
