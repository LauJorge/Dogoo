class CantTransaUserService {
    constructor() {
        this.serviceUrl = "./back/services/estadisticas/getCantTransaXUser.php";
    }

    getCantTransUser(cant_trans, tipoTransaccion, nombre, localidad){
        return $.getJSON(this.serviceUrl,{"cant_trans":cant_trans, "tipoTransaccion":tipoTransaccion, "nombre":nombre, "localidad":localidad})
    }
}