texto_nuevo = IO.read("menu.txt")
menu = IO.write("menu.txt", texto_nuevo + "Texto de Nacho")
puts IO.read("menu.txt")