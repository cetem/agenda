class Persona < ActiveRecord::Base
  has_secure_password

  validates :nombre, presence: {
    message: 'no puede estar en blanco'
  }

  has_many :eventos, dependent: :destroy

  def to_s
    [nombre, apellido].compact.join(' ')
  end

  def self.buscar termino
    where 'nombre LIKE :t OR apellido LIKE :t', t: "#{termino}%"
  end
end
