class Inventory < ActiveRecord::Base
  belongs_to :category
  has_one :work, dependent: :delate_all
  validate :valid_size

  scope :tam_x, ->(x){where(:size =>x)}
  

  def valid_size
    if self.size.nil? || self.size <= 0
      errors.add(:size, "it must be greather than 0")
    end
  end

  # validates :size, numericality: { greater_than: 0 }
end
