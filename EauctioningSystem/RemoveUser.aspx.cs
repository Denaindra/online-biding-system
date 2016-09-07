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
    public partial class RemoveUser : System.Web.UI.Page
    {
        User user = new User();
        UserRegistration usere = new UserRegistration();
        DateandTime daes = new DateandTime();
        protected void Page_Load(object sender, EventArgs e)
        {
            obj.Text = daes.getcurrentDate();
        }

        protected void loginbtn_Click(object sender, EventArgs e)
        {
            user.Username = username.Text;
            usere.removeAccount(user);
            Response.Redirect("index.aspx");
        }
    }
}