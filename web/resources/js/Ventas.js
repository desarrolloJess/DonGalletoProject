var nombreGalletaG;
var precioPiezaGalletaG;
var precioCajaGalletaG;
var precioGramajeGalletaG;
var tipoVentaG;

//Permite llenar los datos de nombre y precio de las galletas. Jessica Delgado 03/12/2023
function datosGalletas(){
    var idBanco = "datosGalletas";
    var urlBusqueda = "ServletVentas?accion="+idBanco;
    
    $.ajax({
        type: "POST",
        url: urlBusqueda,
        contentType: "application/json", // Especificar el tipo de contenido como JSON
        success: function(response) {
            console.log("Mensaje del servlet:", response);
            for (var i = 0; i < response.length; i++) {
                var galleta = response[i];
                var idGalleta = i + 1;
                
                var contenedor = $("#datosGalletas" + idGalleta);
                contenedor.find("#nombreGalleta").text(galleta.nombre);
                contenedor.find("#costoGalleta").text("$" + galleta.precio);
            }
        },
        error: function(xhr, status, error) {
          // Manejar errores
          console.error("Error:", error);
        }
    });   
}


function desactivarGalletas(btnId) {
    // Deshabilitar el botón y cambiar el color
    for (var i = 0; i < 10; i++) {
        var galleta = '#btnGalletas';
        var idBtn = i + 1;
        

        var botonesGalletas = (galleta+idBtn);
        var contenedor = $("#datosGalletas" + idBtn);
        nombreGalletaG = contenedor.find("#nombreGalleta").text();
        precioPiezaGalletaG = contenedor.find("#costoGalleta").text();
        
        
        if(botonesGalletas!==btnId){
            
            var esDeshabilitado = $(botonesGalletas).prop("disabled");
            if(!esDeshabilitado){
                $(botonesGalletas).prop("disabled", true);
                $(botonesGalletas).css("background-color", "#555"); 
                $("#formularioTipoVenta").show();    
            }else{
                $(botonesGalletas).prop("disabled", false);
                $(botonesGalletas).css("background-color", "#FFFFFF");
                $("#formularioTipoVenta").hide();
            }
            
        } 
    }    
}
function desactivarTipoVenta(btnId,idForm) {
    // Deshabilitar el botón y cambiar el color
    for (var i = 0; i < 3; i++) {
        var galleta = '#btnTipoVenta';
        var idBtn = i + 1;

        var botonesGalletas = (galleta+idBtn);
        if(botonesGalletas!==btnId){
            
            var esDeshabilitado = $(botonesGalletas).prop("disabled");
            if(!esDeshabilitado){
                $(botonesGalletas).prop("disabled", true);
                $(botonesGalletas).css("background-color", "#555"); // Cambia el color a un tono más oscuro
                $(idForm).show();
            }else{
                $(botonesGalletas).prop("disabled", false);
                $(botonesGalletas).css("background-color", "#FFFFFF");
                $(idForm).hide();
            }
            
        } 
    }    
}

function agregar(idForm) {
    // Obtener los valores del formulario
    
    var nombreProducto; 
    var cantidad; 
    var total;
    
    //Tomando en cuenta que una galleta pesa 10 gramos
    if(idForm==="formulariosVentaPieza"){
        nombreProducto = "galletita"; 
        cantidad = $("#formPieza").val(); 
        total = (parseInt($("#formPieza").val())*10);
    }else if(idForm==="formulariosVentaCaja"){
        nombreProducto = "galletita"; 
        cantidad = $("#formPieza").val(); 
        total = (parseInt($("#formPieza").val())*95);
    }else if(idForm==="formulariosVentaGramaje"){
        
        nombreProducto = "galletita"; 
        cantidad = $("#formPieza").val(); 
        total = (parseInt($("#formPieza").val())*10);
    }
    
    console.log(nombreProducto);
    console.log(cantidad);
    console.log(total);
    
    return;

    // Validar si la cantidad es mayor que cero antes de agregar la fila
    if (parseInt(cantidad) > 0) {
        // Agregar una nueva fila a la tabla
        var table = $("#tablaProductos").DataTable();
        table.row.add([nombreProducto, cantidad, total]).draw();

        // Limpiar el formulario
        $("#formPieza").val("");
    } else {
        alert("La cantidad debe ser mayor que cero");
    }
}


