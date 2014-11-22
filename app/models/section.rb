class Section < ActiveRecord::Base
  belongs_to :course
  has_many :lessons
  scope :positions, -> { order(:position) }
end
