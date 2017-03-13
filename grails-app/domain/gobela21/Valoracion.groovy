package gobela21

class Valoracion {
    int l1costesActividad
    Integer l1mediosPropios
    Integer l1dificultadFinanciacion

    // Proyecto deportivo
    BigDecimal l1proyectoDeportivoCoherencia
    Integer l1proyectoDeportivoDiversidad
    Integer l1proyectoDeportivoEuskera
    Integer l1proyectoDeportivoParticipacionFemenina

    //  Incidencia de la actividad en la promoción del deporte entre quienes residen en Getxo
    Integer l1residentes

    //Contribución a la difusión y mejora de la imagen del municipio de Getxo
    Integer l1prensaLocal
    Integer l1prensaComarcal
    Integer l1prensaRegional
    Integer l1prensaEstatalInternacional

    // Participación en la política deportiva
    Integer l1deporteEscolar
    Integer l1marcaGetxo

    // Participación y colaboración con otras asociaciones o centros escolares o en progrmas y/o actividades municipales
    Integer l1getxoKirolak
    Integer l1centrosEscolares
    Integer l1otrosClubes

    // Continuidad y estabilidad
    Integer l1antiguedad
    Integer l1participantes

    ////////////////
    /// LINEA 2 ////
    ////////////////

    Integer l2costesActividadDe
    Integer l2mediosPropios
    Integer l2dificultadFinanciacion

    // Proyecto deportivo
    Integer l2proyectoDeportivoCoherencia
    Integer l2proyectoDeportivoDiversidad
    Integer l2proyectoDeportivoEuskera
    Integer l2proyectoDeportivoParticipacionFemenina

    //  Incidencia de la actividad en la promoción del deporte entre quienes residen en Getxo
    Integer l2residentes

    //Contribución a la difusión y mejora de la imagen del municipio de Getxo
    Integer l2prensaLocal
    Integer l2prensaComarcal
    Integer l2prensaRegional
    Integer l2prensaEstatalInternacional

    // Participación en la política deportiva
    Integer l2deporteEscolar
    Integer l2marcaGetxo

    // Participación y colaboración con otras asociaciones o centros escolares o en progrmas y/o actividades municipales
    Integer l2getxoKirolak
    Integer l2centrosEscolares
    Integer l2otrosClubes

    // Continuidad y estabilidad
    Integer l2antiguedad

    // Valoración de deportistas
    Integer l2puestoEnTorneosInternacionales
    Integer l2puestoEnCircuitosInternacionales
    Integer l2puestoEnTorneosNacionales
    Integer l2puestoEnCircuitosNacionales
    Integer l2PrimerPuestoEnTorneosAutonomicos
    Integer l2campeonatosEuskadi
    Integer l2campeonatosEspaña
    Integer l2campeonatosEuropa
    Integer l2campeonatosMundo

    //Indice de participacion
    BigDecimal l2indiceParticipacion

    // Indice de corrección
    BigDecimal l2indiceCorreccion

    ////////////////
    /// LINEA 3 ////
    ////////////////

    Integer l3categoriaFaseFinal
    Integer l3resultadoObtenido

    ////////////////
    /// LINEA 4 ////
    ////////////////

    // Agentes implicados en el evento
    Integer l4propioClub
    Integer l4otrosClubes
    Integer l4ampas
    Integer l4categoriasEscolares
    Integer l4categoriasFederadas
    Integer l4veteranos

    // Adecuación del presupuesto al anterior
    Integer l4desviacion

    // Calidad en el diseño de la actividad
    Integer l4participacionEstimada
    Integer l4comunicacionAMedios
    Integer l4usoNuevasTecnologías

    // Participación femenina
    Integer l4participacionFemeninaEvento

    // Valoración del solicitante
    Integer l4experienciaSolicitante

    ///////////////////////////
    /// EXCLUSIVOS LINEA 5 ////
    ///////////////////////////

    // Impacto actividad
    Integer l5numeroEspectadores

    // Adecuación del presupuesto
    Integer l5recursosPropios

    // Calidad en el diseño de la actividad  (tb linea 5)
    Integer l5participacionEstimada
    Integer l5comunicacionAMedios
    Integer l5usoNuevasTecnologías

    // Participación femenina   (tb linea 5)
    Integer l5participacionFemenina

    // Valoración del solicitante  (tb linea 5)
    Integer l5experienciaSolicitante


    ////////////////
    /// LINEA 6 ////
    ////////////////

    // Repercusión mediática
    Integer l6prensaLocal
    Integer l6prensaComarcal
    Integer l6prensaRegional
    Integer l6prensaEstatal

    // Costes
    Integer l6costeActividad

    //Medios propios
    Integer l6mediosPropios

    // Dificultad para acudir a otros medios de financiación
    Integer l6patrcinioPrivado


    ////////////////
    /// LINEA 7 ////
    ////////////////

    // Repercusión mediática
    Integer l7prensaLocal
    Integer l7prensaComarcal
    Integer l7prensaRegional
    Integer l7prensaEstatal

    // Costes
    Integer l7costeActividad

    //Medios propios
    Integer l7mediosPropios

    // Dificultad para acudir a otros medios de financiación
    Integer l7patrcinioPrivado

    //////////////
    /// COMUN ////
    //////////////

    Integer puntuacion
    BigDecimal importeConcedido

    static belongsTo = [solicitud: Solicitud]

    static constraints = {
        l1costesActividad(inList: [1,3,6,8,10])
        l1mediosPropios(inList: [3,6,10])
        l1dificultadFinanciacion(inList: [1,3,4,5])
    }
}
