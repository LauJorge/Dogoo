class RegistroService {
    constructor() {
        this.postServiceUrl = "./back/services/user/postRegistro.php";
    }

    getRegistro(){
        return $.getJSON( this.getServiceUrl)   
    }

    postRegistro(nombre, email, pass, id_localidad){
        return $.post(this.postServiceUrl,{"nombre":nombre, "email":email, "pass":pass, "id_localidad":id_localidad })   
    }
}