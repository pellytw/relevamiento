class Escuela < ActiveRecord::Base
  attr_accessible :localidad, :nivel, :nombre, :nro, :region

  def to_s
   "#{self.nro} - #{self.nombre}"	
  end
end
