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
    public partial class AdminINICIO : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd, cmd_prod;
        int c_id;

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["name"].ToString() != "admin")
            {
                Response.Redirect("~/Defaul.aspx");
            }
        }
    }
}