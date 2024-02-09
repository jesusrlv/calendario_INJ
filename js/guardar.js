function guardarActividades(){
    var nombre = document.getElementById("nombreActividad").value;
    var tipoActividad = document.getElementById("tipoActividad").value;
    var fechaActividad = document.getElementById("fechaActividad").value;
    var descripcionActividad = document.getElementById("descripcionActividad").value;
    var responsableActividad = document.getElementById("responsableActividad").value;
    var temaActividad = document.getElementById("temaActividad").value;
    var municipioActividad = document.getElementById("municipioActividad").value;
    var lugarActividad = document.getElementById("lugarActividad").value;
    var comunidadActividad = document.getElementById("comunidadActividad").value;
    var horasalidaActividad = document.getElementById("horasalidaActividad").value;
    var horaeventoActividad = document.getElementById("horaeventoActividad").value;
    var observacionesActividad = document.getElementById("observacionesActividad").value;
    var estatusActividad = document.getElementById("estatusActividad").value;
  
    if (nombre == "" || tipoActividad == "" || fechaActividad == "" || descripcionActividad == "" || responsableActividad == "" || temaActividad == "" || municipioActividad == "" || lugarActividad == "" || comunidadActividad == "" || horaeventoActividad == "" || horasalidaActividad == "" || observacionesActividad == "" || estatusActividad == "" ){
        alert("Llena los campos faltantes");
    } else {
  
    $.ajax({
        type:"POST",
        url:"prcd/proceso_agregar_actividad.php",
        data:{
            nombre:nombre,
            tipoActividad:tipoActividad,
            fechaActividad:fechaActividad,
            descripcionActividad:descripcionActividad,
            responsableActividad:responsableActividad,
            temaActividad:temaActividad,
            municipioActividad:municipioActividad,
            lugarActividad:lugarActividad,
            comunidadActividad:comunidadActividad,
            horasalidaActividad:horasalidaActividad,
            horaeventoActividad:horaeventoActividad,
            observacionesActividad:observacionesActividad,
            estatusActividad:estatusActividad
        },
        dataType: "json",
        success: function(data){
            var jsonData = JSON.parse(JSON.stringify(data));
            var success = jsonData.success;
            
            if (success == 1) {
                Swal.fire({
                    icon: 'success',
                    title: 'Actividad agregada',
                    text: 'Proceso exitoso',
                    confirmButtonColor: "#0d6efd",
                    footer: 'INJUVENTUD'
                });
                $('#agregarActividad').modal('hide');

                document.getElementById("nombreActividad").value = "";
                document.getElementById("tipoActividad").value = "";
                document.getElementById("fechaActividad").value = "";
                document.getElementById("descripcionActividad").value = "";
                document.getElementById("responsableActividad").value = "";
                document.getElementById("temaActividad").value = "";
                document.getElementById("municipioActividad").value = "";
                document.getElementById("lugarActividad").value = "";
                document.getElementById("comunidadActividad").value = "";
                document.getElementById("horasalidaActividad").value = "";
                document.getElementById("horaeventoActividad").value = "";
                document.getElementById("observacionesActividad").value = "";
                document.getElementById("estatusActividad").value = "";
  
            } else if (success == 0){
                Swal.fire({
                    icon: 'error',
                    title: 'Actividad no agregada',
                    text: 'Proceso no exitoso',
                    footer: 'INJUVENTUD'
                });
            }
        }
        });
    } // else
}

// agregar usuario

function agregarUsuarios(){
    var nombre = document.getElementById("nombre").value;
    var alias = document.getElementById("alias").value;
    var area = document.getElementById("AreaAgregar").value;
    var departamento = document.getElementById("DepartamentosAgregar").value;
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
            area:area,
            departamento:departamento,
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
                    title: 'Usuario agregado',
                    text: 'Proceso exitoso',
                    confirmButtonColor: "#0d6efd",
                    footer: 'INJUVENTUD'
                });
                colaboradoresDashboard();
                $('#agregarUser').modal('hide'); 
  
            } else if (success == 0){
                Swal.fire({
                    icon: 'success',
                    title: 'Usuario no agregado',
                    text: 'Proceso no exitoso',
                    footer: 'INJUVENTUD'
                });
            }
        }
        });
    }
  }

//   actualizar datos
function actualizarUsuario(id, nombre, usuario, estatus, perfil, color, area, departamento){
    var departamento1 = departamento;
    var origen = 2;
    $('#queryColaboradores').modal('hide'); 
    console.log('area: ' + area);
    $.ajax(
        {
            type: "POST",
            url: 'query/queryArea.php',
            dataType:'html',
            success: function(data){
                $('#areaEditar').html(data);
                document.getElementById('areaEditar').value = area;
                departamentosQueryAgregar(origen,area,departamento1);
                // document.getElementById('departamentoEditar').value = departamento1;
                
            }
        });
        
    // $.ajax(
    //     {
    //         type: "POST",
    //         url: 'query/queryDepartamento.php',
    //         data:{
    //             area:area
    //         },
    //         dataType:'html',
    //         success: function(data){
    //             $('#departamentoEditar').html(data);
                
    //     }
    // });
        
    
    document.getElementById('idHidden').value = id;
    document.getElementById('nombre1').value = nombre;
    document.getElementById('user1').value = usuario;
    document.getElementById('perfilEditar').value = perfil;
    document.getElementById('estatusUser').value = estatus;
    document.getElementById('colorEditar').value = color;
    // document.getElementById('areaEditar').value = area;
    // document.getElementById('departamentoEditar').value = departamento;
    $('#editarUser').modal('show');
    
  }
  
  function editarUsuarios(){
    var nombre = document.getElementById("nombre1").value;
    var user = document.getElementById("user1").value;
    var perfil = document.getElementById("perfilEditar").value;
    var estatus = document.getElementById("estatusUser").value;
    var idHidden = document.getElementById("idHidden").value;
    var color = document.getElementById("colorEditar").value;
    var area = document.getElementById("areaEditar").value;
    var departamento = document.getElementById("departamentoEditar").value;
  
    if (nombre == "") {
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
            area:area,
            departamento:departamento,
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
  function cambiarContrasena(id){
    $('#queryColaboradores').modal('hide'); 
    $('#editarPwd').modal('show'); 

    document.getElementById('idHidepwd').value = id;

  }

  function editarPWD(){
    id = document.getElementById('idHidepwd').value;
    pwd = document.getElementById('pwdNew').value;
    $.ajax({
        type:"POST",
        url:"prcd/proceso_editar_pwd.php",
        data:{
            id:id,
            pwd:pwd
        },
        dataType: "json",
        success: function(data){
            var jsonData = JSON.parse(JSON.stringify(data));
            var success = jsonData.success;
            
            if (success == 1) {
                Swal.fire({
                    icon: 'success',
                    title: 'Contraseña editada',
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
                    title: 'Contraseña no editada',
                    text: 'Proceso no exitoso',
                    footer: 'INJUVENTUD'
                });
            }
        }
        });


  }