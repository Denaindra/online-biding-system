using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EauctioningEntity
{
    public class User
    {
        private string firstname;
        private string lastname;
        private string email;
        private string password1;
        private string password2;
        private string username;

        public User() { }
        public User(string firstname, string lastname, string email, string password1, string password2)
        {
            FirstName = firstname;
            Lastname = lastname;
            Email = email;
            Password1 = password1;
            Password2 = password2;
        }
        public string Username
        {
            get { return username; }
            set { username = value; }
        }
        
        public string Password2
        {
            get { return password2; }
            set { password2 = value; }
        }
        public string Password1
        {
            get { return password1; }
            set { password1 = value; }
        }
        public string Email
        {
            get { return email; }
            set { email = value; }
        }
        public string Lastname
        {
            get { return lastname; }
            set { lastname = value; }
        }
        public string FirstName
        {
            get { return firstname; }
            set { firstname = value; }
        }
        
    }
}
