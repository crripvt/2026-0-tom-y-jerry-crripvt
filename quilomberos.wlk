import cuidadores.*
import casa.*

object jerry{
    var peso = 2

    method velocidad()= 10-peso

    method hacerQuilombo(unaCasa){
        unaCasa.ensuciar(110)
        self.robarComida(1)
    }

    method robarComida(cantidad){
        peso+=cantidad
    }

}

object tuffy{
    method velocidad()=10

    method hacerQuilombo(unaCasa){
        self.haceRuido(unaCasa)
    }

    method haceRuido(unaCasa){
        unaCasa.cuidador().interrumpirSueño()
    }
}

object ningunQuilombero{
    method hacerQuilombo(unaCasa){}
    method velocidad()=0
}

object pandilla{
    const quilomberos=[]

    method hacerQuilombo(unaCasa){
        quilomberos.forEach({quilombero=>quilombero.hacerQuilombo(unaCasa)})
        if(quilomberos.size()>3){
            unaCasa.cuidador().interrumpirSueño()
        }
    }

    method velocidad()= self.elMasLento().velocidad()/2

    method elMasLento() = quilomberos.min({quilombero=>quilombero.velocidad()})

    method agregar(unQuilombero) { quilomberos.add(unQuilombero) }
}

object speedyGonzales{
    method velocidad()=1200

    method hacerQuilombo(unaCasa){
        unaCasa.ensuciar(250)
        self.pasearCuidador(unaCasa)
    }

    method pasearCuidador(unaCasa){
        unaCasa.cuidador().perderEnergia(250)
    }
}