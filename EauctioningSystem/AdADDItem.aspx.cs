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
    public partial class AdADDItem : System.Web.UI.Page
    {
        private Item store;
        private StoreItem items=new StoreItem();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                Response.Redirect("login.aspx");
            }
            else { 
            
            
            }
        }

        protected void addbtn_Click(object sender, EventArgs e)
        {
         string d =null;
            if (Categery.SelectedValue == "Men")
            {
             d = "images/Items/men/"+ FileUpload1.FileName;
            }
            else {
                d = "images/Items/women/" + FileUpload1.FileName;
            }
            try
            {

                store = new Item(Categery.SelectedValue, d, DateTime.Parse(EndDate.Text), Double.Parse(StartPrice.Text), ItemName.Text, productDiscription.Text, Int32.Parse(quntity.SelectedValue));
                items.StoreMake(store);
                items.Addcondition(Double.Parse(StartPrice.Text), items.getlastraw());
              errro.Text = "Sucessfully Uploaded";
            }catch(Exception){
                errro.Text = "There some thing erros occur in this fileds...";
            }
        }
    }
}