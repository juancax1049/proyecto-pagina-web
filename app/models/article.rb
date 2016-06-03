class Article < ActiveRecord::Base
belongs_to :user
has_many :order
validates :nombre, presence: true, uniqueness: true, length: {minimum:6}
validates :marca, presence: true, length: {minimum:6}
validates :tipo, presence: true, length: {minimum:6}
validates :descripcion, presence: true, length: {minimum:30}


end
