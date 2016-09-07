using EauctioningBusness;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EauctioningSystem
{
    public partial class contact : System.Web.UI.Page
    {
         private DateandTime dates = new DateandTime();
         private EmailMessages message = new EmailMessages();            
        protected void Page_Load(object sender, EventArgs e)
        {
                  obj.Text = dates.getcurrentDate();
        }

        protected void butn_Click(object sender, EventArgs e)
        {
            message.contact(cusemail.Text, cusname.Text, cusmessage.Text);
        }
    }
}