# == Schema Information
#
# Table name: post_subs
#
#  id      :bigint(8)        not null, primary key
#  post_id :integer          not null
#  sub_id  :integer          not null
#

class PostSub < ApplicationRecord

  belongs_to :post,
  foreign_key: :post_id,
  class_name: :Post
  # ,inverse_of: :post_subs

  belongs_to :sub,
  foreign_key: :sub_id,
  class_name: :Sub

end
