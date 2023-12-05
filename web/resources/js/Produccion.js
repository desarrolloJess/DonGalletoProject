
function agregarProduccion(){
    var tarjeta = document.getElementById('miTarjeta');
    tarjeta.classList.toggle('oculta');
}

//Permite llenar los datos de nombre y precio de las galletas. Jessica Delgado 03/12/2023
/*function datosGalletas(){
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
}*/



