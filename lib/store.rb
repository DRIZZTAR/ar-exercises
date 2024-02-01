class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true, greater_than: 0 }
  validate :must_carry_apparel

  private

  def must_carry_apparel
    if !mens_apparel && !womens_apparel
      errors.add(:base, "Store must carry at least one of mens or womens apparel")
    end
  end
end

