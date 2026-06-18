class Influencer {
    const alias
    const carisma
    const elocuencia
    const habilidadGaming
    var seguidores

    method alias() = alias
    method carisma() = carisma
    method elocuencia() = elocuencia
    method habilidadGaming() = habilidadGaming
    method tipoStream()
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