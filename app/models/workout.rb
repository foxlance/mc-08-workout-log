class Workout < ActiveRecord::Base

  validates :workout, :mood, :length, :date, presence: :true

end
