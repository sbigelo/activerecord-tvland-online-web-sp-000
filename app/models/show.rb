class Show < ActiveRecord::Base
  has_many shows:, through: :characters

  def actors_list

  end


end
