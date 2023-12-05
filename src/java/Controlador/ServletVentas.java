package Controlador;

import Modelo.DatosGalletasModelo;
import Modelo.ServiceVentas;
import com.fasterxml.jackson.databind.ObjectMapper;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse; 
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
        
        String accion = request.getParameter("accion");
        
        if (!accion.equals(" ")) {
            switch (accion) {
                case "datosGalletas":
                    List<DatosGalletasModelo> lstGalletas = serviceVentas.consultaListaGalletas();
                    String galletasJson = objectMapper.writeValueAsString(lstGalletas);
                    response.getWriter().write(galletasJson);
                    break;
                case "insertarVenta":
                    //String galletasJson = objectMapper.writeValueAsString(serviceVentas.insertarHisoricoVenta(response,response));
                    response.getWriter().write("");
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
