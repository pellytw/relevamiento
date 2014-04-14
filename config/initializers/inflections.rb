# Be sure to restart your server when you modify this file.

# Add new inflection rules using the following format
# (all these examples are active by default):
# ActiveSupport::Inflector.inflections do |inflect|
#   inflect.plural /^(ox)$/i, '\1en'
#   inflect.singular /^(ox)en/i, '\1'
#   inflect.irregular 'person', 'people'
#   inflect.uncountable %w( fish sheep )
# end

ActiveSupport::Inflector.inflections do |inflect|
  inflect.plural /^(ox)$/i, '\1en'
  inflect.singular /^(ox)en/i, '\1'
  inflect.irregular 'person', 'people'

  inflect.irregular 'localidad', 'localidades'
  inflect.irregular 'relevamiento', 'relevamientos'
  inflect.irregular 'tipo_de_documento', 'tipo_de_documentos'
  inflect.irregular 'escuela', 'escuelas'
  inflect.irregular 'tipo_gestion', 'tipo_gestiones'
  inflect.irregular 'region', 'regiones'
  inflect.irregular 'nivel', 'niveles'

  inflect.uncountable %w( fish sheep )
end
