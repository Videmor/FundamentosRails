class Post < ActiveRecord::Base

  validates :titulo, presence: true, length: { minimum: 5, maximum: 30, message: 'minimo 5 y maximo 30' }
  validates :contenido, presence: true


end
