class Articulo < ApplicationRecord
  # belongs_to :autor
  validates :titulo, presence: { message: "no puede estar vacío"}
  validates :contenido, presence: { message: "no puede estar vacío" }, length: {minimum: 3, message: "es demasiado corto"}
end
