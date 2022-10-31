using WSVenta.Models;
using WSVenta.Models.Request;
using WSVenta.Models.Response;
using WSVenta.Tools;

namespace WSVenta.Services
{
    public class UserService : IUserService
    {
        public UserResponse Auth(AuthRequest model)
        {
            UserResponse userresponse = new UserResponse();
            using (var db = new VentaRealContext())
            {
                string sPassword = Encrypt.GetSHA256(model.Password);

                var usuario = db.Usuarios.Where(d=>d.Email == model.Email && 
                                                d.Password == sPassword).FirstOrDefault();

                if (usuario == null) return null;

                 userresponse.Email = usuario.Email;
            }
            return userresponse;
        }
    }
}
