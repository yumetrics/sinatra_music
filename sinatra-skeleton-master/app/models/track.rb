class Track < ActiveRecord::Base
  validates :title, presence: true, length: { maximum: 255 }
  validates :artist, presence: true, length: { maximum: 128 }
  validates :bpm, numericality: {greater_than_or_equal_to: 0}
end