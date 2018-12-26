$(function() {
    loadMain();

    function loadMain(){
        $machosXzona = $('#machosXzona');
        $hembrasXzona = $('#hembrasXzona');
        $razasXzona = $('#razasXzona');
        $machosBtn = $('#machosBtn');
        $hembrasBtn = $('#hembrasBtn');
        $razasBtn = $('#razasBtn');
        $transaXuser = $('#transaXuser');
        $historial = $('#historial');
        $transaXzona = $('#transaXzona');

        cargarMachosXZona();
        cargarHembrasXZona();
        cargarRazasXZona();
        cargarTransaXuser();
        cargarTransaXzona();
        cargarHistorial()
    }

    $("#machosBtn").click(function(){
        machosShow();
    });
    function machosShow(){
        $("#machoXzonaHide").toggle();
    }

    $("#hembrasBtn").click(function(){
        hembrasShow();
    });
    function hembrasShow(){
        $("#hembrasXzonaHide").toggle();
    }

    $("#razasBtn").click(function(){
        razasShow();
    });
    function razasShow(){
        $("#razasXzonaHide").toggle();
    }

    $("#tranzaXuserBtn").click(function(){
        tranzaXuser();
    });
    function tranzaXuser(){
        $("#transaXuserHide").toggle();
    }

    $("#tranzaXzonaBtn").click(function(){
        tranzaXzona();
    });
    function tranzaXzona(){
        $("#transaXzonaHide").toggle();
    }

    $("#historialBtn").click(function(){
        historial();
    });
    function historial(){
        $("#historialHide").toggle();
    }

    $("#razasXzonaBtn").click(function(){
        razasXzona();
    });
    function razasXzona(){
        $("#razasXzonaHide").toggle();
    }

   function cargarMachosXZona(){
        var estadisticasService = new CantMachoZonaService();
        var cant_machos ;
        var sexo ;
        var provincia;

        estadisticasService.getEstadisticasMachos(cant_machos, sexo, provincia).then(function(estadisticas){
            estadisticas.forEach(function(estadistica){
                $machosXzona
                         .append($('<tr>')
                           .append($('<td>')
                           .text(estadistica.cant_machos)
                           )
                          .append($('<td>')
                               .text(estadistica.provincia)
                           ))
                });
        });
    }
   function cargarHembrasXZona(){
        var estadisticasService1 = new CantHembraZonaService();
        var cant_hembras;
        var sexo;
        var provincia;

        estadisticasService1.getCantHembraZona(cant_hembras, sexo, provincia).then(function(estadisticas1){
            estadisticas1.forEach(function(estadistica1){
                $hembrasXzona
                         .append($('<tr>')
                           .append($('<td>')
                           .text(estadistica1.cant_hembras)
                           )
                           .append($('<td>')
                               .text(estadistica1.provincia)
                           ))
                });
            });
        }
       function cargarRazasXZona(){
            var estadisticasService2 = new CantRazaZonaService();
            var cant_Razas;
            var raza;
            var provincia;

        estadisticasService2.getCantidadRazas(cant_Razas, raza, provincia).then(function(estadisticas){
            estadisticas.forEach(function(estadistica){
                $razasXzona
                         .append($('<tr>')
                           .append($('<td>')
                           .text(estadistica.cant_Razas)
                           )
                           .append($('<td>')
                               .text(estadistica.raza)
                           )
                           .append($('<td>')
                               .text(estadistica.provincia)
                           )
                           )
                });
            });
        }
    function cargarTransaXuser(){
        var estadisticasService3 = new CantTransaUserService();
        var cant_trans;
        var tipoTransaccion;
        var nombre;
        var localidad;

        estadisticasService3.getCantTransUser(cant_trans, tipoTransaccion, nombre, localidad).then(function(estadisticas){
            estadisticas.forEach(function(estadistica){
                $transaXuser
                     .append($('<tr>')
                       .append($('<td>')
                       .text(estadistica.cant_trans)
                       )
                       .append($('<td>')
                           .text(estadistica.tipoTransaccion)
                       )
                       .append($('<td>')
                           .text(estadistica.nombre)
                       )
                       .append($('<td>')
                            .text(estadistica.localidad)
                        )
                       )
                });
            });
        }

    function cargarTransaXzona(){
                  var estadisticasService4 = new CantTransaZonaService();
                  var cantTransa;
                  var tipoTransaccion;
                  var provincia;

            estadisticasService4.getCantTransaZona(cantTransa, tipoTransaccion, provincia).then(function(estadisticas){
                estadisticas.forEach(function(estadistica){
                    $transaXzona
                             .append($('<tr>')
                               .append($('<td>')
                               .text(estadistica.cantTransa)
                               )
                               .append($('<td>')
                                   .text(estadistica.tipoTransaccion)
                               )
                               .append($('<td>')
                                   .text(estadistica.provincia)
                               )
                              )
                    });
                });
            }
    function cargarHistorial(){
            var estadisticasService5 = new HistorialService();
            var tipoTransaccion;
            var perro;
            var provincia;
            var id_usuario =sessionStorage.getItem("id_usuario");

            estadisticasService5.getHistorial(tipoTransaccion, perro, provincia, id_usuario).then(function(estadisticas){
                estadisticas.forEach(function(estadistica){
                    $historial
                             .append($('<tr>')
                               .append($('<td>')
                               .text(estadistica.tipoTransaccion)
                               )
                               .append($('<td>')
                                   .text(estadistica.perro)
                               )
                               .append($('<td>')
                                   .text(estadistica.provincia)
                               )
                                .append($('<td>')
                                    .text(estadistica.provincia)
                                )
                              )
                    });
                });
            }


    });




