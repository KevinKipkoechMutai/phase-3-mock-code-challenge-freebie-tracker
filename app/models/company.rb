class Company < ActiveRecord::Base
    has_many :freebies

    def freebies
        self.freebies.collect do |freebie|
            "#{freebie.item_name}"
        end
    end

    def devs
        self.devs.collect do |dev|
            dev.name
        end
    end

    def print_details
        "#{self.dev.name} owns a #{self.freebie.item_name} from #{self.company.name}"
    end
end
