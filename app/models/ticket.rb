class Ticket < ApplicationRecord
    validates :title, :email, :descripcion, :photo, presence: true
    has_one_attached :photo
    has_many :ticket_thread 
    enum status: [ :abierto, :cerrado ]
end
