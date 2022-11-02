using System.ComponentModel.DataAnnotations;

namespace WSVenta.Models.Request
{
    public class VentaRequest
    {
        [Required]
        [Range(1, Double.MaxValue, ErrorMessage = "El valor del IdCliente debe ser mayor a 0")]
        [ExistiCliente(ErrorMessage = "El cliente no existe")]
        public int IdCliente { get; set; }
        [Required]
        [MinLength(1, ErrorMessage = "Deben existir conceptos")]
        public List<Concepto> Conceptos { get; set; }
    }

    public class Concepto
    {
        public int Cantidad { get; set; }
        public decimal PrecioUnitario { get; set; }
        public decimal Importe { get; set; }
        public int IdProducto { get; set; }
    }

    #region Validaciones
    public class ExistiCliente : ValidationAttribute
    {
        public override bool IsValid(object? value)
        {
            int idCliente = (int)value;
            using (var db = new Models.VentaRealContext())
            {
                if (db.Clientes.Find(idCliente) == null) return false;
                
            }
            return true;
        }
    }
    #endregion

}
