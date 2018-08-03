# Lectura de archivo y obtener promedio
def promedio
  alumnos = File.read('alumnos.csv')
  promedios = ''

  alumnos.split("\n").map do |alm|
    alumno = alm.split(', ')
    nom_alumno = alumno[0]
    total = alumno.inject(0) { |suma, item| suma + item.to_i }
    prom_alumno = total.to_f / (alumno.length - 1)
    promedios += "alumno: #{nom_alumno}, promedio: #{prom_alumno}\n"
  end
  File.write('promedios.csv', promedios)
end
