import cuidadores.*
import quilomberos.*

object casa{
    var cuidador = tom
    var quilombero = ningunQuilombero
    var property suciedad = 0

    method quilombero(nuevoQuilombero){
        quilombero=nuevoQuilombero
    }

    method cuidador(nuevoCuidador){
        cuidador=nuevoCuidador
    }

    method pasarDia(){
        cuidador.limpiar(self)
        if(cuidador.puedeAtrapar(quilombero)){
            quilombero = ningunQuilombero
        }
    }

    method pasarNoche(){
        cuidador.dormir()
        quilombero.hacerQuilombo(self)
    }

    method serLimpiada(cantidad){
        suciedad-=cantidad
    }

    method ensuciar(cantidad){
        suciedad+=cantidad
    }

    method limpiarTotalmente(){
        suciedad=0
    }
}
