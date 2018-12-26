class RazaService {
    constructor() {
        this.serviceUrl = "./back/services/raza/getRaza.php";
    }

    getRazas(){
        return $.getJSON( this.serviceUrl)   
    }
}