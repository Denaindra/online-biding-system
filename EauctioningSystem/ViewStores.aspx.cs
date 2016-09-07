using EauctioningBusness;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EauctioningSystem
{
    public partial class ViewStores : System.Web.UI.Page
    {
        private StoreItem obj = new StoreItem();
        private BIDHistory histi = new BIDHistory();
        UserCart curt = new UserCart();
        UserRegistration userlist = new UserRegistration();
        protected void Page_Load(object sender, EventArgs e)
        {
            loadgridviews();
        }

        private void loadgridviews()
        {
            GridView1.DataSource = obj.getcompletedItems();
            GridView1.DataBind();

            GridView2.DataSource = histi.getBidistory();
            GridView2.DataBind();

            GridView3.DataSource = userlist.getregisteredUser();
            GridView3.DataBind();

            GridView4.DataSource = obj.GetItemDetails();
            GridView4.DataBind();

            GridView5.DataSource = curt.getpaymentinfor();
            GridView5.DataBind();
        }
    }
}