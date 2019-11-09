class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  has_many :pieces
  has_many :games
  has_many :conversations, :foreign_key => :sender_id

  after_create :create_default_conversation
end
