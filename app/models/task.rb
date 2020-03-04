class Task < ApplicationRecord
  before_validation :set_namelsee_name
    
  validates :name, presence: true
  validates :name, length: { maximum: 30 }
  validate :validate_name_not_including_comma

  private

  def validate_name_not_including_comma
    errors.add(:name, 'にカンマを含めることはできません') if name&.include?(',')
  end

  def set_namelsee_name
    self.name = 'John Doe' if name.blank?
  end
end
