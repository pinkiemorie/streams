object gaming {
    method impacto(unStreamer) {
        return unStreamer.habilidadGaming() * 5
    }
}

class Charla {
    const clasificacion

    method impacto(unStreamer) {
        return unStreamer.elocuencia() * 6 + clasificacion.adicional()
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
}