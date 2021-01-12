using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ABS
{
    public partial class TarjetaDeCreditoDatos : System.Web.UI.Page
    {
        string var_card_type, var_banco;
        int cantidad;

        protected void btnpagar_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/ConfirmacionDECompra.aspx?qty=" + cantidad);
    
        }

        protected void btncancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Cancelar.aspx");

        }

        protected void txtcno_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txtnombre_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txtcv_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Page_Load(object sender, EventArgs e)
        {
            String amount = Request.QueryString["total"];
            cantidad = Convert.ToInt32(Request.QueryString["cantidad"]);
            String bid = Request.QueryString["bid"];
            String cid = Request.QueryString["cid"];
            // String radio = Request.QueryString[3];
            lblamount.Text = Request.QueryString["total"];

            //  msg.Text = radio;
            if (!IsPostBack)
            {
                var_card_type = Request.QueryString["qs_card_type"].ToString();
                var_banco = Request.QueryString["qs_banco"].ToString();

                if (Request.QueryString["qs_banco"] == "AmericanExpress")
                {
                    REV_For_All.ValidationExpression = "^3[47][0-9]{13}$";
                    REV_cre.ValidationExpression = @"\d{3}";
                }
                if (Request.QueryString["qs_banco"] == "Master")
                {
                    REV_For_All.ValidationExpression = "^5[1-5][0-9]{14}$";
                    REV_cre.ValidationExpression = @"\d{3}";
                }
                if (Request.QueryString["qs_banco"] == "Visa")
                {
                    REV_For_All.ValidationExpression = "^4[0-9]{12}(?:[0-9]{3})?$";
                    REV_cre.ValidationExpression = @"\d{3}";
                }
                if (Request.QueryString["qs_banco"] == "Yes Banco")
                {
                    REV_For_All.ValidationExpression = @"\d{4}\-\d{4}\-\d{4}\-\d{4}";
                    REV_cre.ValidationExpression = @"\d{3}";
                }
                if (Request.QueryString["qs_banco"] == "SBI")
                {
                    REV_For_All.ValidationExpression = @"\d{4}\-\d{4}\-\d{4}\-\d{4}";
                    REV_cre.ValidationExpression = @"\d{3}";
                }
                if (Request.QueryString["qs_banco"] == "IDBI Banco")
                {
                    REV_For_All.ValidationExpression = @"\d{4}\-\d{4}\-\d{4}\-\d{4}";
                    REV_cre.ValidationExpression = @"\d{3}";
                }
            }
        }
    }
}