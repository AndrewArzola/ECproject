class House < ApplicationRecord
    has_many :punches, dependent: :destroy
    accepts_nested_attributes_for :punches, 
        allow_destroy: true

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