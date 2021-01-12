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
    public partial class Agregar_Producto : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd, cmd_prod;
        int prod_id, cat_id;

        protected void desc_TextChanged(object sender, EventArgs e)
        {

        }

        protected void precio_TextChanged(object sender, EventArgs e)
        {

        }

        protected void marca_TextChanged(object sender, EventArgs e)
        {

        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void nombre_TextChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Aceptar_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                if (FileUpload1.PostedFile.ContentLength > 5000000)
                {
                    NoImagen.Text = "El tamaño de la imagen debe de ser de menos de 5mb";
                }
                else
                {
                    con = new SqlConnection(WebConfigurationManager.ConnectionStrings["ACONEXION"].ToString());
                    cmd_prod = new SqlCommand("select max(p_id) from Producto", con);
                    if (con.State == ConnectionState.Open)
                        con.Close();
                    con.Open();
                    SqlDataReader dr = cmd_prod.ExecuteReader();
                    if (dr.HasRows)
                    {
                        dr.Read();
                        prod_id = Convert.ToInt32(dr.GetValue(0));
                        prod_id = prod_id + 1;
                    }

                    dr.Dispose();
                    cmd_prod.Dispose();
                    cat_id = (Convert.ToInt32(DropDownList1.SelectedIndex) + 1);
                    cmd = new SqlCommand("INSERT INTO Producto values('" + prod_id + "','" + nombre.Text + "','" + desc.Text + "','" + precio.Text + "','" + cat_id + "','" + marca.Text + "','" + FileUpload1.FileName + "')", con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    cmd.Dispose();
                    FileUpload1.SaveAs(Server.MapPath("~/Imagenes_Productos/" + FileUpload1.FileName));
                    NoImagen.Text = "Inserción Exitosa!!";


                }

            }
            else
            {
                NoImagen.Text = "Sube una imagen por favor";
            }
        }
    }
}