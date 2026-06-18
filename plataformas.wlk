class Plataforma {
    const streamers = #{}
    const streams = []

    method agregarStreamer(unStreamer)

    method agregarStream(unStream) {
        if (streamers.contains(unStream.streamer())) {
            streams.add(unStream)
        }

        else {
            self.error("El streamer no está registrado en esta plataforma")
        }
    }
}

class PlataformaAbierta inherits Plataforma {
    override method agregarStreamer(unStreamer) {
        streamers.add(unStreamer)
    }
}

class PlataformaSelectiva inherits Plataforma {
    method poseeSeguidoresRequeridos(unStreamer) {
        return unStreamer.seguidores() > igba.seguidoresRequeridos() * 2
    }

    override method agregarStreamer(unStreamer) {
        if (self.poseeSeguidoresRequeridos(unStreamer)) {
            streams.add(unStreamer)
        }

        else {
            self.error("El streamer no posee los seguidores requeridos")
        }
    }
}

object igba {
    var seguidoresRequeridos = 100000

    method seguidoresRequeridos() = seguidoresRequeridos

    method cambiarSeguidoresRequeridos(cantidad) {
        seguidoresRequeridos = cantidad
    }
}