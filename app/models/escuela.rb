class Escuela < ActiveRecord::Base
  attr_accessible :localidad, :nivel, :nombre, :nro, :region
  belongs_to :nivel
  has_many :relevamiento
  def to_s
   "#{self.nro} - #{self.nombre}"	
  end
end
