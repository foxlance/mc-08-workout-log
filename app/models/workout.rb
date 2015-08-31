class Workout < ActiveRecord::Base

  has_many :exercise, dependent: :destroy

  validates :workout, :mood, :length, :date, presence: :true

end
