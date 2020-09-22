class Project < ApplicationRecord
    belongs_to :account

    validates :title, presence: true
    validates :description, presence: true
    validates :contact, presence: true
end