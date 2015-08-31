class Workout < ActiveRecord::Base

  has_may :exercise

  validates :workout, :mood, :length, :date, presence: :true

end
