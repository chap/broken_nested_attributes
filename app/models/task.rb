class Task < ActiveRecord::Base
  belongs_to :project
  has_many :assignments
  accepts_nested_attributes_for :assignments
end
