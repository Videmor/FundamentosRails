# encoding: utf-8

class User < ActiveRecord::Base
  belongs_to :user_type

  validates :name, presence: true, format: { with: /\A(.*)/i , message: 'Sólo se acepta nombre que inicien con la letra J o j' }
  validates :username, uniqueness: true

  scope :has_user_type, -> { where('user_type_id IS NOT NULL') }

  scope :actives, -> {where(active: true)}

end
