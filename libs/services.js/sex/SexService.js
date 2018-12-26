class SexService {
    constructor() {
        this.serviceUrl = "./back/services/sex/getSex.php";
    }

    getSexs(){
        return $.getJSON( this.serviceUrl)   
    }
}