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
    public class UserRegistration
    {
      
        private Customer customer;
        private DataBase database=new DataBase();
        private Admin admin;

        
        public UserRegistration()
        {

        }

        public Admin Adminentity
        {
            get { return admin; }
            set { admin = value; }
        }
        public Customer CustomerEnti
        {
            get { return customer; }
            set { customer = value; }
        }
        public bool checkUserlogin(string username,string password) {

            return database.chheckUserlogin(username, password);
        
        }
        public bool chcustomerUSername() {
            return database.chekUSerName(customer.Username);
        }
        public bool chekcUserName(){
           return database.chekUSerName(admin.Username);
        }
        public void cusRegistrstion() {
            database.UserRegister(customer.FirstName,customer.Lastname,customer.Email,customer.Username,customer.Password1,0);
            database.insertContactInfo(customer.Email);
        }
        public void adminRegistrstion()
        {
            database.UserRegister(admin.FirstName, admin.Lastname, admin.Email, admin.Username, admin.Password1, 1);
            database.insertContactInfo(admin.Email);
        }

        public bool getUserType()
        {
            return database.getUserType(customer.Username);
        }

        public void removeAccount(User usere)
        {
            database.removeuser(usere);
        }

        public DataTable getregisteredUser()
        {
           return database.getRegisteredUSers();
        }
        public string getuserEmail(string username) {
            return database.getusemail(username);
        }
    }
}
