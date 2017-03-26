package gobela21

import groovy.sql.Sql

class EstadisticasController {
    def dataSource

    def index() {
        Sql sql = new Sql(dataSource)
        def resultList = []
//        def headersList = []

        def resultadoL1 = sql.rows("select s.nombre_entidad as entidad, s.nombre_solicitante as solicitante, sum(v.importe_concedido) as concedido from valoracion v join solicitud s where v.solicitud_id = s.id and s.linea = 1 group by s.nombre_entidad, s.nombre_solicitante")
//        def headersL1 = (resultadoL1.size() > 0)? resultadoL1[0].keySet(): null
        resultList.add(resultadoL1)
//        headersList.add(headersL1)

        def resultadoL2 = sql.rows("select s.nombre_entidad as entidad, s.nombre_solicitante as solicitante, sum(v.importe_concedido) as concedido from valoracion v join solicitud s where v.solicitud_id = s.id and s.linea = 2 group by s.nombre_entidad, s.nombre_solicitante")
//        def headersL2 = (resultadoL2.size() > 0)? resultadoL2[0].keySet(): null
        resultList.add(resultadoL2)
//        headersList.add(headersL2)

        def resultadoL3 = sql.rows("select s.nombre_entidad as entidad, s.nombre_solicitante as solicitante, sum(v.importe_concedido) as concedido from valoracion v join solicitud s where v.solicitud_id = s.id and s.linea = 3 group by s.nombre_entidad, s.nombre_solicitante")
//        def headersL3 = (resultadoL3.size() > 0)? resultadoL3[0].keySet() : null
        resultList.add(resultadoL3)
//        headersList.add(headersL3)

        def resultadoL4 = sql.rows("select s.nombre_entidad as entidad, s.nombre_solicitante as solicitante, sum(v.importe_concedido) as concedido from valoracion v join solicitud s where v.solicitud_id = s.id and s.linea = 4 group by s.nombre_entidad, s.nombre_solicitante")
//        def headersL4 = (resultadoL4.size() > 0)? resultadoL4[0].keySet() : null
        resultList.add(resultadoL4)
//        headersList.add(headersL4)

        def resultadoL5 = sql.rows("select s.nombre_entidad as entidad, s.nombre_solicitante as solicitante, sum(v.importe_concedido) as concedido from valoracion v join solicitud s where v.solicitud_id = s.id and s.linea = 5 group by s.nombre_entidad, s.nombre_solicitante")
//        def headersL5 = (resultadoL5.size() > 0)? resultadoL5[0].keySet() : null
        resultList.add(resultadoL5)
//        headersList.add(headersL5)

        def resultadoL6 = sql.rows("select s.nombre_entidad as entidad, s.nombre_solicitante as solicitante, sum(v.importe_concedido) as concedido from valoracion v join solicitud s where v.solicitud_id = s.id and s.linea = 6 group by s.nombre_entidad, s.nombre_solicitante")
//        def headersL6 = (resultadoL6.size() > 0)? resultadoL3[0].keySet() : null
        resultList.add(resultadoL6)
//        headersList.add(headersL6)

        def resultadoL7 = sql.rows("select s.nombre_entidad as entidad, s.nombre_solicitante as solicitante, sum(v.importe_concedido) as concedido from valoracion v join solicitud s where v.solicitud_id = s.id and s.linea = 7 group by s.nombre_entidad, s.nombre_solicitante")
//        def headersL7 = (resultadoL7.size() > 0)? resultadoL7[0].keySet() : null
        resultList.add(resultadoL7)
//        headersList.add(headersL7)

        [resultList: resultList]

//        [resultadoL1: resultadoL1, headersL1: headersL1, resultadoL2: resultadoL2, headersL2: headersL2, resultadoL3: resultadoL3, headersL3: headersL3]
    }
}

