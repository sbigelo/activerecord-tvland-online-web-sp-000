class Actor < ActiveRecord::Base
  has_many :characters, through: :characters

end
