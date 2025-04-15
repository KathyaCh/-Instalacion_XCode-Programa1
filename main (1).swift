struct Articulo {
  let nombre: String
  let precio: Double
  var stock: Int
  
  }

var articulos = [
  Articulo(nombre: "Camisa", precio: 300, stock: 10),
  Articulo(nombre: "Pantalon", precio: 500, stock: 25),
  Articulo(nombre: "Zapatos", precio: 700, stock: 5),
  Articulo(nombre: "Bufanda", precio: 150, stock: 30)
  ]

// variables para pedir datos desde el teclado
var aux: String = ""
var opcionIngresada: String = aux
var cuenta: Double = 0 // variable para contar la cantidad de articulos vendidos 

while opcionIngresada != "2" {
  print("**** Bienvenido a la tienda online Boutique Norma****")
  print("Articulos disponibles: ")
  print("\n")
  print("Articulo 1: \(articulos[0].nombre)")
  print("Precio: $\(articulos[0].precio) pesos")
  print("Stock: \(articulos[0].stock) unidades")
  print("\n")

  print("\n")
  print("Articulo 2: \(articulos[1].nombre)")
  print("Precio: $\(articulos[1].precio) pesos")
  print("Stock: \(articulos[1].stock) unidades")
  print("\n")

  print("\n")
  print("Articulo 3: \(articulos[2].nombre)")
  print("Precio: $\(articulos[2].precio) pesos")
  print("Stock: \(articulos[2].stock) unidades")
  print("\n")

  print("\n")
  print("Articulo 4: \(articulos[3].nombre)")
  print("Precio: $\(articulos[3].precio) pesos")
  print("Stock: \(articulos[3].stock) unidades")
  print("\n")
  
  print("Seleccione una opcion: ")
  print("\n")
  print("1. Comprar articulo")
  print("2. Salir")

  aux = readLine ()!
  opcionIngresada = aux
  
  switch opcionIngresada {
    case "1":
    print("\n")
    print("Ingrese el numero del articulo que desea comprar: ")

    aux = readLine ()!
    opcionIngresada = aux


    switch opcionIngresada { // Que articulo desea comprar
      case "1":
      print("Ingrese la cantidad de \(articulos[0].nombre) que desea comprar: ")

      aux = readLine ()!
      opcionIngresada = aux 

      let cantidadIngresada = Int(opcionIngresada)!
      if cantidadIngresada <= articulos[0].stock {
        articulos[0].stock = articulos[0].stock - cantidadIngresada
        cuenta = Double(cantidadIngresada) * articulos[0].precio
        print("Usted ha comprado \(cantidadIngresada) \(articulos[0].nombre)")
        print("El total de su compra es: $\(cuenta)")
        print("\n")
        print("Gracias por su compra, vuelva pronto")
        

        } else {
        print("No hay suficiente stock, intente con otra cantidad")
        }

      case "2":
      print("Ingrese la cantidad de \(articulos[1].nombre) que desea comprar: ")

      aux = readLine ()!
      opcionIngresada = aux 

      let cantidadIngresada = Int(opcionIngresada)!
      if cantidadIngresada <= articulos[1].stock {
        articulos[1].stock = articulos[1].stock - cantidadIngresada
        cuenta = Double(cantidadIngresada) * articulos[1].precio
        print("Usted ha comprado \(cantidadIngresada) \(articulos[1].nombre)")
        print("El total de su compra es: $\(cuenta)")
        print("\n")
        print("Gracias por su compra, vuelva pronto")


        } else {
        print("No hay suficiente stock, intente con otra cantidad")
        }

      case "3":
      print("Ingrese la cantidad de \(articulos[2].nombre) que desea comprar: ")

      aux = readLine ()!
      opcionIngresada = aux 

      let cantidadIngresada = Int(opcionIngresada)!
      if cantidadIngresada <= articulos[2].stock {
        articulos[2].stock = articulos[2].stock - cantidadIngresada
        cuenta = Double(cantidadIngresada) * articulos[2].precio
        print("Usted ha comprado \(cantidadIngresada) \(articulos[2].nombre)")
        print("El total de su compra es: $\(cuenta)")
        print("\n")
        print("Gracias por su compra, vuelva pronto")


        } else {
        print("No hay suficiente stock, intente con otra cantidad")
        }

      case "4":
      print("Ingrese la cantidad de \(articulos[3].nombre) que desea comprar: ")

      aux = readLine ()!
      opcionIngresada = aux 

      let cantidadIngresada = Int(opcionIngresada)!
      if cantidadIngresada <= articulos[3].stock {
        articulos[3].stock = articulos[3].stock - cantidadIngresada
        cuenta = Double(cantidadIngresada) * articulos[3].precio
        print("Usted ha comprado \(cantidadIngresada) \(articulos[3].nombre)")
        print("El total de su compra es: $\(cuenta)")
        print("\n")
        print("Gracias por su compra, vuelva pronto")


        } else {
        print("No hay suficiente stock, intente con otra cantidad")
        }

      default: 
      print("Opcion invalida")
      
      }// Fin del switch anidado

      case "2":
      print("¡Vuelva pronto!")

      default: 
      print("Opcion invalida")
    
      } // Fin del primer switch 

    }