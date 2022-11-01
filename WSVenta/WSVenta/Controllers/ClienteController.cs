using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using WSVenta.Models;
using WSVenta.Models.Response;
using WSVenta.Models.Request;
using Microsoft.AspNetCore.Authorization;

namespace WSVenta.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    [Authorize]
    public class ClienteController : ControllerBase
    {
        [HttpGet]
        public IActionResult Get()
        {
            Respuesta oRespuesta = new Respuesta();
            oRespuesta.Exito = 0;
            try
            {
                using (VentaRealContext db = new VentaRealContext())
                {
                    var lst = db.Clientes.OrderByDescending(d => d.Id).ToList();
                    oRespuesta.Exito = 1;
                    oRespuesta.Data = lst;
                }
            }
            catch (Exception ex)
            {
                oRespuesta.Mensaje = ex.Message;
            }
            
            return Ok(oRespuesta);

        }
        [HttpPost]
        public IActionResult Add(ClientRequest oModel)
        {
            Respuesta oRespuesta = new Respuesta();
            //Esta opcion tambien se puede hacer colocando el valor de EXITO = 0 en la clase Respuesta y asi elimina esta linea
            oRespuesta.Exito = 0;
            try
            {
                using (VentaRealContext db = new VentaRealContext())
                {
                    Cliente oCliente = new Cliente();
                    oCliente.Nombre = oModel.Nombre;
                    db.Clientes.Add(oCliente);
                    db.SaveChanges();
                    oRespuesta.Exito = 1;
                }
            }
            catch (Exception ex)
            {
                oRespuesta.Mensaje = ex.Message; 
            }

            return Ok(oRespuesta);
        }
        [HttpPut]
        public IActionResult Update(ClientRequest oModel)
        {
            Respuesta oRespuesta = new Respuesta();
            //Esta opcion tambien se puede hacer colocando el valor de EXITO = 0 en la clase Respuesta y asi elimina esta linea
            oRespuesta.Exito = 0;
            try
            {
                using (VentaRealContext db = new VentaRealContext())
                {
                    Cliente oCliente = db.Clientes.Find(oModel.Id);
                    oCliente.Nombre = oModel.Nombre;
                    db.Entry(oCliente).State = Microsoft.EntityFrameworkCore.EntityState.Modified;
                    db.SaveChanges();
                    oRespuesta.Exito = 1;
                    oRespuesta.Mensaje = "Registro actualizado";
                }
            }
            catch (Exception ex)
            {
                oRespuesta.Mensaje = ex.Message;
            }

            return Ok(oRespuesta);
        }
        //[HttpDelete("{Id}")] esta es una manera para pasar un ID por la Url
        [HttpDelete]
        public IActionResult Delete(int Id)
        {
            Respuesta oRespuesta = new Respuesta();
            //Esta opcion tambien se puede hacer colocando el valor de EXITO = 0 en la clase Respuesta y asi elimina esta linea
            oRespuesta.Exito = 0;
            try
            {
                using (VentaRealContext db = new VentaRealContext())
                {
                    Cliente oCliente = db.Clientes.Find(Id);
                    db.Remove(oCliente);
                    db.SaveChanges();
                    oRespuesta.Exito = 1;
                    oRespuesta.Mensaje = "Registro eliminado";
                }
            }
            catch (Exception ex)
            {
                oRespuesta.Mensaje = ex.Message;
            }

            return Ok(oRespuesta);
        }
    }
}
