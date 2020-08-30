class Post < ApplicationRecord
    validates :nombre, presence: true
    validates :descripcion, presence: true
    validates :estado, presence: true
end
