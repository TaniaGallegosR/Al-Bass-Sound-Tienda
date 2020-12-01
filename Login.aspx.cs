using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TaniaCinemasStore
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con; int uid;

        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox1.Focus();

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["name"] = TextBox1.Text;
            con = new SqlConnection(WebConfigurationManager.ConnectionStrings["TaniaConexion"].ToString());
            SqlCommand cmd3 = new SqlCommand("Select [Usuario_ID] from Usuario where usuario_nombre='" + Session["name"] + "' and contraseña='" + TextBox2.Text + "'", con);
            if (con.State == ConnectionState.Open)
                con.Close();
            con.Open();
            SqlDataReader dr1 = cmd3.ExecuteReader();
            if (dr1.HasRows)
            {
                dr1.Read();
                uid = Convert.ToInt32(dr1.GetValue(0));
                dr1.Dispose();
                con.Close();
                cmd3.Dispose();
                Session["uid"] = uid;

                if (Session["name"].ToString() == "admin")
                {
                    Response.Redirect("~/AdminINICIO.aspx");
                }
                else
                {
                    Response.Redirect("~/Productos.aspx");
                }

            }
            else
            {
                Label1.Text = "Por favor ingresa nombre & password el cual se enviará a tu correo";
            }
        }
    }
}