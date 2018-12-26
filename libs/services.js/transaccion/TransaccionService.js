class TransaccionService {
    constructor() {
        this.serviceUrl = "./back/services/transaccion/getTransaccion.php";
        this.postServiceUrl = "./back/services/transaccion/postTransaccion.php";
    }

    getTransacciones(){
        return $.getJSON( this.serviceUrl)   
    }

    postTransaccion(id_perro, id_tipoTransa, id_usuario){
        return $.post(this.postServiceUrl,{"id_perro":id_perro, "id_tipoTransa":id_tipoTransa, "id_usuario":id_usuario})
    }
}

