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
    public partial class ForgetPassWord : System.Web.UI.Page
    {
        private Customer cus = new Customer();
        private ManageuserAccount muas = new ManageuserAccount();
        private DateandTime dates = new DateandTime();
        protected void Page_Load(object sender, EventArgs e)
        {
           
             obj.Text = dates.getcurrentDate();
        }

        protected void update_Click(object sender, EventArgs e)
        {
            if (Password.Text == RePassword.Text)
            {
                cus.Username = username.Text;
                cus.Password1 = Password.Text;
                muas.Customerac = cus;

            }
            else { 
            
            }
        }
    }
}