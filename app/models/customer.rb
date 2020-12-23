class Customer < ApplicationRecord
    has_many :orders

    validates :first_name, presence: true
    validates :last_name, presence: true
    # validates :email, presence: true

    #attr_accessible :customer_attributes
end
