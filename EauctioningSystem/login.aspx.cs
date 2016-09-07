using EauctioningBusness;
using EauctioningEntity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EauctioningSystem
{
    public partial class login : System.Web.UI.Page
    {
        private Customer customer;
        private UserRegistration Userregister = new UserRegistration();
        private DateandTime dates = new DateandTime ();
       
        protected void Page_Load(object sender, EventArgs e)
        {
            Session.Clear();
            
            date.Text=dates.getcurrentDate();
        }

        protected void loginbtn_Click(object sender, EventArgs e)
        {
            customer = new Customer(username.Text, Password.Text);
            Userregister.CustomerEnti = customer;
            if (Userregister.checkUserlogin(customer.Username,customer.Password1))
            {
                Session["username"] = customer.Username;
                if (Userregister.getUserType())
                {
                    Response.Redirect("AdminMain.aspx");
                }
                else {
                    Response.Redirect("index.aspx");
                }
            }
            else {
                lgoerro.Text = "incorrect ";
            }
        }
    }
}