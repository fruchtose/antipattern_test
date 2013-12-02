class CommentPath < ActiveRecord::Base
  attr_accessible :ancestor, :descendant

  belongs_to :ancestor, class_name: 'ClosureComment'
  belongs_to :descendant, class_name: 'ClosureComment'
  belongs_to :ancestor_nodes, class_name: 'CommentPath', primary_key: 'descendant_id', foreign_key: 'ancestor_id'
  belongs_to :descendant_nodes, class_name: 'CommentPath', primary_key: 'ancestor_id', foreign_key: 'descendant_id'

  validates_presence_of :ancestor, :descendant
  validates_associated :ancestor, :descendant
end
