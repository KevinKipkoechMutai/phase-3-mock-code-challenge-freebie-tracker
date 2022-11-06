class Freebie < ActiveRecord::Base
    belongs_to :company

    def dev
        self.dev.name
    end

    def company
        self.company.name
    end
end
