class CantTransaZonaService {
    constructor() {
        this.serviceUrl = "./back/services/estadisticas/getCantTransaXZona.php";
    }

    getCantTransaZona(cantTransa, tipoTransaccion, provincia){
        return $.getJSON(this.serviceUrl,{"cantTransa":cantTransa, "tipoTransaccion":tipoTransaccion, "provincia":provincia})
    }
}