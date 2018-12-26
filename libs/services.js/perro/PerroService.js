class PerroService {
    constructor() {
        this.serviceUrl = "./back/services/perro/getPerro.php";
        this.postServiceUrl = "./back/services/perro/postPerro.php";
    }

    getPerro(){
        return $.getJSON( this.serviceUrl)   
    }
       
    getDatosPerro(nombre, raza, sexo, descripcion, edad, foto, precio,  id_tipoTransa, id_usuario ,id_perro){
        return $.getJSON(this.serviceUrl,{"id_perro":id_perro, "nombre":nombre, "raza":raza, "sexo":sexo, "descripcion":descripcion, "edad":edad, "foto":foto, "precio": precio, "id_tipoTransa": id_tipoTransa, "id_usuario": id_usuario})
    }


    postPerro(nombre, raza, sexo, descripcion, edad, foto, precio, para_regalar, id_tipoTransa ,id_usuario){
        return $.post(this.postServiceUrl,{"nombre":nombre, "raza":raza, "sexo":sexo, "descripcion":descripcion, "edad":edad, "foto":foto, "precio": precio, "para_regalar": para_regalar,"id_tipoTransa": id_tipoTransa, "id_usuario":id_usuario})
    }

}

