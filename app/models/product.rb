class Product < ApplicationRecord
    has_many :lineitems

    before_destroy :make_sure_no_line_items_in_any_cart
    validates(:name, :description, :image, presence: true)
    validates(:price, numericality: {greater_than_or_equal_to: 0.01})
    validates :image, allow_blank: true, format: {with: %r{\.(gif|png|jpg)\Z}i, message: "must be GIF,JPG,PNG images"}

    def make_sure_no_line_items_in_any_cart
        if self.lineitems.empty?
            return true
        else
            errors.add(:base, "line items present")
            return false
        end
    end
end
