using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Net;
using System.Net.Mail;

namespace TaniaCinemasStore
{
    public partial class Registro : System.Web.UI.Page
    {
        SqlConnection con; int uid;
        SqlCommand cmd, cmd1;
        SqlDataReader dr;
        string fname, lname, email, ph, add, city, state, pin, country, pass;
        string sub = "Registro Exitoso a la pagina Tania Cinemas Store.!!";
        string body;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            con = new SqlConnection(WebConfigurationManager.ConnectionStrings["TaniaConexion"].ToString());


            cmd = new SqlCommand("select count(Usuario_ID) from Usuario", con);
            if (con.State == ConnectionState.Open)
                con.Close();
            con.Open();
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                uid = Convert.ToInt32(dr.GetValue(0).ToString());

            }
            uid = uid + 1;
            cmd.Dispose();
            dr.Dispose();
            con.Close();


            //enter the values to user table
            fname = txt_fname.Text;

            lname = txt_lname.Text;

            email = txt_email.Text;

            ph = txt_phno.Text;

            add = txt_addr.Text;

            city = txt_city.Text;

            state = txt_state.Text;

            country = Request.Form["Ciudad"];

            pass = txt_pass.Text;
            cmd1 = new SqlCommand("insert into Usuario values('" + uid + "','" + fname + "','" + lname + "','" + email + "','" + ph + "','" + add + "','" + city + "','" + state + "','" + country + "','" + pass + "')", con);
            if (con.State == ConnectionState.Open)
                con.Close();
            con.Open();
            cmd1.ExecuteNonQuery();

            con.Close();
            cmd1.Dispose();
            Response.Redirect("Login.aspx");
            body = "Nombre:" + txt_fname.Text + " Contraseña:" + txt_pass.Text + "  Gracias por registrarte.";


        }

        public string SendEmail(string toAddress, string subject, string body)
        {
            string result = "MensajeEnviadoConExito..!!";
            string senderID = "TaniaComicsstore@yahoo.com";
            const string senderPassword = "SuperMan";
            try
            {
                SmtpClient smtp = new SmtpClient
                {
                    Host = "TaniaComicsstore.yahoo.com",
                    Port = 587,
                    EnableSsl = true,
                    DeliveryMethod = SmtpDeliveryMethod.Network,
                    Credentials = new System.Net.NetworkCredential(senderID, senderPassword),
                    Timeout = 30000,
                };
                MailMessage message = new MailMessage(senderID, toAddress, subject, body);
                smtp.Send(message);
            }
            catch (Exception ex)
            {
                result = "ERROR ENVIANDO MEN!!!";
            }
            return result;
        }
    }
}