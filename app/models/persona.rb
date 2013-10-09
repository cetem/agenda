class Persona < ActiveRecord::Base
  validates :nombre, presence: { message: 'no puede estar en blanco' }

  def self.buscar termino
    where 'nombre LIKE :t OR apellido LIKE :t', t: "#{termino}%"
  end
end
