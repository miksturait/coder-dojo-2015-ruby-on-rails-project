class Coworker < ActiveRecord::Base
  has_many :kudos

  scope :name_like, -> (name) {
    where(["first_name like :pattern OR last_name like :pattern", {pattern: "%#{name}%"}]) unless name.blank?
  }
end
