class ProvinciasService {
    constructor() {
        this.serviceUrl = "./back/services/ubicacion/getUbicacion.php";
    }

    getUbicacion(){
        return $.getJSON( this.serviceUrl)   
    }     
}