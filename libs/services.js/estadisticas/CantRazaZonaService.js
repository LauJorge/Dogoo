class CantRazaZonaService {
    constructor() {
        this.serviceUrl = "./back/services/estadisticas/getCantRazaZona.php";
    }

    getCantidadRazas(cant_Razas, raza, provincia, localidad){
            return $.getJSON(this.serviceUrl,{"cant_Razas":cant_Razas, "raza":raza, "provincia":provincia, "localidad": localidad})
        }
}