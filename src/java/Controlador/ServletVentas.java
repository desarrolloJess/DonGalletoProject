package Controlador;

import Modelo.DatosGalletasModelo;
import Modelo.HistoricoVentasGalletasModelo;
import Modelo.ServiceVentas;
import com.fasterxml.jackson.databind.ObjectMapper;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse; 
import java.io.BufferedReader;
import java.util.List;

@MultipartConfig
public class ServletVentas extends HttpServlet {

    ServiceVentas serviceVentas = new ServiceVentas();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        ObjectMapper objectMapper = new ObjectMapper();
        
        BufferedReader reader = request.getReader();
        StringBuilder sb = new StringBuilder();
        String line;
        while ((line = reader.readLine()) != null) {
            sb.append(line);
        }
        ObjectMapper mapper = new ObjectMapper();
        
        String accion = request.getParameter("accion");
                
        if (!accion.equals(" ")) {
            switch (accion) {
                case "datosGalletas":
                    List<DatosGalletasModelo> lstGalletas = serviceVentas.consultaListaGalletas();
                    String galletasJson = objectMapper.writeValueAsString(lstGalletas);
                    response.getWriter().write(galletasJson);
                    break;
                case "precioCaja":
                    String precioCaja = serviceVentas.precioCaja();
                    response.getWriter().write(objectMapper.writeValueAsString(precioCaja));
                    break;
                case "precioGranaje":
                    String precioGranaje = serviceVentas.precioGramaje();
                    response.getWriter().write(objectMapper.writeValueAsString(precioGranaje));
                    break;
                case "insertarVenta":                    
                    HistoricoVentasGalletasModelo historico1 = mapper.readValue(sb.toString(), HistoricoVentasGalletasModelo.class);

                    Object resultadoInsercion = serviceVentas.insertarHisoricoVenta(historico1);
                    response.getWriter().write(objectMapper.writeValueAsString(resultadoInsercion));
                    break;
                case "insertarVentaTotal":
                    HistoricoVentasGalletasModelo historico2 = mapper.readValue(sb.toString(), HistoricoVentasGalletasModelo.class);
                    String resultadoInsercionTotal = serviceVentas.insertarVentaTotales(historico2);
                    response.getWriter().write(objectMapper.writeValueAsString(resultadoInsercionTotal));
                    break;
            }
        } else {
            response.getWriter().write("Error: la acción no fue definida");
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
