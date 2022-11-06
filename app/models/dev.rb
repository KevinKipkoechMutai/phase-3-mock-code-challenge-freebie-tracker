class Dev < ActiveRecord::Base
    has_many :freebies, through: :company

    def freebies
        freebie_collection = []
        self.freebies.collect do |freebie|
            freebie_collection << freebie.item_name
        end
        freebie_collection
    end

    def companies
        companies_collection = []
        self.companies.collect do |company|
            companies_collection << company.name
        end
        companies_collection
    end

    def give_freebie(dev, item_name, value)
        dev = Freebie.create(name: item_name, )
    end
end
