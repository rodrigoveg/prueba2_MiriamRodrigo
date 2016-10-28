class User < ActiveRecord::Base
  has_many :works, dependent: :delate_all

  validates :name, presence: true
end
