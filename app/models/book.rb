class Book < ApplicationRecord
  validates_presence_of :title, :author, :publisher
  validates_uniqueness_of :title
  validates_numericality_of :year
  belongs_to :subject
end
