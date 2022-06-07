class House < ApplicationRecord
    validates :address, :city, :zip, presence: true
    has_one_attached :plans
    has_one_attached :cabinet

    def plans_show(condtion)
        if condtion
        "\u2705"
        else
        "\u274C"
        end
    end
end