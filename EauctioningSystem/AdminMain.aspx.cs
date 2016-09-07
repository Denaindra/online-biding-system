using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EauctioningSystem
{
    public partial class AddminMAin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            checkuserlogin();
        }

        private void checkuserlogin()
        {

            if (Session["username"] == null)
            {
                Response.Redirect("login.aspx");
            }
            else
            {

            }
        }

        protected void view(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("ViewStores.aspx");
        }

        protected void login(object sender, ImageClickEventArgs e)
        {

            Response.Redirect("login.aspx");
        }

        protected void additem(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("AdADDItem.aspx");
        }

        protected void settings(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("ViewItemDetails.aspx");
        }

        protected void remove(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("RemoveUser.aspx");
        }

        protected void add(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("AddAdmin.aspx");
        }

      

       
    }
}