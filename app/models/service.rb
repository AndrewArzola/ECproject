class Service < ApplicationRecord
  belongs_to :house
  validates :content, presence: true
  has_one_attached :picture

  def has_pic(condtion)
    if condtion
    "\u2705"
    else
    "\u274C"
    end
  end
end
