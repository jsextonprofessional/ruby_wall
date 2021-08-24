class User < ActiveRecord::Base
    has_many :messages
    has_many :comments, through: :messages
    validates :username, presence: true, length: { minimum: 5 }, uniqueness: true
end
