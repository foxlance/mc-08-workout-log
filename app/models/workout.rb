class Workout < ActiveRecord::Base

  has_many :exercise

  validates :workout, :mood, :length, :date, presence: :true

end
