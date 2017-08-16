puts "Ingrese opción"
opcion = gets.chomp.to_i

	while opcion > 5 
	puts "opción invalida"
	opcion = gets.chomp.to_i
	end

	if opcion == 1 
		puts "Adios"
	end

	if opcion == 2
		file = File.open('alumnos.csv', 'r')
		puts "#{file.read.split("\n").length} alumnos"
		file.close	


	end

	if opcion == 3
		file = File.open('alumnos.csv', 'r')
		data = file.readlines
		file.close

		arr_prom = []
		data.each do |linea|
			arr_linea = linea.split(', ')
			suma = arr_linea[1].to_f + arr_linea[2].to_f + arr_linea[3].to_f
			prom = suma / (arr_linea.count - 1)
			arr_prom << "#{arr_linea[0]}, #{prom}"
			
		end	
		print arr_prom

	if opcion == 5 
		file = File.open('alumnos.csv', 'r')
		data = file.readlines
		file.close

		arr_proms = []
		data.each do |linea|
			arr_linea = linea.split(', ')
			suma = arr_linea[1].to_f + arr_linea[2].to_f + arr_linea[3].to_f
			prom = suma / (arr_linea.count - 1)
			arr_proms << "#{prom}"
			print arr_proms
		end
end



	end

#puts "opcion valida"
	
