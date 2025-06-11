using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication
{
    public partial class Site : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Logout_Click(object sender, EventArgs e)
        {
            // CANCELA O TICKET DE AUTENTICAÇÃO
            FormsAuthentication.SignOut();
            Session.Clear();
            Response.Redirect("~/");
        }
    }
}