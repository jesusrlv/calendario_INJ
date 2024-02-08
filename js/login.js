function login(){
    var usr = document.getElementById("usuario").value;
    var pwd = document.getElementById("pwd").value;

    $.ajax(
        {
            type: "POST",
            url: 'query/login.php',
            dataType:'json',
            data:{
              usr:usr,
              pwd:pwd
            },
            success: function (data) {
              var jsonData = JSON.parse(JSON.stringify(data));
              var success = jsonData.success;

              if(success == 1){
                Swal.fire({
                  icon:'success',
                  title: 'Login correcto',
                  showConfirmButton: false,
                  timer: 1500
                }).then((result) => {
                  if (result.dismiss === Swal.DismissReason.timer) {
                    window.location.href = "calendario.php";
                  }
                });
              }
              else if(success == 0){
                Swal.fire({
                  icon: 'error',
                  title: 'Usuario o contraseña incorrectos',
                  footer: 'INJUVENTUD'
                });
              }

            }
        });
}