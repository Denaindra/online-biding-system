using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Text;
using System.Threading.Tasks;

namespace EauctioningBusness
{
    public class EmailMessages
    {
        private string email;
        public EmailMessages() { 

        
        }
        public string  Email
        {
            get { return email; }
            set { email = value; }
        }
        
        public void CreateAccount(string email,string firstname) {
            try
            {
                MailMessage mail = new MailMessage("ovinfyp@gmail.com", email,"Golden Flash","well come to Golden Flash");
                SmtpClient client = new SmtpClient("smtp.gmail.com");
                client.Port = 587;
                client.Credentials = new System.Net.NetworkCredential("ovinfyp@gmail.com", "ovinfyp123");
                client.EnableSsl = true;
                client.Send(mail);
            }
            catch (Exception ex)
            {
                string a = ex.ToString();
            }
        }
        public void bidChangeMail(string name,string email) {

            try
            {
                MailMessage mail = new MailMessage("ovinfyp@gmail.com",email, "BID states", name + "  is leading now ");
                SmtpClient client = new SmtpClient("smtp.gmail.com");
                client.Port = 587;
                client.Credentials = new System.Net.NetworkCredential("ovinfyp@gmail.com", "ovinfyp123");
                client.EnableSsl = true;
                client.Send(mail);
            }
            catch (Exception ex)
            {
                string a = ex.ToString();
            }
        
        }
        public void updatePassword(string email, string password)
        {

            try
            {
                MailMessage mail = new MailMessage("ovinfyp@gmail.com",email, "Change Password", "you now changed the login password and it's new login pass " + password);
                SmtpClient client = new SmtpClient("smtp.gmail.com");
                client.Port = 587;
                client.Credentials = new System.Net.NetworkCredential("ovinfyp@gmail.com", "ovinfyp123");
                client.EnableSsl = true;
                client.Send(mail);
            }
            catch (Exception ex)
            {
                string a = ex.ToString();
            }

        }
        public void contact(string email, string name, string message)
        {

            try
            {
                MailMessage mail = new MailMessage("ovinfyp@gmail.com", "ovinfyp@gmail.com", "Contact info", message + "  --by:- " + name + " --on:- " + email);
                SmtpClient client = new SmtpClient("smtp.gmail.com");
                client.Port = 587;
                client.Credentials = new System.Net.NetworkCredential("ovinfyp@gmail.com", "ovinfyp123");
                client.EnableSsl = true;
                client.Send(mail);
            }
            catch (Exception ex)
            {
                string a = ex.ToString();
            }
        }
        public void bidstopmail(string email,int id) {
            try
            {
                MailMessage mail = new MailMessage("ovinfyp@gmail.com", email, "Bid Achivement", "you sucessfully won item ID" +id+" modetails please conatct with the Shop owner");
                SmtpClient client = new SmtpClient("smtp.gmail.com");
                client.Port = 587;
                client.Credentials = new System.Net.NetworkCredential("ovinfyp@gmail.com", "ovinfyp123");
                client.EnableSsl = true;
                client.Send(mail);
            }
            catch (Exception ex)
            {
                string a = ex.ToString();
            }
        
        }
        public void payment(string email, int id)
        {
            try
            {
                MailMessage mail = new MailMessage("ovinfyp@gmail.com", email, "Payment", "you sucessfully pay for item ID: " + id + " thank you very much");
                SmtpClient client = new SmtpClient("smtp.gmail.com");
                client.Port = 587;
                client.Credentials = new System.Net.NetworkCredential("ovinfyp@gmail.com", "ovinfyp123");
                client.EnableSsl = true;
                client.Send(mail);
            }
            catch (Exception ex)
            {
                string a = ex.ToString();
            }

        }
    }
}
