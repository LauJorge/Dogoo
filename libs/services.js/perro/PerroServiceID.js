class PerroServiceID {
      constructor() {
          this.serviceUrl = "./back/services/perro/getPerroID.php";
      }

    getidPerro(){
        return $.getJSON( this.serviceUrl)
        }
        }