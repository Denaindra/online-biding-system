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
    public partial class register : System.Web.UI.Page
    {
        private Customer customer;
        private UserRegistration Userregister = new UserRegistration();
        private DateandTime obj = new DateandTime();
        protected void Page_Load(object sender, EventArgs e)
        {
            date.Text = obj.getcurrentDate();
        }

        protected void Creatbtn_Click(object sender, EventArgs e)
        {
            customer = new Customer(First_name.Text, Last_name.Text, Email_address.Text,username.Text, Pass_word.Text, Pass_word2.Text);
            Userregister.CustomerEnti = customer;
            if (Userregister.chcustomerUSername())
            {
                Userregister.cusRegistrstion();
                logerr.Text = " ";
                Response.Redirect("login.aspx");
            }
            else {
                logerr.Text = "something going worng";
            }
        }
    }
}