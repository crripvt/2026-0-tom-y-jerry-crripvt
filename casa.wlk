import cuidadores.*
import quilomberos.*

//la interfaz de casa está definida por los metodos ensuciar(cantidad), pasarDia()
//pasarNoche(), serLimpiada(cantidad), limpiarTotalmente(), quilombero() y cuidador() 

//ademas, casa aprovecha el polimorfismo al interactuar con cualquier cuidador o quilombero 
//sin importar quien sea (tom, robocat, jerry, pandilla, ninguno) ya que les envia los 
//mismos mensajes (limpiar, dormir, hacerQuilombo, etc) tratandolos de forma indistinta

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
