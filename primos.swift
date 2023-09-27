// import Foundation para que funcione readLine()
import Foundation


// Función que verifica si un número es primo
func esPrimo(_ n: Int) -> Bool {
    if n < 2 {
        return false
    }
    for i in 2..<n {
        if n % i == 0 {
            return false
        }
    }
    return true
}

// Función que verifica si un número es par
func esPar(_ n: Int) -> Bool {
    return n % 2 == 0
}

// Función que muestra el menú y retorna la opción seleccionada
func menu() -> Int {
    print("1. Verificar si un número es primo")
    print("2. Verificar si un número es par o impar")
    print("3. Salir")
    if let opcion = Int(readLine() ?? "") {
        return opcion
    } else {
        return 0
    }
}

// Función principal
func main() {
    var opcion = menu()
    while opcion != 3 {
        switch opcion {
        case 1:
            print("Ingrese un número: ")
            if let n = Int(readLine() ?? "") {
                if esPrimo(n) {
                    print("El número es primo")
                } else {
                    print("El número no es primo")
                }
            } else {
                print("Entrada no válida")
            }
        case 2:
            print("Ingrese un número: ")
            if let n = Int(readLine() ?? "") {
                if esPar(n) {
                    print("El número es par")
                } else {
                    print("El número es impar")
                }
            } else {
                print("Entrada no válida")
            }
     
        default:
            print("Opción inválida")
        }
     
        opcion = menu()
    }
}

main()
