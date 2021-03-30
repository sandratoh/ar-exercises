class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { greater_than_or_equal_to: 0 }
  validate :carry_at_least_mens_or_womens_apparel

  def carry_at_least_mens_or_womens_apparel
    if mens_apparel.nil? && womens_apparel.nil?
      errors.add(:mens_apparel, "must be true if store doesn't carry women's apparel")
      errors.add(:womens_apparel, "must be true if store doesn't carry men's apparel")
    end
  end
end
