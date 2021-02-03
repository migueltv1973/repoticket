class Ticket < ApplicationRecord
    validates :title, :email, :descripcion, :photo, presence: true
    has_one_attached :photo
    enum status: [ :abierto, :cerrado ]
end
