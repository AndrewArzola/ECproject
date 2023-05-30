class House < ApplicationRecord
    validates :address, :city, :zip, presence: true
    has_many_attached :plans
    has_one_attached :cabinet
    has_many :trims, dependent: :destroy
    has_many :roughs, dependent: :destroy
    has_many :services, dependent: :destroy

    def has_pic(condtion)
        if condtion
        "\u2705"
        else
        "\u274C"
        end
    end
end