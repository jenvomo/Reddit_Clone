# == Schema Information
#
# Table name: comments
#
#  id                :bigint(8)        not null, primary key
#  body              :string           not null
#  parent_comment_id :integer
#  post_id           :integer          not null
#  author_id         :integer          not null
#

class Comment < ApplicationRecord
  validates :body, presence: true

  belongs_to :parent_comment,
  foreign_key: :parent_comment_id,
  class_name: :Comment,
  optional: true

  has_many :child_comments,
  foreign_key: :parent_comment_id,
  class_name: :Comment

  belongs_to :post

  belongs_to :author,
  foreign_key: :author_id,
  class_name: :User


end
