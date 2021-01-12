using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ABS
{
    public partial class Agregar_Categoria : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd, cmd_prod;
        int c_id;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["name"].ToString() != "admin")
            {
                Response.Redirect("~/Defaul.aspx");
            }
        }

      
        protected void Aceptar_Click(object sender)
        {
          
        }

        protected void cat_nombre_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Aceptar_Click(object sender, EventArgs e)
        {
            con = new SqlConnection(WebConfigurationManager.ConnectionStrings["ACONEXION"].ToString());
            cmd_prod = new SqlCommand("select max(cat_id) FROM Categorias", con);
            if (con.State == ConnectionState.Open)
                con.Close();
            con.Open();
            SqlDataReader dr = cmd_prod.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                c_id = Convert.ToInt32(dr.GetValue(0));
                c_id = c_id + 1;
            }

            dr.Dispose();
            cmd_prod.Dispose();

            cmd = new SqlCommand("insert into Categorias values('" + c_id + "','" + cat_nombre.Text + "','" + cat_detalles.Text + "')", con);
            cmd.ExecuteNonQuery();
            con.Close();
            cmd.Dispose();
            Response.Redirect("~/AdminINICIO.aspx");
        }

        protected void cat_detalles_TextChanged(object sender, EventArgs e)
        {

        }
    }
}