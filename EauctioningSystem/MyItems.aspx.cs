using EauctioningBusness;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EauctioningSystem
{
    public partial class MyItems : System.Web.UI.Page
    {
        private UserCart cart = new UserCart();
        protected void Page_Load(object sender, EventArgs e)
        {
            checkuserLogin();
        }

        private void checkuserLogin()
        {
            if (Session["username"] != null)
            {
                loaditemcart();
            }
            else {
                Response.Redirect("index.aspx");
            }
        }
        public void loaditemcart() {
            bededitems.DataSource = cart.getuserCart(Session["username"].ToString());
            bededitems.DataBind();

            biditems.DataSource = cart.getbiditems(Session["username"].ToString());
            biditems.DataBind();

            Payments.DataSource = cart.getpaymentlist(Session["username"].ToString());
            Payments.DataBind();
        }

        protected void getItemID_Click(object sender, EventArgs e)
        {
            LinkButton linkbut = (LinkButton)sender;
            string ID = linkbut.CommandArgument;
            Session["cartID"] = ID;
            Response.Redirect("PayItem.aspx");
            loaditemcart();
        }
    }
}