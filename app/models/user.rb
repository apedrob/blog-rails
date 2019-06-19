class User < ApplicationRecord
    validates :name, presence: true
    # validates :age, inclusion: { in: 18..200 }
    # validates :email, uniqueness: true
    
    has_many :posts
end