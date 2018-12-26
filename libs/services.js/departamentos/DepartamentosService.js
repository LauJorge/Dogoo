class DepartamentosService {
    constructor() {
        this.serviceUrl = "./back/services/departamento/getDepartamento.php";
    }

    getDepartamento(){
        return $.getJSON( this.serviceUrl)   
    }
    
    getDepartamentoDeProvincia(id_provincia){
        return $.getJSON(this.serviceUrl,{"id_provincia":id_provincia})   
    }
}