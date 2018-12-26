class HistorialService {
    constructor() {
        this.serviceUrl = "./back/services/estadisticas/getHistorial.php";
    }

    getHistorial(tipoTransaccion, perro, provincia, id_usuario){
        return $.getJSON(this.serviceUrl,{"tipoTransaccion":tipoTransaccion, "perro":perro, "provincia":provincia, "id_usuario":id_usuario})
    }
}