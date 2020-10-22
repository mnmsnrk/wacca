class Resume < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :category
  belongs_to_active_hash :prefecture

  belongs_to :speaker
  has_one_attached :image
end
