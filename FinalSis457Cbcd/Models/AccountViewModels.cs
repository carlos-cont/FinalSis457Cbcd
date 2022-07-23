
using System.ComponentModel.DataAnnotations;

namespace FinalSis457Cbcd.Models
{
    public class LoginViewModel
    {
        [Required]
        [Display(Name = "Usuario")]
        public string usuario { get; set; }
        [Required]
        [Display(Name = "Contraseña")]
        [DataType(DataType.Password)]
        public string clave { get; set; }
        [Required]
        [Display(Name = "Recordarme")]
        public bool recordarme { get; set; }
    }
}
