class ClosureComment < ActiveRecord::Base
  attr_accessible :comments

  has_many :ancestor_paths,  class_name: 'CommentPath', foreign_key: 'descendant_id'
  has_many :descendant_paths,  class_name: 'CommentPath', foreign_key: 'ancestor_id'

  has_many :ancestors, class_name: 'CommentPath', through: :ancestor_paths, source: 'ancestor'
  has_many :descendants, class_name: 'CommentPath', through: :descendant_paths, source: 'descendant'

  validates_presence_of :comments
end