  GNU nano 6.2                                                             nombre.swift                                                                       
import Foundation

// Solicita al usuario que ingrese su nombre
print("Por favor, ingresa tu nombre:")
if let nombre = readLine() {
    // Imprime un saludo con el nombre ingresado
    print("Hola, \(nombre)!")
} else {
    // En caso de que no se pueda leer la entrada del usuario
    print("No se pudo obtener tu nombre.")
}