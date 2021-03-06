package gobela21

import jxl.Workbook
import jxl.write.*
import jxl.WorkbookSettings

class EstadisticasController {
    def InformesService

    def index() {
        def resultList = InformesService.subvencionesPorLinea()
        [resultList: resultList]
    }

    def exportarInformeSub() {
        def resultList = InformesService.subvencionesPorLinea()
        response.setContentType('application/vnd.ms-excel')
        response.setHeader('Content-Disposition', 'Attachment;Filename="subvenciones.xls"')
        WorkbookSettings ws = new WorkbookSettings()
        ws.setLocale(new Locale("es", "ES"))
        WritableWorkbook workbook = Workbook.createWorkbook(response.outputStream, ws)

        try {
            for (int i = 0; i < resultList.size(); i++) {
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
            }
        } catch (Exception e) {
            e.printStackTrace()
        }

        workbook.write()
        workbook.close()
    }
}



