class Stream {
    const property streamer
    const property maxAudiencia

    method tipoStream() = streamer.tipoStream()  
}

object gaming {
    method impacto(unStreamer) {
        return unStreamer.habilidadGaming() * 5
    }

    method mejorarCaracteristica(unStreamer) {
        unStreamer.sumarHabilidadGaming(2)
    } 
}

class Charla {
    const clasificacion

    method impacto(unStreamer) {
        return unStreamer.elocuencia() * 6 + clasificacion.adicional()
    }

    method mejorarCaracteristica(unStreamer) {
        unStreamer.sumarElocuencia(2)
    } 
}

object atp {
    method adicional() = 5
}

object mas13 {
    method adicional() = 3
}

object mas16 {
    method adicional() = 0
}

object creativo {
    method impacto(unStreamer) {
        return [unStreamer.carismo(), unStreamer.elocuencia()].average() * 8
    }

    method mejorarCaracteristica(unStreamer) {
        unStreamer.sumarCarisma(2)
        unStreamer.sumarElocuencia(1)
    }
}