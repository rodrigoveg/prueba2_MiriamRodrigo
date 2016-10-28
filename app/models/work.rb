class Work < ActiveRecord::Base
  belongs_to :user
  belongs_to :inventory


  validate :validates_user

  scope :ultimos_5, ->{last(5)}
  scope :no_item, -> {where(:inventory => nil)}

  def validates_user
    if self.user_id.nil?
      errors.add(:user_id, 'is required')
    else
      if user.where(:id => self.user_id).size == 0
        errors.add(:user_id, 'must exist')
      end
    end
  end
end
