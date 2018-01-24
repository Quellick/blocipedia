class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  has_many :wikis, dependent: :destroy
  has_many :collaborators
  has_many :collaborate_wikis, through: :collaborators, source: :wiki

  before_save { self.role ||= :standard }

  enum role: [:standard, :premium, :admin]
end