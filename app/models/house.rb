class House < ApplicationRecord
    # validates :paid, inclusion: [true, false]

    def plans_show(condtion)
        if condtion
        "\u2705"
        else
        "\u274C"
        end
    end
end