function calendario() {
var annio = 2023;
var mes = 2;

var diasMes = new Date(annio, mes, 0).getDate();
var diasSemana = ['Domingo', 'Lunes', 'Martes', 'Miércoles', 'Jueves', 'Viernes', 'Sábado'];
var meses = ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto', 'Septiembre', 'Octubre','Noviembre','Diciembre'];
var indiceMes = new Date(annio, mes - 1, dia).getDay();

var indiceMes = mes - 1;

  for (var dia = 1; dia <= diasMes; dia++) {
    // Ojo, hay que restarle 1 para obtener el mes correcto
    var indice = new Date(annio, mes - 1, dia).getDay();
    console.log(`El día número ${dia} del mes ${meses[indiceMes]} del annio ${annio} es ${diasSemana[indice]}`);

      // const para = document.createElement("p"+dia);

      document.getElementById("calendarioGrid").innerHTML += '<div class="col-lg-2 col-md-4 col-sm-6"><div class="card mb-3" style="max-width: 540px;"><div class="row g-0"><div class="col-md-4 my-auto"><h1 class="text-center">'+dia+'</h1></div><div class="col-md-8 bg-primary"><div class="card-body"><h5 class="card-title text-light">'+diasSemana[indice]+'</h5><p class="card-text text-light">Actividades</p><p class="card-text text-light"><small class="text-body-light"><span class="badge me-1 rounded-pill text-bg-primary">9</span><span class="badge me-1 rounded-pill text-bg-secondary">9</span><span class="badge me-1 rounded-pill text-bg-success">9</span><span class="badge me-1 rounded-pill text-bg-danger">9</span><span class="badge me-1 rounded-pill text-bg-warning">9</span><span class="badge me-1 rounded-pill text-bg-info">9</span><span class="badge me-1 rounded-pill text-bg-light">9</span><span class="badge me-1 rounded-pill text-bg-dark">9</span></small></p></div></div></div></div></div><!--col-->';

  }

}

function calendarioQuery() {

    var mes = document.getElementById('mes').value;
    var annio = document.getElementById('annio').value;
    var usuario = document.getElementById('usuario').value;

    if(mes == "" || annio == "" || usuario == ""){
      alert("Debes seleccionar los campos vacíos");
    }
    else{

    
    
    document.getElementById("calendarioGrid").innerHTML = "";
    var diasMes = new Date(annio, mes, 0).getDate();
    var diasSemana = ['Domingo', 'Lunes', 'Martes', 'Miércoles', 'Jueves', 'Viernes', 'Sábado'];
    var meses = ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto', 'Septiembre', 'Octubre','Noviembre','Diciembre'];
    var indiceMes = new Date(annio, mes - 1, dia).getDay();
    
    var indiceMes = mes - 1;
    
      for (var dia = 1; dia <= diasMes; dia++) {
        // Ojo, hay que restarle 1 para obtener el mes correcto
        var indice = new Date(annio, mes - 1, dia).getDay();
        console.log(`El día número ${dia} del mes ${meses[indiceMes]} del año ${annio} es ${diasSemana[indice]}`);
      
          // const para = document.createElement("p"+dia);
      
          document.getElementById("calendarioGrid").innerHTML += '<div class="col-lg-2 col-md-4 col-sm-6"><div class="card mb-3" style="max-width: 540px;"><div class="row g-0"><div class="col-md-4 my-auto"><h1 class="text-center">'+dia+'</h1></div><div class="col-md-8 bg-primary"><div class="card-body"><h5 class="card-title text-light">'+diasSemana[indice]+'</h5><p class="card-text text-light">Actividades</p><p class="card-text text-light"><small class="text-body-light"><span class="badge me-1 rounded-pill text-bg-primary">9</span><span class="badge me-1 rounded-pill text-bg-secondary">9</span><span class="badge me-1 rounded-pill text-bg-success">9</span><span class="badge me-1 rounded-pill text-bg-danger">9</span><span class="badge me-1 rounded-pill text-bg-warning">9</span><span class="badge me-1 rounded-pill text-bg-info">9</span><span class="badge me-1 rounded-pill text-bg-light">9</span><span class="badge me-1 rounded-pill text-bg-dark">9</span></small></p></div></div></div></div></div><!--col-->';
      
      }
    }
  
  }
