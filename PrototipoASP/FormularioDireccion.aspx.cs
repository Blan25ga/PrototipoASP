using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PrototipoASP
{
    public partial class FormularioDireccion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            List<Direccion> lista = (List<Direccion>)Session["listaDirecciones"];
            if (lista == null)
            {
                lista = new List<Direccion>();
            }

            Direccion nueva = new Direccion();
            nueva.Id = lista.Count + 1;
            nueva.Calle = txtCalle.Text;
            nueva.Altura = int.Parse(txtAltura.Text);

            lista.Add(nueva);
            Session["listaDirecciones"] = lista;

            Response.Redirect("Default.aspx");
        }
    }
}