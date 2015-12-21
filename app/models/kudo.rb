class Kudo < ActiveRecord::Base
  belongs_to :coworker

  validates :value, numericality: {less_than_or_equal_to: 4, greater_than_or_equal_to: 2}
end
