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
    public partial class PayItem : System.Web.UI.Page
    {
        private UserCart cart = new UserCart();
        private Item Curttem = new Item();
        private EmailMessages mail = new EmailMessages();
        private UserRegistration register = new UserRegistration();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Creatbtn_Click(object sender, EventArgs e)
        {
            int itemID = Convert.ToInt32(Session["cartID"].ToString());
            Curttem = cart.getitemdetails(itemID);
            cart.addpayment(itemID,Curttem.Price,Session["username"].ToString());
            cart.DeleteItem(itemID);
            string email = register.getuserEmail(Session["username"].ToString());
            mail.payment(email, itemID);
            Response.Redirect("index.aspx");

        }
    }
}