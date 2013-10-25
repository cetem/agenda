class Evento < ActiveRecord::Base
  validates :descripcion, :persona_id, presence: {
    message: 'no puede estar en blanco'
  }

  belongs_to :persona
end
