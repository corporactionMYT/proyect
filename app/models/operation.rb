class Operation < ActiveRecord::Base
  has_attached_file :image, :styles => { :medium => "300x300>" , :thumb => "100x100>" }, :default_url => "/images/:style/foto.png"
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
   # Validar que los atributos sean obligatorios
  
    validates :area_id, :presence => true
    validates :maquina, :presence => true
    validates :name, :presence => true
    validates :time_standar, :presence => true
    validates :description, :presence => true
    
  
  belongs_to :area
end
