class CantHembraZonaService {
    constructor() {
        this.serviceUrl = "./back/services/estadisticas/getCantHembraZona.php";
    }

    getCantHembraZona(cant_hembras, sexo, provincia){
        return $.getJSON(this.serviceUrl,{"cant_hembras":cant_hembras, "sexo":sexo, "provincia":provincia})

}
}