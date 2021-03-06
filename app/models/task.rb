class Task < ActiveRecord::Base
  belongs_to :owner
  belongs_to :project
  
  validates_presence_of :title, :description, :owner_id, :project_id
  validates_numericality_of :progress, :only_integer => true, :allow_nil => true
  validates_inclusion_of :status, :in => %w(open closed)
  validates_inclusion_of :priority, :in => %w(normal low high)
end
