<%-- 
    Document   : Produccion
    Created on : 4 dic. 2023, 23:40:40
    Author     : Jessica Delgado
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="resources/js/index.js"></script>
        <link rel="stylesheet" type="text/css" href="resources/css/estilosIndex.css">
        <script src="resources/js/Produccion.js"></script>
        <title>Ventas</title>
        <link href='https://fonts.googleapis.com/css?family=Open Sans' rel='stylesheet'>    
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.3.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdn.datatables.net/1.13.7/css/dataTables.bootstrap5.min.css">
    </head>
    <body id="contenedorIndex">
        <nav class="navbar navbar-light bg-light">
            <div class="containerNav">
                <a class="navbar-brand" href="#">
                    <img src="resources/img/logoPequeñoDonGalleto.png" alt="" height="60" style="margin-left: 10%;">
                    <span>Producción Galletas</span>
                </a>
            </div>
        </nav>
        <div class="container">
            <div class="row">
                <p id="msjVenta">TIPO DE GALLETA</p>
                <div class="col-7"> 
                    <!-- INICIA ÁREA DE GALLETAS --> 
                    <div class="row">
                        <div class="col">
                            <button style="height: 115px;" class="btn btn-light btnGalletas" id="btnGalletas1" onclick="desactivarGalletas('#btnGalletas1')" >
                                <img src="resources/img/galletas/galleta1.png" >
                                <div id="datosGalletas1">
                                    <p id="nombreGalleta">galletita</p>
                                    <p id="costoGalleta">$10.00</p>
                                </div>
                            </button>
                        </div>
                        <div class="col">
                            <button style="height: 115px;" class="btn btn-light btnGalletas" id="btnGalletas2" onclick="desactivarGalletas('#btnGalletas2')" >
                                <img src="resources/img/galletas/galleta2.png" >
                                <div id="datosGalletas2">
                                    <p id="nombreGalleta">galletita</p>
                                    <p id="costoGalleta">$10.00</p>
                                </div>
                            </button>
                        </div>
                        <div class="col">
                            <button style="height: 115px;" class="btn btn-light btnGalletas" id="btnGalletas3" onclick="desactivarGalletas('#btnGalletas3')" >
                                <img src="resources/img/galletas/galleta3.png" >
                                <div id="datosGalletas3">
                                    <p id="nombreGalleta">galletita</p>
                                    <p id="costoGalleta">$10.00</p>
                                </div>
                            </button>
                        </div>
                        <div class="col">
                            <button style="height: 115px;" class="btn btn-light btnGalletas" id="btnGalletas4" onclick="desactivarGalletas('#btnGalletas4')" >
                                <img src="resources/img/galletas/galleta4.png" >
                                <div id="datosGalletas4">
                                    <p id="nombreGalleta">galletita</p>
                                    <p id="costoGalleta">$10.00</p>
                                </div>
                            </button>
                        </div>
                        <div class="col">
                            <button style="height: 115px;" class="btn btn-light btnGalletas" id="btnGalletas5" onclick="desactivarGalletas('#btnGalletas5')" >
                                <img src="resources/img/galletas/galleta5.png" >
                                <div id="datosGalletas5">
                                    <p id="nombreGalleta">galletita</p>
                                    <p id="costoGalleta">$10.00</p>
                                </div>
                            </button>
                        </div>
                    </div>
                    <div class="row" style="margin-top: 1%">
                        <div class="col">
                            <button style="height: 115px;" class="btn btn-light btnGalletas" id="btnGalletas6" onclick="desactivarGalletas('#btnGalletas6')" >
                                <img src="resources/img/galletas/galleta6.png" >
                                <div id="datosGalletas6">
                                    <p id="nombreGalleta">galletita</p>
                                    <p id="costoGalleta">$10.00</p>
                                </div>
                            </button>
                        </div>
                        <div class="col">
                            <button style="height: 115px;" class="btn btn-light btnGalletas" id="btnGalletas7" onclick="desactivarGalletas('#btnGalletas7')" >
                                <img src="resources/img/galletas/galleta7.png" >
                                <div id="datosGalletas7">
                                    <p id="nombreGalleta">galletita</p>
                                    <p id="costoGalleta">$10.00</p>
                                </div>                                
                            </button>
                        </div>
                        <div class="col">
                            <button style="height: 115px;" class="btn btn-light btnGalletas" id="btnGalletas8" onclick="desactivarGalletas('#btnGalletas8')" >
                                <img src="resources/img/galletas/galleta8.png" >
                                <div id="datosGalletas8">
                                    <p id="nombreGalleta">galletita</p>
                                    <p id="costoGalleta">$10.00</p>
                                </div>
                            </button>
                        </div>
                        <div class="col">    
                            <button style="height: 115px;" class="btn btn-light btnGalletas" id="btnGalletas9" onclick="desactivarGalletas('#btnGalletas9')" >
                                <img src="resources/img/galletas/galleta9.png" >
                                <div id="datosGalletas9">
                                    <p id="nombreGalleta">galletita</p>
                                    <p id="costoGalleta">$10.00</p>
                                </div>
                            </button>
                        </div>
                        <div class="col">    
                            <button style="height: 115px;" class="btn btn-light btnGalletas" id="btnGalletas10"  onclick="desactivarGalletas('#btnGalletas10')" >
                                <img src="resources/img/galletas/galleta10.png" >
                                <div id="datosGalletas10">
                                    <p id="nombreGalleta">galletita</p>
                                    <p id="costoGalleta">$10.00</p>
                                </div>
                            </button>
                        </div>
                    </div>
                    <!-- TERMINA ÁREA DE GALLETAS -->
                    
                    <!-- INICIA ESPECIFICACIÓN COMPRA -->
                    <div class="row" style="margin-top: 1%">
                        <div class="col divBtnProduccion">
                            <button class="btn btn-dark btnProduccion" id="btnTipoVenta1" onclick="agregarProduccion()">
                                <p>AGREGAR TANDA (120 galletas c/u)</p>
                            </button>                            
                        </div>
                    </div>
                    <div class="row">
                        <div class="col divBtnProduccion">                            
                            <button class="btn btn-dark btnProduccion" id="btnTipoVenta1" onclick="desactivarTipoVenta('#btnTipoVenta1','#formulariosVentaPieza')">
                                <p>ELIMINAR GALLETAS (pieza)</p>
                            </button>                            
                        </div>
                    </div>
                    <div class="row">
                        <div class="col divBtnProduccion">                            
                            <button class="btn btn-dark btnProduccion" id="btnTipoVenta1" >
                                <p>RECETA</p>
                            </button>                            
                        </div>
                    </div>
                    <div class="row">
                        <div class="col divBtnProduccion">                            
                            <button class="btn btn-dark btnProduccion" id="btnTipoVenta1" >
                                <p>HISTORIAL ELIMINAR GALLETAS (pieza)</p>
                            </button>                            
                        </div>
                    </div>
                    <div class="row">
                        <div class="col divBtnProduccion">                            
                            <button class="btn btn-dark btnProduccion" id="btnTipoVenta1" >
                                <p>REPORTE PRODUCCIÓN GALLETAS</p>
                            </button>                            
                        </div>
                    </div>
                    <!-- TERMINA ESPECIFICACIÓN COMPRA -->
                </div>
                
                <div class="col-5">
                    <div class="card oculta" id="miTarjeta" style="margin-bottom: 1%;">
                        <div class="card-body">
                            <div class="input-group input-group-sm mb-3" style="width: 50%; margin: auto;">
                                <span class="input-group-text" id="inputGroup-sizing-default" style="width: 75px;">Cantidad</span>
                              <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
                            </div>
                            <div class="input-group input-group-sm mb-3" style="width: 50%; margin: auto;">
                              <span class="input-group-text" id="inputGroup-sizing-default" style="width: 75px;">Motivo</span>
                              <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
                            </div>
                            <div class="row">
                                <div class="col" style="text-align: center;">
                                    <button style="width: 100px;" type="button" class="btn btn-dark">Actualizar</button>
                                    <button style="width: 100px;" type="button" class="btn btn-dark">Cancelar</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <div class="card" style="margin-bottom: 1%;">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-9">
                                    <div class="input-group input-group-sm mb-3">
                                    <input type="text" class="form-control" aria-label="Text input with dropdown button">
                                    <button class="btn btn-outline-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false"></button>
                                    <ul class="dropdown-menu dropdown-menu-end">
                                      <li><a class="dropdown-item" href="#">Action</a></li>
                                      <li><a class="dropdown-item" href="#">Another action</a></li>
                                      <li><a class="dropdown-item" href="#">Something else here</a></li>
                                      <li><a class="dropdown-item" href="#">Separated link</a></li>
                                    </ul>
                                  </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-8">
                                    <div class="input-group input-group-sm mb-3" style="width: 90%;">
                                        <span class="input-group-text" id="inputGroup-sizing-default">Cantidad</span>
                                        <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
                                    </div>
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" value="" id="flexCheckChecked">
                                        <label class="form-check-label" for="flexCheckChecked">
                                          Kilogramos
                                        </label>
                                    </div>
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" value="" id="flexCheckChecked">
                                        <label class="form-check-label" for="flexCheckChecked">
                                          Gramos
                                        </label>
                                    </div>
                                </div>
                                <div class="col-4">
                                    <button style="width: 100%; height: 100%;" class="btn btn-dark" id="btnTipoVenta1" onclick="desactivarTipoVenta('#btnTipoVenta1','#formulariosVentaPieza')">
                                        <p>AGREGAR</p>
                                    </button> 
                                </div>
                            </div>
                            <div class="row" style="margin-top: 1%">
                                <div class="col-12">
                                    <table id="tablaProductos" class="table table-bordered" >
                                        <thead>
                                            <tr>
                                                <th>Nombre</th>
                                                <th>Cantidad</th> 
                                                <th>Total</th> 
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>Chips</td>
                                                <td>2</td>
                                                <td>20</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <button style="width: 100px;" type="button" class="btn btn-dark">Guardar</button>
                                    <button style="width: 100px;" type="button" class="btn btn-dark">Cancelar</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
