
class LoginService {
    
    constructor() {
        this.serviceUrl = "./back/services/user/getUser.php";
        this.postServiceUrl = "./back/services/user/getLogin.php";

    }

    getLogin(email, password, nombre, id_usuario){
        return $.getJSON( this.serviceUrl,{"nombre":nombre, "email":email, "pass":password, "id_usuario":id_usuario })   
    }
    postLogin(email, password){
        return $.post(this.postServiceUrl,{"email":email, "password":password })
    }
}