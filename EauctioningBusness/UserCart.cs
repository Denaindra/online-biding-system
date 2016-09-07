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
    public class UserCart
    {
        private DataBase database=new DataBase();
        public UserCart() { 
        
        }

        public DataTable getuserCart(string p)
        {
           return database.getdetails(p);
        }

        public Item getitemdetails(int ID)
        {
            return database.getitemdetails(ID);
        }

        public void DeleteItem(int itemID)
        {
            database.deleteItemCart(itemID);
        }

        public void addpayment(int itemID, double p,string name)
        {
            database.addpayment(itemID, p,name);
        }
        public DataTable getpaymentinfor() {
            return database.getpaymentinfo();
        }

        public DataTable getbiditems(string p)
        {
            return database.bideditemList(p);
        }

        public DataTable getpaymentlist(string p)
        {
            return database.paymentdetails(p);
        }
    }
}
