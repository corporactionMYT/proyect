class Instructor < ActiveRecord::Base
  
  # Validar que los atributos sean obligatorios
  
    validates :document_id, :presence => true
    validates :number_document, :presence => true
    validates :name, :presence => true
    validates :last_name, :presence => true
    validates :email, :presence => true 
    validates :area_id, :presence => true
    validates :user_id, :presence => true
    validates :online_id, :presence => true
  
  # validar un atributo booleano
  
    # validates :genero, inclusion: [true, false]
  
  # validar que un atributos unicos
  
   validates :document_id, uniqueness: { message: "No se puede Repetir" }
   validates :number_document, uniqueness: { message: "No se puede Repetir" }
   validates :email, uniqueness: { message: "No se puede Repetir" }

  # validar formato de un email
  
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i,
  message: 'Formato no valido' } 
  
  # valida la longitud de un campo, tanto la longitud minima como la maxima
  
  validates :number_document, length: { minimum: 5, maximum: 30 }
  validates :name, length: { minimum: 5, maximum: 50 }
  validates :last_name, length: { minimum: 5, maximum: 50 }
  
  # Valida si un atributo es numerico
  
  validates :document_id, numericality: true
  validates :number_document, numericality: true
  
  belongs_to :document
  belongs_to :area
  belongs_to :user
  belongs_to :online
end
