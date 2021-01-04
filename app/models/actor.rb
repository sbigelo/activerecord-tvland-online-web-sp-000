class Actor < ActiveRecord::Base
  has_many :shows, through: :characters
  has_many :characters

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    characters.collect do |key|
      "#{key.name} - #{key.show.name}"
    end
  end

end
