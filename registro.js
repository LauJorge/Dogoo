$(function() {
    loadMain();

    function loadMain(){
        $localidadSelect = $('#localidad');
        $departamentoSelect = $('#departamento');
        cargarSelectDeLocalidad();
        clearUser();
    }


    $localidadSelect = $('#localidad');
    $departamentoSelect = $('#departamento');

    function clearUser(){
         sessionStorage.clear();
         sessionStorage.removeItem('nombre');
    }

    function cargarSelectDeLocalidad(){
          var provinciasServices = new ProvinciasService();
          provinciasServices.getUbicacion().then(function(localidades) {
              localidades.forEach(function(localidad) {
                  $localidadSelect.append($('<option>').val(localidad.id_provincia).text(localidad.provincia));
            });
          });
      }
  
      $('#localidad').change(function(){
          var id_provincia = $localidadSelect.val();
          var departamentosService = new DepartamentosService();
          departamentosService.getDepartamentoDeProvincia(id_provincia).then(function(departamentos) {
              departamentos.forEach(function(departamento) {
                  $departamentoSelect.append($('<option>').val(departamento.id_localidad).text(departamento.localidad));
            });
          });
      });

      $("#btnPostUser").click(function(){
        var nombre = $("#nombreUser").val();
        var email = $("#email").val();
        var pass = $("#pass").val();
        var id_localidad = $('#departamento').val();

        var registroService = new RegistroService();
        registroService.postRegistro(nombre, email, pass, id_localidad).then(function(respuesta){
            console.log(respuesta);
            if(respuesta!="error") {
                var obj = JSON.parse(respuesta);
                sessionStorage.setItem("nombre", obj.nombre);
                sessionStorage.setItem("id_usuario", obj.id_usuario);
                window.location.replace("main2.html");
            }else{
                alert("Ocurrió un error al crear el usuario. Inténtelo nuevamente más tarde.");
            }
        });

    });

});