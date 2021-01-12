using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ABS
{
    public partial class Pago : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ACONEXION"].ToString());
        int oid;
        int uid;
        int cantidad;
        Int64 total;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack != true)
            {
                oid = Convert.ToInt16(Request.QueryString["oid"]);
                uid = Convert.ToInt16(Session["uid"]);
                total = Convert.ToInt64(Request.QueryString["total"]);
                txtcid.Text = uid.ToString();
                txtid.Text = oid.ToString();
                txtamount.Text = total.ToString();
            }
        }

        protected void Aceptar_Click(object sender, EventArgs e)
        {
            oid = Convert.ToInt16(Request.QueryString["oid"]);
            cantidad = Convert.ToInt16(Request.QueryString["cantidad"]);
            uid = Convert.ToInt16(Session["uid"]);
            total = Convert.ToInt64(Request.QueryString["total"]);
            string tdate = DateTime.Now.ToShortDateString();
            string sdate = DateTime.Now.Date.AddDays(5).ToShortDateString();
            string sadd = txtadd.Text;

            con.Close();
            con.Open();
            SqlCommand cmd1 = new SqlCommand("insert into [ORDENES] values('" + uid + "','" + oid + "','" + tdate + "','" + total + "','" + sadd + "','" + sdate + "')", con);
            cmd1.ExecuteNonQuery();

            con.Close();


            string tarjeta_tipo, bank_name;
            if (cc.Checked == true)
            {
                tarjeta_tipo = "Tarjeta De Credito";
                bank_name = RadioButtonList1.SelectedItem.ToString();

            }
            else
            {
                tarjeta_tipo = "Tarjeta de Debito";
                bank_name = RadioButtonList2.SelectedItem.ToString();

            }
            con.Open();
            SqlCommand cmdcard = new SqlCommand("insert into [PAGOS] values('" + oid + "','" + total + "','" + tarjeta_tipo + "')", con);
            cmdcard.ExecuteNonQuery();
            con.Close();

            Response.Redirect("~/TarjetaDeCreditoDatos.aspx?bid=" + txtid.Text + "&cid=" + txtcid.Text + "&total=" + txtamount.Text + "&qs_card_type=" + tarjeta_tipo + "&qs_banco=" + bank_name + "&qty=" + cantidad + "");
        }

        protected void dc_CheckedChanged(object sender, EventArgs e)
        {
            creditcard.Visible = false;
            PlaceHolder1.Visible = true;

        }

        protected void cc_CheckedChanged(object sender, EventArgs e)
        {
            creditcard.Visible = true;
            PlaceHolder1.Visible = false;
        }
    }
}