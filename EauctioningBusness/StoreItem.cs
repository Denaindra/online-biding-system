using EauctioningDatabase;
using EauctioningEntity;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EauctioningBusness
{
    public class StoreItem
    {
        private Item _items;
        private DataBase database=new DataBase();
        private int _id;

      
        public StoreItem() { 
        
        }
        public int ID
        {
            get { return _id; }
            set { _id = value; }
        }
        public Item GetItemDetails(int id) {
            ID = id;
           return database.viewItem(id);
        }
        public void StoreMake(Item item) {
            database.StoreNewItem(item);
        }
        public DataTable gethistry() {
            return database.getBidStroty(ID);
        }
        public int getlastraw() {
            return database.SelectLastRaw();
        }
        
        public double ONprice() {

           return database.getLastPrice(ID);
        }

        public DataTable getMensDetails()
        {
            return database.getmensStore();
            
        }

        public DataTable getWomenList()
        {
            return database.getwomensStore();
        }

        public void updateOnprice(double bid)
        {
            database.updateonprice(ID,bid);
        }

        public void Addcondition(Double price, int p)
        {
            database.addbidCondition(price,p);
        }

        public void removeItem(int p)
        {
            database.deleteItem(p);
        }

        public void addtoBidedlist(Item itemdetails,int ID,double onprice,string customerName)
        {
            database.addbidedList(itemdetails,ID,onprice,customerName);
            database.adduseritems(itemdetails,ID,onprice,customerName);
        }

        public DataTable getcompletedItems()
        {
           return database.getbidedlist();
        }

        public DataTable GetItemDetails()
        {
            return database.itemdetails();
        }
    }
}
