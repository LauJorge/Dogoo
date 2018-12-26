$(function () {
    loadMain();

     function loadMain(){
        $razaSelect = $('#raza');
        $localidadSelect = $('#localidad');
        $departamentoSelect = $('#departamento');
        $busquedaSelect = $('#perro');
        $perroDisplay = $('#perroDisplay');
        cargarSelectDeRazas();
        cargarSelectDeLocalidad();
        mostrarPerro();
     }
    function mostrarPerro(){
        var id_usuario =sessionStorage.getItem("id_usuario");
        var perroServices = new PerroService();
        var nombre;
        var raza;
        var sexo;
        var descripcion;
        var edad;
        var foto;
        var precio;
        var id_tipoTransa;

        perroServices.getDatosPerro(nombre, raza, sexo, descripcion, edad, foto, precio,  id_tipoTransa,id_usuario).then(function(perros) {
            perros.forEach(function(perro) {
                $perroDisplay
                .append($('<tr>')
                    .append($('<th>')
                    .val(perro.id_perro)
                    .text(perro.perro)
                    .attr('style', 'width:70px')
                    .attr('style', 'text-transform:uppercase')
                )

                    .append($('<td>')
                    .val(perro.id_perro)
                        .text(perro.descripcion)
                    )
                    .append($('<td>')
                    .val(perro.id_perro)
                        .text(perro.precio)
                    ))
          });
        });
    }


/*
    $('#estadisticasDisplay').find(function(){
    var estadisticasService = new EstadisticasService();
        estadisticasService.getEstadisticas().then(function(response) {
         $('#estadisticasDisplay').html('=> Porcentaje de perros machos: ' + Math.round(response.porcentajeMachos) + ' %');
        $('#estadisticasDisplay').append('<br><br>=> Porcentaje de perros hembras: ' + Math.round(response.porcentajeHembras) + ' %');

        });
    });
*/

    $("#logout").click(function(){
        sessionStorage.clear();
        sessionStorage.removeItem('nombre');

    });
    $("#botonSiguiente").click(function(){
        var nombre = $("#nombre").val();
        var raza = $("#raza").val();
        var sexo = $("#sexo").val();
        var descripcion = $("#descripcion").val();
        var edad = $("#edad").val();
        var foto = $("#foto").val();
        var precio = $("#precio").val();
        var id_tipoTransa = $("#transaccion").val();
        var para_regalar = 1;

        var perroServices = new PerroService();
        var id_usuario =sessionStorage.getItem("id_usuario");

        perroServices.postPerro(nombre, raza, sexo, descripcion, edad, foto, precio, para_regalar, id_tipoTransa, id_usuario).then(function(respuesta){
            if(!respuesta.error){
                alert("perro ingresado ok");
                mostrarPerro();
                $("#formAltaPerro").hide();
            }
            else alert("Error");
        });

    });

    $("#postulaTuPerroBtn").click(function(){
        postulaTuPerroShow();
    });
    function postulaTuPerroShow(){
        $("#formAltaPerro").show();
    }

    function cargarSelectDeRazas(){
        var razaServices = new RazaService();
        razaServices.getRazas().then(function(razas) {
            razas.forEach(function(raza) {
                $razaSelect.append($('<option>').val(raza.id_raza).text(raza.raza));
          });
        });
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
     
    $('#showUser').find(function(){
        $('#showUser').html('Hola ' + sessionStorage.getItem("nombre"));
    });

    $('#btnBuscar1').click(function(){
        llenarTablaPerros();
    });

   function llenarTablaPerros (){
        var id_raza = $('#raza').val();
        var id_sexo = $("#sexo").val();
        var id_provincia = $('#localidad').val();
        var id_localidad = $('#departamento').val();
        var id_tipoTransa = $('#transaccion').val();
        var precio = $('#precio').val();

        var busquedaServices = new BuscadorService();

        $("#perro1").find('tbody').html("");
        busquedaServices.getDatosBusqueda(id_raza, id_sexo, id_tipoTransa, id_localidad, precio).then(function(busquedas) {
            if(busquedas.length){
                busquedas.forEach(function(busqueda) {
                    $("#perro1").find('tbody')
                    .append($('<tr>')
                        .append($('<th>')
                        .text(busqueda.perro)
                        .attr('style', 'width:70px')
                        .attr('style', 'text-transform:uppercase')
                        )

                        .append($('<td>')
                        .text(busqueda.descripcion)
                        )
                        .append($('<td>')
                        .text(busqueda.precio)
                        )
                        .append($('<td>')
                        .text(busqueda.localidad)
                        )
                    );
                });
            }else{
                alert("No hay perros que concuerden con tu búsqueda");
            }
        });
    }

    $('#btnBuscar').click(function(){
        var id_raza = $('#raza').val();
        var id_sexo = $("#sexo").val();
        var id_provincia = $('#localidad').val();
        var id_localidad = $('#departamento').val();
        var id_tipoTransa = $('#transaccion').val();
        var precio = $('#precio').val();

        var busquedaServices = new BuscadorService();

        $("#perro").find('tbody').html("");
        var id_perro = null;
        var id_usuario = sessionStorage.getItem("id_usuario");

        busquedaServices.getDatosBusqueda(id_raza, id_sexo, id_tipoTransa, id_localidad, precio).then(function(busquedas) {

            if(busquedas.length){
                busquedas.forEach(function(busqueda) {
                    id_perro = busqueda.id_perro;

                    $("#perro").find('tbody')
                    .append($('<tr>')
                        .append($('<th>')
                        .text(busqueda.perro)
                        .attr('style', 'width:70px')
                        .attr('style', 'text-transform:uppercase')
                    )

                        .append($('<td>')
                        .val(busqueda.id_perro)
                            .text(busqueda.descripcion)
                        )
                        .append($('<td>')
                        .val(busqueda.id_perro)
                            .text(busqueda.precio)
                        )

                        .append($('<td>')
                        .val(busqueda.id_perro)
                            .text(busqueda.localidad)
                            
                        ) 
                        .append($('<button type="button" class="w3-button w3-teal" id="btnTransa">')
                            .click(function(){
                                var transaccionServices = new TransaccionService();
                                transaccionServices.postTransaccion(id_perro, id_tipoTransa, id_usuario).then(function(respuesta){
                                    if(!respuesta.error){
                                        alert("transaccion exitosa!");
                                        window.location.replace("main2.html");
                                    }else alert("Error");
                                });
                            })
                            .val(busqueda.id_perro)
                            .text(busqueda.tipoTransaccion)
                            .attr('style', 'margin:20px')
                        )
                    );
                });

            }else{
                alert("No hay perros que concuerden con tu búsqueda");
            }
        });
    });


});


