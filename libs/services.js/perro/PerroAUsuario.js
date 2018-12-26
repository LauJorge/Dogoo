class PerroAUsuario {
    constructor() {
        this.serviceUrl = "./back/services/perro/getPerro.php";
        this.postServiceUrl = "./back/services/perro/usuarioAperro.php";
    }


    postPerroAUsuario( id_perro, id_usuario){
        return $.post(this.postServiceUrl,{"id_perro":id_perro, "id_usuario": id_usuario})
    }
}

