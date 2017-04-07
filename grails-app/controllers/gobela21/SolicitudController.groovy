package gobela21

import jxl.*
import jxl.Workbook
import jxl.write.*
import jxl.WorkbookSettings

class SolicitudController {
    static scaffold = true

    def exportService
    def grailsApplication

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [solicitudInstanceList: Solicitud.list(params), solicitudInstanceCount: Solicitud.count()]
    }

    def estadisticas() {
        if (!params.max) params.max = 10
        if (params?.format && params.format != "html") {
            response.contentType = grailsApplication.config.grails.mime.types[params.format]
            response.setHeader("Content-disposition", "attachment;filename = solicitudInstance.${params.extension}")
            exportService.export(params.format, response.outputStream, Solicitud.list(params), [:], [:])
        }
        [solicitudInstanceList: Solicitud.list(params)]
    }

    def filtrar(params) {
        println("   :: Filtrando")
        String query = "SELECT * FROM solicitud, balance, memoria, valoracion WHERE solicitud.id = balance.solicitud "
        if (params.codigoSolicitante) query = query + "AND codigo = ${params.codigoSolicitante} "
        if (params.nombreSolicitante) query = query + "AND nombre = ${params.nombreSolicitante} "
        if (params.municipioSolicitante) query = query + "AND municipio = ${params.municipioSolicitante} "

        println("   :: ${query}")
        println()
    }

    def exportarSolicitud() {
        Solicitud solicitud = Solicitud.get(params.id)
        response.setContentType('application/vnd.ms-excel')
        response.setHeader('Content-Disposition', "Attachment;Filename='solicitud_${solicitud.codigo}.xls'")
        WorkbookSettings ws = new WorkbookSettings()
        ws.setLocale(new Locale("es", "ES"))
        WritableWorkbook workbook = Workbook.createWorkbook(response.outputStream, ws)

        try {
            WritableSheet sheet = workbook.createSheet("SOLICITUD", 0)

            WritableFont titleFont = new WritableFont(WritableFont.ARIAL, 16, WritableFont.BOLD)
            WritableCellFormat titleFormat = new WritableCellFormat()
            titleFormat.setFont(titleFont)
            Label title = new Label(0, 0, "ANEXO 1. SOLICITUD DE SUBVENCION ${solicitud.codigo}", titleFormat)
            sheet.addCell(title)

            WritableFont headerFont = new WritableFont(WritableFont.ARIAL, 11, WritableFont.BOLD)
            WritableCellFormat headerFormat = new WritableCellFormat()
            headerFormat.with {
                setBackground(Colour.GREY_25_PERCENT)
                setBorder(Border.ALL, BorderLineStyle.THIN)
                setFont(headerFont)
                setWrap(true)
            }

            WritableFont cellFont = new WritableFont(WritableFont.ARIAL, 10)
            WritableCellFormat cellFormat = new WritableCellFormat()
            cellFormat.with {
                setFont(cellFont)
                setBorder(Border.ALL, BorderLineStyle.THIN)
                setWrap(true)
            }

            int col = 0
            int row = 2

            solicitud.properties.each { key, value ->
                String msg = "solicitud.${key}.label"
                if (value && key!='valoracionId') {
                    Label campo = new Label(col, row, message(code: msg)+':', headerFormat)
                    Label valor = new Label(col + 1, row, value.toString(), cellFormat)
                    sheet.addCell(campo)
                    sheet.addCell(valor)
                    row++
                }
                sheet.setColumnView(col, 30)
                sheet.setColumnView(col+1, 30)
            }

            /*for (int i = 0; i < resultList.size(); i++) {
                String nombreHoja = "Linea ${i + 1}"
                def datosLinea = resultList[i]
                if (datosLinea.size() > 0) {
                    WritableSheet sheet = workbook.createSheet(nombreHoja, i)
                    WritableFont titleFont = new WritableFont(WritableFont.ARIAL, 16, WritableFont.BOLD)
                    WritableCellFormat titleFormat = new WritableCellFormat()
                    titleFormat.setFont(titleFont)

                    WritableFont headerFont = new WritableFont(WritableFont.ARIAL, 11, WritableFont.BOLD)
                    WritableCellFormat headerFormat = new WritableCellFormat()
                    headerFormat.with {
                        setBackground(Colour.GREY_25_PERCENT)
                        setBorder(Border.ALL, BorderLineStyle.THIN)
                        setFont(headerFont)
                        setWrap(true)
                    }

                    WritableFont cellFont = new WritableFont(WritableFont.ARIAL, 10)
                    WritableCellFormat cellFormat = new WritableCellFormat()
                    cellFormat.with {
                        setFont(cellFont)
                        setBorder(Border.ALL, BorderLineStyle.THIN)
                        setWrap(true)
                    }

                    *//*WritableCellFormat currencyFormat = new WritableCellFormat(new NumberFormat(NumberFormat.))
                    currencyFormat.with{
                        setFont(cellFont)
                        setBorder(Border.ALL, BorderLineStyle.THIN)
                    }*//*

                    sheet.addCell(new Label(0, 0, "SUBVENCIONES LINEA ${i + 1}", titleFormat))
                    def cabeceras = datosLinea[0].keySet()

                    for (int j = 0; j < cabeceras.size(); j++) {
                        sheet.addCell(new Label(j, 3, cabeceras[j].toUpperCase(), headerFormat))
                    }
                    for (int z = 0; z < datosLinea.size(); z++) {
                        def subvencion = datosLinea[z]
                        for (int x = 0; x < subvencion.size(); x++) {
                            if (subvencion[x] && subvencion[x].getClass() == String) {
                                sheet.addCell(new Label(x, z + 4, subvencion[x], cellFormat))
                            } else {
                                if (subvencion[x].getClass() == BigDecimal) {
                                    sheet.addCell(new Number(x, z + 4, subvencion[x], cellFormat))
                                    //sheet.addCell(new Number(x, z + 4, subvencion[x], currencyFormat))
                                } else {
                                    if (subvencion[x]) sheet.addCell(new Number(x, z + 4, subvencion[x], cellFormat))
                                }
                            }
                        }
                    }
                    for (int n = 0; n < datosLinea[0].size() - 2; n++) {
                        sheet.addCell(new Label(n, datosLinea.size() + 4, "", headerFormat))
                    }
                    int colum = datosLinea[0].size() - 1
                    int rowIni = 5
                    int rowFin = rowIni + datosLinea.size() - 1
                    sheet.addCell(new Label(datosLinea[0].size() - 2, datosLinea.size() + 4, "TOTAL:", headerFormat))
                    Formula total = new Formula(colum, rowFin, "SUMA(C${rowIni}:C${rowFin})", headerFormat)
                    sheet.addCell(total)

                    for (int c = 0; c < 10; c++) {
                        sheet.setColumnView(c, 20)
                    }
                }
            }*/
        } catch (Exception e) {
            e.printStackTrace()
        }

        workbook.write()
        workbook.close()
    }
}
