using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ERP
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_signin_Click(object sender, EventArgs e)
        {
            if (txt_userName.Text == "admin@admin" && txt_password.Text == "Admin")
            {
                Response.Redirect("main.aspx");
            }           
        }
    }
}