using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace TaniaCinemasStore
{
    public partial class Productos : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-60EL5P1C;Initial Catalog=TaniaTienda;Integrated Security=True");

      

        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }

        protected void Page_Load(object sender, System.EventArgs e)
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            if (Request.QueryString["search"] != null)
            {
                cmd.CommandText = "select * from Producto where p_nombre like('%" + Request.QueryString["search"].ToString() + "%')";
            }
            else if (Request.QueryString["sort"] != null && Request.QueryString["sort"] == "high-low")
            {
                cmd.CommandText = "Select * from Producto order by p_precio desc";
            }
            else if (Request.QueryString["sort"] != null && Request.QueryString["sort"] == "low-high")
            {
                cmd.CommandText = "select * from Producto order by p_precio";
            }
            else
            {
                cmd.CommandText = "select * from Producto";
            }
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            Repeater1.DataSource = dt;
            Repeater1.DataBind();


            con.Close();
        }
    }
}