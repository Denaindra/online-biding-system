using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EauctioningEntity
{
    public class Customer:User
    {
        public Customer() { }
        
        public Customer(string username,string password) {
            Username = username;
            Password1 = password;
        }
        public Customer(string firstname, string lastname, string email,string username, string password1, string password2)
        {
            FirstName = firstname;
            Lastname = lastname;
            Email = email;
            Username = username;
            Password1 = password1;
            Password2 = password2;
        }
    }
}
