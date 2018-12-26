$(function() {
        $("#btnPostUser").click(function(){
            var email = $("#email").val();
            var password = $("#password").val();

            var loginService = new LoginService();
            loginService.postLogin(email, password).then(function(respuesta){
                respuesta = $.parseJSON(respuesta);
                if(respuesta.error == '0'){
                    var user = respuesta.user;
                    sessionStorage.setItem("nombre", user.nombre);
                    sessionStorage.setItem("id_usuario", user.id_usuario);
                    window.location.replace("main2.html");
                }else{
                    alert("Usuario o contraseña inválidos");
                }
            });
        });
    });