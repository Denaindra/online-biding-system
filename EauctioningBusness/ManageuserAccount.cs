using EauctioningDatabase;
using EauctioningEntity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EauctioningBusness
{
   public class ManageuserAccount
    {
        private Customer customer;
        private DataBase databse = new DataBase();
        private EmailMessages mail = new EmailMessages();
        public ManageuserAccount() { 
        
        }
        public Customer Customerac
        {
            get { return customer; }
            set { 
                customer = value;
                notifyCustomer();
                  }
        }
        public void notifyCustomer() {
            //database 
            databse.updateuserlogin(customer.Username, customer.Password1);
            mail.updatePassword(databse.getmail(customer.Username),customer.Password1);
            //send maili
        }
        public string getemail(string username)
        {
            return databse.getmail(username);
        }
    }
}
