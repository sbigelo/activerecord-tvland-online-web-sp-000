class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show

  def say_that_thing_you_say
    characters.collect do |key|
      "#{key.name} always says: #{key.catchphrase}"
    end
  end


end
