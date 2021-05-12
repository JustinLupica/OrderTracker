class Order < ApplicationRecord
    has_many :order_products
    has_many :products, through: :order_products
    belongs_to :customer

    accepts_nested_attributes_for :order_products
    accepts_nested_attributes_for :customer

    validates :pickup_date, presence: true

    def self.with_future_date
        where("pickup_date >= ?", Date.today)
    end

    def self.with_past_date
        where("pickup_date <= ?", Date.today)
    end
end