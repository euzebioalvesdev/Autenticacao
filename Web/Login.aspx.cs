using IdentityModel;
using Microsoft.Ajax.Utilities;
using System;
using System.Web.UI.WebControls;
using WebMatrix.WebData;

namespace Web
{
    public partial class Login1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string login = null, password = null;
            if (!string.IsNullOrEmpty(txtLogin.Text) && !string.IsNullOrWhiteSpace(txtLogin.Text))
            {
                login = txtLogin.Text;
            }
            if (!string.IsNullOrEmpty(txtPassword.Text))
            {
                password = txtPassword.Text;
            }

            var returnUrl = Request.QueryString["ReturnUrl"];

            WebSecurity.Login(login, password);


            if (returnUrl != null)
            {
                Response.Redirect(returnUrl);
            }
            else
            {
                Response.Redirect("~/Index.aspx");
            }
        }
    }
}