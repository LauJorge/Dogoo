class BuscadorService {
    constructor() {
        this.serviceUrl = "./back/services/buscador/getBusqueda.php";
    }

    getBusqueda(){
        return $.getJSON( this.serviceUrl)   
    }
    
    getDatosBusqueda(id_raza, id_sexo, id_tipoTransa, id_localidad, precio){
        return $.getJSON(this.serviceUrl,{"id_raza":id_raza, "id_sexo":id_sexo, "id_tipoTransa":id_tipoTransa, "id_localidad":id_localidad, precio:"precio" })
    }
}