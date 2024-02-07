function calendario() {
  var date = new Date();
  var annio = date.getFullYear();
  var mes1 = date.getMonth();
  var mes = mes1+1;
  var dia = date.getDate();

    document.getElementById("calendarioGrid").innerHTML = "";
    var diasMes = new Date(annio, mes, 0).getDate();
    var diasSemana = ['Domingo', 'Lunes', 'Martes', 'Miércoles', 'Jueves', 'Viernes', 'Sábado'];
    var meses = ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto', 'Septiembre', 'Octubre','Noviembre','Diciembre'];
    var indiceMes = new Date(annio, mes - 1, dia).getDay();
    
    var indiceMes = mes - 1;

    $.ajax(
      {
          type: "POST",
          url: 'query/queryActividadesCalendario.php',
          dataType:'html',
          data:{
            mes:mes,
            annio:annio
          },
          success: function (data) {
            var jsonData = JSON.parse(data);
            console.log('Respuesta JSON:', jsonData);
        
            // Verificar si jsonData es un array antes de intentar acceder a su longitud
            if (Array.isArray(jsonData)) {
                console.log('Número de elementos en el array:', jsonData.length);
        
                // Iterar sobre cada elemento en el array
                for (var i = 0; i < jsonData.length; i++) {
                    var usuario = jsonData[i];
                    var usr = usuario.responsable_id;
                    var actividad = usuario.cantidad_actividades;
                    var color = usuario.responsable_color;
                    var dia = usuario.dia;
                    var mes = usuario.mes;
                    var annio = usuario.anno;
        
                    console.log('Usuario:', usr);
                    console.log('Número de actividades:', actividad);
                    console.log('Color:', color);
        
                    // Puedes hacer lo que necesites con cada usuario aquí
                    // Por ejemplo, puedes agregar etiquetas HTML a algún elemento en tu página
                    $('#datosNm' + dia).append('<span class="badge me-1 rounded-pill" style="background:'+color+'">'+actividad+'</span>');
                }
            } 
        },
        error: function (xhr, status, error) {
            console.error('Error en la solicitud AJAX:', status, error);
        }

      });

      timer();
         
    
          for (var dia = 1; dia <= diasMes; dia++) {
            // Ojo, hay que restarle 1 para obtener el mes correcto
            var indice = new Date(annio, mes - 1, dia).getDay();
            // console.log(`El día número ${dia} del mes ${meses[indiceMes]} del año ${annio} es ${diasSemana[indice]}`);
            
            // document.getElementById("datosNm").innerHTML += '<span class="badge me-1 rounded-pill text-bg-primary">9</span>';
                
            document.getElementById("calendarioGrid").innerHTML += '<div class="col-lg-2 col-md-4 col-sm-6" id="cardH"><a href="#" onclick="modalAgregar('+dia+','+mes+','+annio+')" style="text-decoration:none"><div class="card mb-3" style="max-width: 540px;"><div class="row g-0"><div class="col-md-4 my-auto"><h1 class="text-center">'+dia+'</h1></div><div class="col-md-8 bg-primary"><div class="card-body"><h5 class="card-title text-light">'+diasSemana[indice]+'</h5><p class="card-text text-light">Actividades</p><p class="card-text text-light"><small class="text-body-light" id="datosNm'+dia+'"></small></p></div></div></div></div></a></div><!--col-->';
          
          }
}

function calendarioQuery() {

    var mes = document.getElementById('mes').value;
    var annio = document.getElementById('annio').value;

    if(mes == "" || annio == ""){
      alert("Debes seleccionar los campos vacíos");
    }
    else{

    document.getElementById("calendarioGrid").innerHTML = "";
    var diasMes = new Date(annio, mes, 0).getDate();
    var diasSemana = ['Domingo', 'Lunes', 'Martes', 'Miércoles', 'Jueves', 'Viernes', 'Sábado'];
    var meses = ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto', 'Septiembre', 'Octubre','Noviembre','Diciembre'];
    var indiceMes = new Date(annio, mes - 1, dia).getDay();
    
    var indiceMes = mes - 1;

    $.ajax(
      {
          type: "POST",
          url: 'query/queryActividadesCalendario.php',
          dataType:'html',
          data:{
            mes:mes,
            annio:annio
          },
          success: function (data) {
            var jsonData = JSON.parse(data);
            console.log('Respuesta JSON:', jsonData);
        
            // Verificar si jsonData es un array antes de intentar acceder a su longitud
            if (Array.isArray(jsonData)) {
                console.log('Número de elementos en el array:', jsonData.length);
        
                // Iterar sobre cada elemento en el array
                for (var i = 0; i < jsonData.length; i++) {
                    var usuario = jsonData[i];
                    var usr = usuario.responsable_id;
                    var actividad = usuario.cantidad_actividades;
                    var color = usuario.responsable_color;
                    var dia = usuario.dia;
                    var mes = usuario.mes;
                    var annio = usuario.anno;
        
                    console.log('Usuario:', usr);
                    console.log('Número de actividades:', actividad);
                    console.log('Color:', color);
        
                    // Puedes hacer lo que necesites con cada usuario aquí
                    // Por ejemplo, puedes agregar etiquetas HTML a algún elemento en tu página
                    $('#datosNm' + dia).append('<span class="badge me-1 rounded-pill" style="background:'+color+'">'+actividad+'</span>');
                }
            } 
        },
        error: function (xhr, status, error) {
            console.error('Error en la solicitud AJAX:', status, error);
        }

      });

      timer();
         
    
          for (var dia = 1; dia <= diasMes; dia++) {
            // Ojo, hay que restarle 1 para obtener el mes correcto
            var indice = new Date(annio, mes - 1, dia).getDay();
            // console.log(`El día número ${dia} del mes ${meses[indiceMes]} del año ${annio} es ${diasSemana[indice]}`);
            
            // document.getElementById("datosNm").innerHTML += '<span class="badge me-1 rounded-pill text-bg-primary">9</span>';
                
            document.getElementById("calendarioGrid").innerHTML += '<div class="col-lg-2 col-md-4 col-sm-6" id="cardH"><a href="#" onclick="modalAgregar('+dia+','+mes+','+annio+')" style="text-decoration:none"><div class="card mb-3" style="max-width: 540px;"><div class="row g-0"><div class="col-md-4 my-auto"><h1 class="text-center">'+dia+'</h1></div><div class="col-md-8 bg-primary"><div class="card-body"><h5 class="card-title text-light">'+diasSemana[indice]+'</h5><p class="card-text text-light">Actividades</p><p class="card-text text-light"><small class="text-body-light" id="datosNm'+dia+'"></small></p></div></div></div></div></a></div><!--col-->';
          
          }
      //   }
      // });
    }
  
  }

