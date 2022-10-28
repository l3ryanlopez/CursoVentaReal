namespace WSVenta.Models.Response
{
    public class Respuesta
    {
        public int Exito { get; set; }
        public string Mensaje { get; set; }
        public object Data { get; set; }

        /* Constructor
         public Respuesta()
        {
            this.Exito = 0;
        }
        */
    }
}
