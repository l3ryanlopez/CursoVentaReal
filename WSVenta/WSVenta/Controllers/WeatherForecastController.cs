using Microsoft.AspNetCore.Mvc;

namespace WSVenta.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class WeatherForecastController : ControllerBase
    {
        private static readonly string[] Summaries = new[]
        {
        "Freezing", "Bracing", "Chilly", "Cool", "Mild", "Warm", "Balmy", "Hot", "Sweltering", "Scorching"
    };

        private readonly ILogger<WeatherForecastController> _logger;

        public WeatherForecastController(ILogger<WeatherForecastController> logger)
        {
            _logger = logger;
        }

        [HttpGet(Name = "GetWeatherForecast")]
        public IEnumerable<WeatherForecast> Get()
        {
            List<WeatherForecast> lst = new List<WeatherForecast>();

            lst.Add(new WeatherForecast { Id = 2, Nombre = "Bryan", Apellido = "Lopez", Fecha = DateTime.Now });
            lst.Add(new WeatherForecast { Id = 3, Nombre = "Bryan2", Apellido = "calderon", Fecha = DateTime.Now });
            lst.Add(new WeatherForecast { Id = 10, Nombre = "Bryan10", Apellido = "Engelberto", Fecha = DateTime.Now });


            return lst;
        }
    }
}