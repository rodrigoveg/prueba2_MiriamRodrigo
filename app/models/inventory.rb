class Inventory < ActiveRecord::Base
  after_destroy :msgDelete

  belongs_to :category
  has_one :work, dependent: :delete
  validate :valid_size

  scope :tam_x, ->(x){where(:size =>x)}


  def valid_size
    if self.size.nil? || self.size <= 0
      errors.add(:size, "it must be greather than 0")
    end
  end

def msgDelete
  if
    Log.create(description: "La pieza con serial #{self.serial} ha sido borrado")
  end
end

  # validates :size, numericality: { greater_than: 0 }
end
