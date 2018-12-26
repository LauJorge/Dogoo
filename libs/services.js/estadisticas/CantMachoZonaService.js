class CantMachoZonaService {
    constructor() {
        this.serviceUrl = "./back/services/estadisticas/getCantMachoZona.php";
    }
   getEstadisticasMachos(cant_machos, sexo, provincia){
        return $.getJSON(this.serviceUrl,{"cant_machos":cant_machos, "sexo":sexo, "provincia":provincia})
    }

}