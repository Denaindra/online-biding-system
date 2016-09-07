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
    public partial class AddAdmin : System.Web.UI.Page
    {
        private Admin admin;
        private UserRegistration Userregister = new UserRegistration();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Creatbtn_Click(object sender, EventArgs e)
        {
            admin = new Admin(First_name.Text, Last_name.Text, Email_address.Text, username.Text, Pass_word.Text, Pass_word2.Text);
            Userregister.Adminentity = admin;
            if (Userregister.chekcUserName())
            {
                Userregister.adminRegistrstion();
                logerr.Text = " ";
                Response.Redirect("login.aspx");
            }
            else
            {
                logerr.Text = "something going worng";
            }
        
        
        }
    }
}