// modal para consultar y abrir las actividades del día
  function alCargar(){

  }

  function queryUser(){
    $.ajax({
        type: "POST",
        url: 'query/queryUser.php',
        dataType:'html',
        success: function(data){
            $('#queryUser').fadeIn(1000).html(data);
            $('#queryColaboradores').modal('show'); 
        }
    });
}

function queryUser_Tab(){
  $.ajax({
      type: "POST",
      url: 'query/queryUser_tab.php',
      dataType:'html',
      success: function(data){
          $('#usuario').fadeIn(1000).html(data);
      }
  });
}

function colaboradoresDashboard() {

  $.ajax(
      {
          type: "POST",
          url: 'query/queryColaboradores.php',
          dataType:'html',
          success: function(data){
              $('#queryColaboradoresDashboard').fadeIn(1000).html(data);
          }
      });
}

function actualizarUsuario(id, nombre, usuario, estatus, perfil, color){
  $('#queryColaboradores').modal('hide'); 
  document.getElementById('idHidden').value = id;
  document.getElementById('nombre1').value = nombre;
  document.getElementById('user1').value = usuario;
  document.getElementById('perfil').value = perfil;
  document.getElementById('estatusUser').value = estatus;
  document.getElementById('colorEditar').value = color;
  $('#editarUser').modal('show');
  
}

function editarUsuarios(){
  var nombre = document.getElementById("nombre1").value;
  var user = document.getElementById("user1").value;
  var perfil = document.getElementById("perfil").value;
  var estatus = document.getElementById("estatusUser").value;
  var idHidden = document.getElementById("idHidden").value;
  var color = document.getElementById("colorEditar").value;

  if (nombre == "" || user == "" || perfil == "" || estatus == "" || color == "" || estatus == "") {
      alert("Llena los campos faltantes");
  } else {

  $.ajax({
      type:"POST",
      url:"prcd/proceso_editar_usr.php",
      data:{
          idHidden:idHidden,
          nombre:nombre,
          user:user,
          perfil:perfil,
          estatus:estatus,
          color:color
      },
      dataType: "json",
      success: function(data){
          var jsonData = JSON.parse(JSON.stringify(data));
          var success = jsonData.success;
          
          if (success == 1) {
              Swal.fire({
                  icon: 'success',
                  title: 'Colaborador editado',
                  text: 'Proceso exitoso',
                  confirmButtonColor: "#0d6efd",
                  footer: 'INJUVENTUD'
              });
              $('#editarUser').modal('hide'); 
              queryUser();
              colaboradoresDashboard()
              $('#queryColaboradores').modal('show'); 
          } else if (success == 0){
              Swal.fire({
                  icon: 'error',
                  title: 'Colaborador no editado',
                  text: 'Proceso no exitoso',
                  footer: 'INJUVENTUD'
              });
          }
      }
      });
  }
}

function agregarUsuarios(){
  var nombre = document.getElementById("nombre").value;
  var alias = document.getElementById("alias").value;
  var color = document.getElementById("color").value;
  var pass = document.getElementById("pass").value;

  if (nombre == "" || alias == "" || pass == "" || color == "") {
      alert("Llena los campos faltantes");
  } else {

  $.ajax({
      type:"POST",
      url:"prcd/proceso_agregar_usr.php",
      data:{
          nombre:nombre,
          alias:alias,
          pass:pass,
          color:color
      },
      dataType: "json",
      success: function(data){
          var jsonData = JSON.parse(JSON.stringify(data));
          var success = jsonData.success;
          
          if (success == 1) {
              Swal.fire({
                  icon: 'success',
                  title: 'Colaborador agregado',
                  text: 'Proceso exitoso',
                  confirmButtonColor: "#0d6efd",
                  footer: 'INJUVENTUD'
              });
              colaboradoresDashboard();
              $('#agregarUser').modal('hide'); 

          } else if (success == 0){
              Swal.fire({
                  icon: 'success',
                  title: 'Colaborador no agregado',
                  text: 'Proceso no exitoso',
                  footer: 'INJUVENTUD'
              });
          }
      }
      });
  }
}
