using EauctioningBusness;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EauctioningSystem
{
    public partial class index : System.Web.UI.Page
    {
        StoreItem items = new StoreItem();
        DateandTime date = new DateandTime();
        protected void Page_Load(object sender, EventArgs e)
        {
            checkLogin();
            loadMenitem();
            loadwomenitem();
            time.Text = date.getcurrentDate();
        }

        private void checkLogin()
        {
            if (Session["username"]== null)
            {
                logincon.Text = "Singn";
            }
            else {
                logincon.Text = "SingOut";
            }
        }

        private void loadMenitem()
        {
            mensList.DataSource = items.getMensDetails();
            mensList.DataBind();
        }
        private void loadwomenitem() {
            womenlist.DataSource = items.getWomenList();
            womenlist.DataBind();
        }
        protected void MenLink_Click(object sender, EventArgs e)
        {
            womenlist.DataSource = null;
            womenlist.DataBind();
            Label1.Text = "";
            Label2.Text = "";
        }

        protected void WomenLink_Click(object sender, EventArgs e)
        {
            mensList.DataSource = null;
            mensList.DataBind();
            Label3.Text = "";
            Label4.Text = "";
        }

        //protected void LinkButton1_Click(object sender, EventArgs e)
        //{

        //}
        protected void loaditem(object sender, EventArgs e)
        {
            //if (Search.Text == "Item1")
            //{

            //}
            //else if (Search.Text == "Item2")
            //{

            //}
            //else if (Search.Text == "Item3")
            //{

            //}
            //else if (Search.Text == "Item4")
            //{

            //}
            //else
            //{

            //}
        }
        protected void getItemID_Click(object sender, EventArgs e)
        {
            LinkButton linkbut = (LinkButton)sender;
            string ID = linkbut.CommandArgument;
            Session["ItemID"]=linkbut.CommandArgument;
            
            Response.Redirect("single.aspx");
        }

        protected void getItemID2_Click(object sender, EventArgs e)
        {
            LinkButton linkbut = (LinkButton)sender;
            string ID = linkbut.CommandArgument;
            Session["ItemID"] = linkbut.CommandArgument;
            Response.Redirect("single.aspx");
        }

        protected void currentbudding_Click(object sender, EventArgs e)
        {
            Label1.Text = "POPULAR WOMEN'S ";
            Label2.Text = "PRODUCTS NOW";
            Label3.Text = "POPULAR MEN'S ";
            Label4.Text = "PRODUCTS NOW";
            womenlist.DataSource = items.getWomenList();
            womenlist.DataBind();
            mensList.DataSource = items.getMensDetails();
            mensList.DataBind();
        }

    }
}