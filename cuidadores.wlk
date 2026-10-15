import casa.*
import quilomberos.*

//la interfaz de ciudador está definida por los metodos limpiar(), puedeAtrapar()
// interrumpirSueño(), dormir(){} y en mi caso perderEnergia(valor) ya que lo use 
//para speedy gonzales

object tom{
    var energia = 25
    method energia()=energia 

    method velocidad()= 5 +energia/10

    method limpiar(unaCasa){
        self.perderEnergia(40)
        unaCasa.serLimpiada(100)
    }

    method puedeAtrapar(quilombero) = self.velocidad()>quilombero.velocidad()

    method dormir(){
        self.aumentarEnergia(50)
    }

    method interrumpirSueño(){
        self.perderEnergia(20)
    }

    method aumentarEnergia(valor){
        energia+=valor
    }

    method perderEnergia(valor){
        energia-=valor
    }
}

object robocat{
    method limpiar(unaCasa){
        unaCasa.limpiarTotalmente()
    }

    method puedeAtrapar(quilombero) = true

    method interrumpirSueño(){}
    method dormir(){}
    method perderEnergia(valor){} //lo agrego para que no rompa con speedyGonzales
}


object cuidadorBoicotero{
    var energia = 100

    method limpiar(unaCasa){
        unaCasa.ensuciar(100)
        self.verTele()
    }

    method puedeAtrapar(quilombero) = false

    method dormir(){}

    method verTele(){
        self.perderEnergia(100)
    }

    method interrumpirSueño(){
        self.perderEnergia(70)
    }

    method perderEnergia(valor){
        energia-=valor
    }

}