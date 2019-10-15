class Toy < ApplicationRecord
    has_one :user
    has_one :manufacturer
end