function modalAgregar(dia,mes,annio,fecha){
  $('#agregarActividad').modal('show');
  var fecha = new Date(annio, mes-1, dia);
  var fechaISO = fecha.getFullYear() + '-' + ('0' + (fecha.getMonth() + 1)).slice(-2) + '-' + ('0' + fecha.getDate()).slice(-2);  
  document.getElementById("fechaActividad").value = fechaISO;
  document.getElementById("fechaId").innerHTML = fechaISO;
  document.getElementById("fechaActividad").disabled = true;
  document.getElementById("revisarCalendario").setAttribute("onclick","revisarCalendario("+dia+", "+mes+", "+annio+", '"+fechaISO+"')");
  console.log(fechaISO);
}

function revisarCalendario(dia,mes,annio,fechaISO) {
  $('#agregarActividad').modal('hide');
  $('#modalCalendario').modal('show');

  $.ajax(
    {
        type: "POST",
        url: 'query/queryActividadesCalendarioIndividuales.php',
        dataType:'html',
        data:{
          dia:dia,
          mes:mes,
          annio:annio,
          fecha:fechaISO
        },
        success: function (data) {
          $('#contenedorFecha').fadeIn(1000).html(data);
          
      },
      error: function (xhr, status, error) {
          console.error('Error en la solicitud AJAX:', status, error);
      }

    });


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

function departamentosQueryAgregar(origen,area,departamento) {
  var area1 = area;
  $.ajax(
      {
          type: "POST",
          url: 'query/queryDepartamento.php',
          data:{
            area:area1
          },
          dataType:'html',
          success: function(data){
            if(origen == 1){
              $('#DepartamentosAgregar').fadeIn(1000).html(data);
            }
            else if(origen == 2){
              $('#departamentoEditar').fadeIn(1000).html(data);
              document.getElementById('departamentoEditar').value = departamento;
            }
          }
      });
}

function areaQueryAgregar() {
  $.ajax(
      {
          type: "POST",
          url: 'query/queryArea.php',
          dataType:'html',
          success: function(data){
            $('#AreaAgregar').fadeIn(1000).html(data);
          }
      });
}

function tipoActividad(){
  $.ajax(
      {
          type: "POST",
          url: 'query/queryTipoActividad.php',
          dataType:'html',
          success: function(data){
            $('#tipoActividad').fadeIn(1000).html(data);
          }
      });
}
function municipios(){
  $.ajax(
      {
          type: "POST",
          url: 'query/queryMunicipios.php',
          dataType:'html',
          success: function(data){
            $('#municipioActividad').fadeIn(1000).html(data);
          }
      });
}
function responsable(id){
  $.ajax(
      {
          type: "POST",
          url: 'query/queryResponsable.php',
          dataType:'html',
          success: function(data){
            $('#responsableActividad').fadeIn(1000).html(data);
            document.getElementById('responsableActividad').value = id;
          }
      });
}


function timer(){
  let timerInterval;
      Swal.fire({
        title: "Cargando datos",
        // html: "I will close in <b></b> milliseconds.",
        timer: 1500,
        timerProgressBar: true,
        didOpen: () => {
          Swal.showLoading();
          const timer = Swal.getPopup().querySelector("b");
          timerInterval = setInterval(() => {
            timer.textContent = `${Swal.getTimerLeft()}`;
          }, 100);
        },
        willClose: () => {
          clearInterval(timerInterval);
        }
      }).then((result) => {
        /* Read more about handling dismissals below */
        if (result.dismiss === Swal.DismissReason.timer) {
          console.log("I was closed by the timer");
        }
      });
}