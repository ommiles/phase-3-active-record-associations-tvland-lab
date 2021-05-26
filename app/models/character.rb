class Character < ActiveRecord::Base
    belongs_to :show
    belongs_to :actor

    def say_that_thing_you_say
        "#{self.name} always says: #{self.catchphrase}"
    end

    def actors_list
        self.show.characters.actors.map{|actor| actor.name}
    end
end