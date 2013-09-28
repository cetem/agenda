class Persona < ActiveRecord::Base
  validates :nombre, presence: { message: 'no puede estar en blanco' }
end
