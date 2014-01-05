class Recipe < ActiveRecord::Base
  belongs_to :user
  has_and_belongs_to_many :categories

  validates :name, :instructions, :user_id, presence: true
  validate :has_at_least_one_category

  private

  def has_at_least_one_category
    errors.add(:base, "A recipe requires at least one category.") if self.categories.blank?
  end
end