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
    public partial class ViewItemDetails : System.Web.UI.Page
    {
        private StoreItem item = new StoreItem();
        private BIDHistory histry = new BIDHistory();
        private BidDetails con = new BidDetails();
        private Item itemdetails;
        private EmailMessages mesage = new EmailMessages();
        ManageuserAccount useraccounts = new ManageuserAccount();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void display_Click(object sender, EventArgs e)
        {
            itemdetails=item.GetItemDetails(Convert.ToInt32(ItemID.Text));
            id.Text = ItemID.Text;
            itemname.Text = itemdetails.ItemName;
            categery.Text = itemdetails.Categery;
            startPrice.Text = Convert.ToString(itemdetails.Price);
            bidprice.Text = Convert.ToString(item.ONprice());
            enddate.Text = Convert.ToString(itemdetails.Date);
            quentity.Text = Convert.ToString(itemdetails.Quentity);
            higherbid.Text = histry.gethiesetbid(Convert.ToInt32(ItemID.Text));
            biddata.DataSource = histry.gethistry(Convert.ToInt32(ItemID.Text));
            biddata.DataBind();
        }

        protected void stop_Click(object sender, EventArgs e)
        {
            itemdetails=item.GetItemDetails(Convert.ToInt32(ItemID.Text));
            if (histry.gethiesetbid(Convert.ToInt32(ItemID.Text)) == null)
            {
                item.removeItem(Convert.ToInt32(ItemID.Text));
                con.setfalse(Convert.ToInt32(ItemID.Text));
            }
            else {

                item.removeItem(Convert.ToInt32(ItemID.Text));
                con.setfalse(Convert.ToInt32(ItemID.Text));
                item.addtoBidedlist(itemdetails, Convert.ToInt32(ItemID.Text), item.ONprice(), histry.gethiesetbid(Convert.ToInt32(ItemID.Text)));
                //string  email = useraccounts.getemail(histry.gethiesetbid(Convert.ToInt32(ItemID.Text)));
                mesage.bidstopmail(useraccounts.getemail(histry.gethiesetbid(Convert.ToInt32(ItemID.Text))),Convert.ToInt32(ItemID.Text));
            }
       }
    }
}