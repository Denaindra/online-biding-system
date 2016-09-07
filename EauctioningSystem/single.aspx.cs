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
    public partial class single : System.Web.UI.Page
    {
        private Item useritem;
        private StoreItem userstorit = new StoreItem();
        private BidDetails usermakebid = new BidDetails();
        DateandTime dates = new DateandTime();
        private int userItemID;
        private double usernewBId;
        protected void Page_Load(object sender, EventArgs e)
        {
           LoadItemDetails(Convert.ToInt32(Session["ItemID"].ToString()));
           date.Text = dates.getcurrentDate();
        }

        private void LoadItemDetails(int ID)
        {
            userItemID = ID;
            try
            {
                useritem = userstorit.GetItemDetails(ID);
                itenamelabel.Text = useritem.ItemName;
                price.Text = Convert.ToString(useritem.Price);
                Enddate.Text = Convert.ToString(useritem.Date);
                quentity.Text = Convert.ToString(useritem.Quentity);
                onprice.Text = Convert.ToString(userstorit.ONprice());
                productDiscri.Text = useritem.Discription;
                Image1.ImageUrl = useritem.Path;
                Image2.ImageUrl = useritem.Path;
            }
            catch (Exception ex) {
                string a = ex.ToString();
            }
        }

        protected void bid_Click1(object sender, EventArgs e)
        {

            if (Session["username"] == null)
            {
                Response.Redirect("login.aspx");
            }
            else
            {
                if (newBID.Text != "")
                {
                    usernewBId = Convert.ToDouble(newBID.Text);
                    if (usernewBId >= userstorit.ONprice())
                    {
                        userstorit.updateOnprice(usernewBId);
                        usermakebid.updateBidCondition(userItemID, usernewBId);
                        usermakebid.updateHistry(userItemID, usernewBId, Session["username"].ToString());
                        onprice.Text = usernewBId.ToString();
                    }
                    else
                    {
                        //not valid
                    }
                }
                else
                {
                    erroinfo.Text = "*Require";
                }
            }
        }
     
    }
}