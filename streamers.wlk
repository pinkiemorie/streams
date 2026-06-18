import streams.*

class Influencer {
    const alias
    var carisma
    var elocuencia
    var habilidadGaming
    var seguidores

    method alias() = alias
    method carisma() = carisma
    method elocuencia() = elocuencia
    method habilidadGaming() = habilidadGaming
    method seguidores() = seguidores
    method tipoStream()

    method realizarStream(unaPlataforma) {
        unaPlataforma.agregarStream(new Stream(maxAudiencia = seguidores, 
                                                streamer = self))
        self.sumarSeguidores(self.tipoStream().impacto(self))
        self.tipoStream().mejorarCaracteristica(self)
    }
    
    method sumarSeguidores(cantidad) {
        seguidores += cantidad
    }

    method sumarCarisma(cantidad) {
        carisma = (carisma + cantidad).min(100)
    }

    method sumarElocuencia(cantidad) {
        elocuencia = (elocuencia + cantidad).min(100)
    }

    method sumarHabilidadGaming(cantidad) {
        habilidadGaming = (habilidadGaming + cantidad).min(100)
    }
}

class StreamerProfesional inherits Influencer {
    const tipoStream

    override method tipoStream() = tipoStream
}

class CreadorMultifacetico inherits Influencer {
    var tipoStream

    override method tipoStream() = tipoStream

    method cambiarTipoStream(unTipo) {
        tipoStream = unTipo
    }
}

class InfluencerComercial inherits Influencer {
    const tiposStream

    override method tipoStream() = tiposStream.max({s => s.impacto(self)})

    method streamDeAdquisicion(unTipo) {
        tiposStream.add(unTipo)
        seguidores *= 0.9
    }
}