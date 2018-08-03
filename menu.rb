# Menu Principal
require_relative 'opcion1'
require_relative 'inasistencias'

txt_menu = <<BLA
  Selecciona una opción
  1. Generar Promedio de cada Alumno
  2. Contar Total de Inasistencias de cada Alumno
  0. Salir
BLA

opcion = -1

while opcion != 0
  print txt_menu
  opcion = gets.to_i
  case opcion
  when 1
    promedio
  when 2
    inasis
  when 0
    print "Elegiste salir\n\n"
  else
    print "Error de opción\n\n"
  end
end
