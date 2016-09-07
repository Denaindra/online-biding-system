using EauctioningEntity;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EauctioningDatabase
{
    public class DataBase
    {
        private SqlConnection conn;
        private SqlCommand com;
        private string sql;
        private int a = 0;
        private Item item = new Item();
        public DataBase() {
            conn = new SqlConnection("Data Source=GAYANDENAINDRA;Initial Catalog=EcoutingShop;Integrated Security=True");
        }

        public bool chekUSerName(string pass) {
     
            int count = 0;
            try
            {
                sql = "select count(*) from Users where username=@usernames";
                conn.Open();
                com = new SqlCommand(sql,conn);
                com.Parameters.AddWithValue("usernames", pass);
                count = (int)com.ExecuteScalar();
                conn.Close();
                com.Dispose();
                    if (count==0)
                    {
                        
                        return true;
                    }
                    else {
                        return false;
                    }
            }
            catch (Exception ex) {
          
                string a = ex.ToString();
                return true;
            }
        }
        public void UserRegister(string firstname,string lastname,string email,string username,string password,int UserType)
        {
            try
            {
                sql = "INSERT INTO Users(FirstName,LastName,EmailAddress,Username,PassWord,UserType) VALUES (@fname,@lname,@email,@username,@password,@usertype)";
                conn.Open();
                com = new SqlCommand(sql, conn);
                com.Connection = conn;
                com.Parameters.Add("@fname", SqlDbType.VarChar).Value = firstname;
                com.Parameters.Add("@lname", SqlDbType.VarChar).Value = lastname;
                com.Parameters.Add("@email", SqlDbType.VarChar).Value = email;
                com.Parameters.Add("@password", SqlDbType.VarChar).Value = password;
                com.Parameters.Add("@username", SqlDbType.VarChar).Value = username;
                com.Parameters.Add("@usertype", SqlDbType.Bit).Value = UserType;
                com.ExecuteNonQuery();
                com.Dispose();
                conn.Close();
            }catch(Exception ex){
                string a = ex.ToString();
            }

        }
        public void insertContactInfo(string email) {
            try
            {
                sql = "INSERT INTO contact(email) VALUES (@useremail)";
                conn.Open();
                com = new SqlCommand(sql, conn);
                com.Connection = conn;
                com.Parameters.Add("@useremail", SqlDbType.VarChar).Value = email;
                com.ExecuteNonQuery();
                com.Dispose();
                conn.Close();
            }
            catch (Exception ex)
            {
                string a = ex.ToString();
            }
        
        }
        public bool getUserType(string username) {
            bool type = false;
            try
            {
                sql = "Select UserType from Users Where Username=@username";
                //conn = new SqlConnection(sql);
                conn.Open();
                com = new SqlCommand(sql, conn);
                com.Parameters.AddWithValue("username",username);
                SqlDataReader dred = com.ExecuteReader();

                while(dred.Read()){
                    type = Convert.ToBoolean(dred["UserType"].ToString());
                }
                com.Dispose();
                conn.Close();

                if (type )  //admin
                {
                    a = 0;
                    return true;
                }
                else  ///customer
                {
                    a = 0;
                    return false;
                }
            }
            catch (Exception ex) {
                string a = ex.ToString();
                return false;
          
            }
        
        }
        public void StoreNewItem(Item item)
        {
            try
            {
                sql = "INSERT into itemDetails (Categoery,ItemName,StartPrice,Available,EndDate,IMagePath,Discription,Quentity) VALUES (@categery,@itemname,@startprice,@available,@enddate,@imagepath,@discription,@quentity)";
                conn.Open();
                com = new SqlCommand(sql, conn);
                com.Connection = conn;
                com.Parameters.Add("@categery", SqlDbType.VarChar).Value = item.Categery;
                com.Parameters.Add("@itemname", SqlDbType.VarChar).Value = item.ItemName;
                com.Parameters.Add("@startprice", SqlDbType.VarChar).Value = item.Price;
                com.Parameters.Add("@available", SqlDbType.Float).Value = item.Price;
                com.Parameters.Add("@enddate", SqlDbType.Date).Value = item.Date;
                com.Parameters.Add("@imagepath", SqlDbType.VarChar).Value = item.Path;
                com.Parameters.Add("@discription", SqlDbType.VarChar).Value = item.Discription;
                com.Parameters.Add("@quentity", SqlDbType.VarChar).Value = item.Quentity;
                com.ExecuteNonQuery();
                com.Dispose();
                conn.Close();
            }
            catch (Exception ex)
            {
                string a = ex.ToString();
            }
        }
        public int SelectLastRaw() {
            int id=0;
            try
            {
                sql = "SELECT TOP 1 * FROM ItemDetails ORDER BY ItemID DESC";
                conn.Open();
                com = new SqlCommand(sql, conn);
                SqlDataReader dred = com.ExecuteReader();
                while (dred.Read())
                {
                    id = Convert.ToInt32(dred["ItemID"].ToString());
                }
                com.Dispose();
                conn.Close();
                return id;
            }
            catch (Exception ex) {
                string a = ex.ToString();
            }
            return id;
        
        }
        public Item viewItem(int itemID) {
            try
            {
                sql = "Select * from ItemDetails Where ItemID=@Itemid";
                conn.Open();
                com = new SqlCommand(sql, conn);
                com.Parameters.AddWithValue("Itemid", itemID);
                SqlDataReader DataReader = com.ExecuteReader();
                while (DataReader.Read())
                {
                    item.Categery = Convert.ToString(DataReader["Categoery"]);
                    item.ItemName = Convert.ToString(DataReader["ItemName"]);
                    item.Price = Convert.ToDouble(DataReader["StartPrice"]);
                    item.Date = Convert.ToDateTime(DataReader["EndDate"]);
                    item.Quentity = Convert.ToInt32(DataReader["quentity"]);
                    item.Path = Convert.ToString(DataReader["ImagePath"]);
                    item.Discription = Convert.ToString(DataReader["Discription"]);
                }
                com.Dispose();
                conn.Close();
                return item;
            }
            catch (Exception ex)
            {
                string a = ex.ToString();
            }
            return item;
        }
        public double getLastPrice(int ID) {
            double price = 0;
            try
            {
                sql = "Select lastPrice from BidCondition Where ItemID=@ID";
                conn.Open();
                com = new SqlCommand(sql, conn);
                com.Parameters.AddWithValue("ID", ID);
                SqlDataReader DataReader = com.ExecuteReader();
                while (DataReader.Read())
                {
                    price= Convert.ToDouble(DataReader["lastPrice"]);
                }
                com.Dispose();
                conn.Close();
                return price;
            }
            catch (Exception ex)
            {
                string a = ex.ToString();
            }
            return price;
        
        }
        public DataTable getBidStroty(int id) {
            DataTable tabl = new DataTable();
            try
            {
                sql = "select Date,bidPrice,username from BIDHistroy where ItemID =@id";
                conn.Open();
                com = new SqlCommand(sql, conn);
                com.Parameters.AddWithValue("id", id);
                SqlDataAdapter Sda = new SqlDataAdapter();
                Sda.SelectCommand = com;
                Sda.Fill(tabl);
                com.Dispose();
                conn.Close();
                return tabl;

            }
            catch (Exception ex)
            {
                string a = ex.ToString();
            }

            return tabl;
        }
        public void updateuserlogin(string username, string password)
        {
            try
            {
                SqlDataAdapter adapter = new SqlDataAdapter();
                sql = "update Users set PassWord='"+ password+"'Where username='"+username+"'";
                conn.Open();
                adapter.UpdateCommand = conn.CreateCommand();
                adapter.UpdateCommand.CommandText = sql;
                adapter.UpdateCommand.ExecuteNonQuery();
                conn.Close();
                adapter.Dispose();
            }
            catch (Exception ex) {
                string a = ex.ToString();
            }
        }
        public bool chheckUserlogin(string username, string password)
        {
            int temp=0;
            try
            {
                sql = "Select count(*) from Users Where Username=@username and PassWord=@password";
                conn.Open();
                com = new SqlCommand(sql, conn);
                com.Parameters.AddWithValue("username", username);
                com.Parameters.AddWithValue("password", password);
                temp = (int)com.ExecuteScalar();
                com.Dispose();
                conn.Close();

              if(temp==0){
                  return false;
              }else{
                  return true;
              }  
               
            }
            catch (Exception ex)
            {
                string a = ex.ToString();
            }
            return false;
        }
        public string getmail(string username) {
            string mail = null;
            try
            {
                sql = "Select EmailAddress from Users Where Username=@username";
                conn.Open();
                com = new SqlCommand(sql, conn);
                com.Parameters.AddWithValue("username", username);
                SqlDataReader dred = com.ExecuteReader();

                while (dred.Read())
                {
                    mail = Convert.ToString(dred["EmailAddress"].ToString());
                }
                com.Dispose();
                conn.Close();

                return mail;
            }
            catch (Exception ex) {
                string a = ex.ToString();
                return mail;
            }
        }
        public void removeuser(User usere)
        {
            try
            {
                SqlDataAdapter adapter = new SqlDataAdapter();
                sql = "Delete from Users where Username='" + usere.Username +"'";
                conn.Open();
                adapter.DeleteCommand = conn.CreateCommand();
                adapter.DeleteCommand.CommandText = sql;
                adapter.DeleteCommand.ExecuteNonQuery();
                conn.Close();
                adapter.Dispose();
            }
            catch (Exception ex)
            {
                string a = ex.ToString();
            }
        }
        public DataTable getmensStore()
        {
            DataTable tabl = new DataTable();
            try
            {
                sql = "select  ItemName,ImagePath,EndDate,ItemID,Available,Quentity from ItemDetails where Categoery='Men'";
                conn.Open();
                com = new SqlCommand(sql, conn);
                SqlDataAdapter Sda = new SqlDataAdapter();
                Sda.SelectCommand = com;
                Sda.Fill(tabl);
                com.Dispose();
                conn.Close();
                return tabl;

            }
            catch (Exception ex)
            {
                string a = ex.ToString();
            }
            return tabl;
        }
        public DataTable getwomensStore()
        {
            DataTable tabl = new DataTable();
            try
            {
                sql = "select ItemName,EndDate,ImagePath,ItemID,Available,Quentity from ItemDetails where Categoery='Women'";

                conn.Open();
                com = new SqlCommand(sql, conn);
                SqlDataAdapter Sda = new SqlDataAdapter();
                Sda.SelectCommand = com;
                Sda.Fill(tabl);
                com.Dispose();
                conn.Close();
                return tabl;
            }
            catch (Exception ex)
            {
                string a = ex.ToString();
            }
            return tabl;
        }
        public void updateonprice(int ID,double bids)
        {
            try
            {
                SqlDataAdapter adapter = new SqlDataAdapter();
                sql = "update ItemDetails set Available='" + bids + "'Where ItemID='" + ID + "'";
                conn.Open();
                adapter.UpdateCommand = conn.CreateCommand();
                adapter.UpdateCommand.CommandText = sql;
                adapter.UpdateCommand.ExecuteNonQuery();
                conn.Close();
                adapter.Dispose();
            }
            catch (Exception ex)
            {
                string a = ex.ToString();
            }
        }
        public void updatebidCondition(int id, double value)
        {
            try
            {
                SqlDataAdapter adapter = new SqlDataAdapter();
                sql = "update BidCondition set lastPrice='" + value + "'Where ItemID='" + id + "'";
                conn.Open();
                adapter.UpdateCommand = conn.CreateCommand();
                adapter.UpdateCommand.CommandText = sql;
                adapter.UpdateCommand.ExecuteNonQuery();
                conn.Close();
                adapter.Dispose();
            }
            catch (Exception ex)
            {
                string a = ex.ToString();
            }
        }
        public void updatehistry(int id, double price,DateTime date,string username)
        {
            try
            {
                sql = "INSERT into BIDHistroy (ItemID,Date,bidPrice,username) VALUES (@id,@date,@price,@username)";
                conn.Open();
                com = new SqlCommand(sql, conn);
                com.Connection = conn;
                com.Parameters.Add("@id", SqlDbType.Int).Value = id;
                com.Parameters.Add("@date", SqlDbType.DateTime).Value = date;
                com.Parameters.Add("@price", SqlDbType.Float).Value = price;
                com.Parameters.Add("@username", SqlDbType.VarChar).Value = username;
                com.ExecuteNonQuery();
                com.Dispose();
                conn.Close();
            }
            catch (Exception ex)
            {
                string a = ex.ToString();
            }
        }
        public void addbidCondition(Double price, int p)
        {
            try
            {
                sql = "INSERT into BidCondition (ItemID,lastPrice,condition) VALUES (@itemid,@price,@con)";
                conn.Open();
                com = new SqlCommand(sql, conn);
                com.Connection = conn;
                com.Parameters.Add("@itemid", SqlDbType.VarChar).Value =p;
                com.Parameters.Add("@price", SqlDbType.Float).Value = price;
                com.Parameters.Add("@con", SqlDbType.Bit).Value =true;
                com.ExecuteNonQuery();
                com.Dispose();
                conn.Close();
            }
            catch (Exception ex)
            {
                string a = ex.ToString();
            }
        }
        public string gethigestBIDOWner(int ID)
        {
            string name=null;
            try
            {
                sql = "select top 1 username from BIDHistroy where ItemID = @itemID order by bidPrice desc";
                conn.Open();
                com = new SqlCommand(sql, conn);
                com.Parameters.AddWithValue("@itemid", ID);
                SqlDataReader dred = com.ExecuteReader();
                while (dred.Read())
                {
                    name = Convert.ToString(dred["username"].ToString());
                }
                com.Dispose();
                conn.Close();
                return name;
            }
            catch (Exception ex)
            {
                string a = ex.ToString();
                return name;
            }
        }
        public void deleteItem(int p)
        {
            try
            {
                SqlDataAdapter adapter = new SqlDataAdapter();
                sql = "Delete from ItemDetails where ItemID='"+p+"'";
                conn.Open();
                adapter.DeleteCommand = conn.CreateCommand();
                adapter.DeleteCommand.CommandText = sql;
                adapter.DeleteCommand.ExecuteNonQuery();
                conn.Close();
                adapter.Dispose();
            }
            catch (Exception ex)
            {
                string a = ex.ToString();
            }
        }
        public void stopBiding(int p)
        {
            try
            {
                SqlDataAdapter adapter = new SqlDataAdapter();
                sql = "update BidCondition set condition='"+ false +"'where itemID='"+p+"'";
                conn.Open();
                adapter.UpdateCommand = conn.CreateCommand();
                adapter.UpdateCommand.CommandText = sql;
                adapter.UpdateCommand.ExecuteNonQuery();
                conn.Close();
                adapter.Dispose();
            }
            catch (Exception ex)
            {
                string a = ex.ToString();
            }
        }
        public void addbidedList(Item itemdetails,int itemid,double sellprice,string customer)
        {
            try
            {
                sql = "INSERT into BidedItems (ItemID,Categery,ItemName,StartPrice,Bidedprice,EndDate,quentity,customer) VALUES (@item,@categery,@itemn,@startp,@bidedpr,@endd,@quen,@cust)";
                conn.Open();
                com = new SqlCommand(sql, conn);
                com.Connection = conn;
                com.Parameters.Add("@item", SqlDbType.Int).Value = itemid;
                com.Parameters.Add("@categery", SqlDbType.VarChar).Value = item.Categery;
                com.Parameters.Add("@itemn", SqlDbType.VarChar).Value = item.ItemName;
                com.Parameters.Add("@startp", SqlDbType.Float).Value = item.Price;
                com.Parameters.Add("@bidedpr", SqlDbType.Float).Value = sellprice;
                com.Parameters.Add("@endd", SqlDbType.Date).Value = item.Date;
                com.Parameters.Add("@quen", SqlDbType.Int).Value = item.Quentity;
                com.Parameters.Add("@cust", SqlDbType.VarChar).Value = customer;
                com.ExecuteNonQuery();
                com.Dispose();
                conn.Close();
            }
            catch (Exception ex)
            {
                string a = ex.ToString();
            }
        }
        public DataTable getbidedlist()
        {
            DataTable tabl = new DataTable();
            try
            {
                sql = "select ItemID,Categery,ItemName,StartPrice,Bidedprice,EndDate,quentity,customer from BidedItems ";
                conn.Open();
                com = new SqlCommand(sql, conn);
                SqlDataAdapter Sda = new SqlDataAdapter();
                Sda.SelectCommand = com;
                Sda.Fill(tabl);
                com.Dispose();
                conn.Close();
                return tabl;
            }
            catch (Exception ex)
            {
                string a = ex.ToString();
            }
            return tabl;
        }
        public DataTable itemdetails()
        {
            DataTable tabl = new DataTable();
            try
            {
                sql = "select ItemID,Categoery,ItemName,StartPrice,Available,EndDate,Quentity from ItemDetails ";
                conn.Open();
                com = new SqlCommand(sql, conn);
                SqlDataAdapter Sda = new SqlDataAdapter();
                Sda.SelectCommand = com;
                Sda.Fill(tabl);
                com.Dispose();
                conn.Close();
                return tabl;
            }
            catch (Exception ex)
            {
                string a = ex.ToString();
            }
            return tabl;
        }
        public DataTable getBidStroty()
        {
            DataTable tabl = new DataTable();
            try
            {
                sql = "select ItemID,Date,bidPrice,username from BIDHistroy";
                conn.Open();
                com = new SqlCommand(sql, conn);
                SqlDataAdapter Sda = new SqlDataAdapter();
                Sda.SelectCommand = com;
                Sda.Fill(tabl);
                com.Dispose();
                conn.Close();
                return tabl;
            }
            catch (Exception ex)
            {
                string a = ex.ToString();
            }
            return tabl;
       }
        public DataTable getRegisteredUSers()
        {
            DataTable tabl = new DataTable();
            try
            {
                sql = "select FirstName,LastName,EmailAddress,Username,PassWord,UserType from Users";
                conn.Open();
                com = new SqlCommand(sql, conn);
                SqlDataAdapter Sda = new SqlDataAdapter();
                Sda.SelectCommand = com;
                Sda.Fill(tabl);
                com.Dispose();
                conn.Close();
                return tabl;
            }
            catch (Exception ex)
            {
                string a = ex.ToString();
            }
            return tabl;
        }
        public DataTable getdetails(string p)
        {
            DataTable tabl = new DataTable();
            try
            {
                sql = "select ItemID,Categery,ItemName,StartPrice,Bidedprice,EndDate,quentity,customer from CuserCart where customer='" + p + "'";
                conn.Open();
                com = new SqlCommand(sql, conn);
                SqlDataAdapter Sda = new SqlDataAdapter();
                Sda.SelectCommand = com;
                Sda.Fill(tabl);
                com.Dispose();
                conn.Close();
                return tabl;
            }
            catch (Exception ex)
            {
                string a = ex.ToString();
            }
            return tabl;  
        }
        public void adduseritems(Item itemdetails, int itemid, double sellprice, string customer)
        {
            try
            {
                sql = "INSERT into CuserCart (ItemID,Categery,ItemName,StartPrice,Bidedprice,EndDate,quentity,customer) VALUES (@item,@categery,@itemn,@startp,@bidedpr,@endd,@quen,@cust)";
                conn.Open();
                com = new SqlCommand(sql, conn);
                com.Connection = conn;
                com.Parameters.Add("@item", SqlDbType.Int).Value = itemid;
                com.Parameters.Add("@categery", SqlDbType.VarChar).Value = item.Categery;
                com.Parameters.Add("@itemn", SqlDbType.VarChar).Value = item.ItemName;
                com.Parameters.Add("@startp", SqlDbType.Float).Value = item.Price;
                com.Parameters.Add("@bidedpr", SqlDbType.Float).Value = sellprice;
                com.Parameters.Add("@endd", SqlDbType.Date).Value = item.Date;
                com.Parameters.Add("@quen", SqlDbType.Int).Value = item.Quentity;
                com.Parameters.Add("@cust", SqlDbType.VarChar).Value = customer;
                com.ExecuteNonQuery();
                com.Dispose();
                conn.Close();
            }
            catch (Exception ex)
            {
                string a = ex.ToString();
            }
        }
        public Item getitemdetails(int ID)
        {
                 
            try
            {
                sql = "Select Bidedprice from BidedItems Where ItemID=@id";
                conn.Open();
                com = new SqlCommand(sql, conn);
                com.Parameters.AddWithValue("id", ID);
                SqlDataReader dred = com.ExecuteReader();

                while (dred.Read())
                {
                    item.Price = Convert.ToDouble(dred["Bidedprice"].ToString());
                }
                com.Dispose();
                conn.Close();

                return item;
            }
            catch (Exception ex)
            {
                string a = ex.ToString();
                return item;
            }
        }
        public void storePayment(int id,string username,double amount) {

            try
            {
                sql = "INSERT into Payments (ItemID,Username,Amount) VALUES (@itemid,@username,@amount)";
                conn.Open();
                com = new SqlCommand(sql, conn);
                com.Connection = conn;
                com.Parameters.Add("@itemid", SqlDbType.Int).Value = id;
                com.Parameters.Add("@username", SqlDbType.VarChar).Value = username;
                com.Parameters.Add("@amount", SqlDbType.VarChar).Value = amount;
                com.ExecuteNonQuery();
                com.Dispose();
                conn.Close();
            }
            catch (Exception ex)
            {
                string a = ex.ToString();
            }
        
        }
        public void deleteItemCart(int itemID)
        {
        try
            {
                SqlDataAdapter adapter = new SqlDataAdapter();
                sql = "Delete from CuserCart where ItemID='" + itemID + "'";
                conn.Open();
                adapter.DeleteCommand = conn.CreateCommand();
                adapter.DeleteCommand.CommandText = sql;
                adapter.DeleteCommand.ExecuteNonQuery();
                conn.Close();
                adapter.Dispose();
            }
            catch (Exception ex)
            {
                string a = ex.ToString();
            }
        }
        public void addpayment(int itemID, double p,string username)
        {
            try
            {
                sql = "INSERT into Payments (ItemID,Username,Amount,today) VALUES (@itemid,@username,@amount,@date)";
                conn.Open();
                com = new SqlCommand(sql, conn);
                com.Connection = conn;
                com.Parameters.Add("@itemid", SqlDbType.Int).Value =itemID;
                com.Parameters.Add("@username", SqlDbType.VarChar).Value = username;
                com.Parameters.Add("@amount", SqlDbType.VarChar).Value = p;
                com.Parameters.Add("@date", SqlDbType.VarChar).Value = DateTime.Now;
                com.ExecuteNonQuery();
                com.Dispose();
                conn.Close();
            }
            catch (Exception ex)
            {
                string a = ex.ToString();
            }
        
        }
        public DataTable getpaymentinfo()
        {
            DataTable tabl = new DataTable();
            try
            {
                sql = "select * from Payments";
                conn.Open();
                com = new SqlCommand(sql, conn);
                SqlDataAdapter Sda = new SqlDataAdapter();
                Sda.SelectCommand = com;
                Sda.Fill(tabl);
                com.Dispose();
                conn.Close();
                return tabl;
            }
            catch (Exception ex)
            {
                string a = ex.ToString();
            }
            return tabl;
        }
        public DataTable getpaymentinfo(string username)
        {
            DataTable tabl = new DataTable();
            try
            {
                sql = "select * from Payments where='"+username+"'";
                conn.Open();
                com = new SqlCommand(sql, conn);
                SqlDataAdapter Sda = new SqlDataAdapter();
                Sda.SelectCommand = com;
                Sda.Fill(tabl);
                com.Dispose();
                conn.Close();
                return tabl;
            }
            catch (Exception ex)
            {
                string a = ex.ToString();
            }
            return tabl;
        }
        public string getusemail(string username)
        {
            string email = null;
            try
            {
                sql = "select EmailAddress from Users where Username= @user";
                conn.Open();
                com = new SqlCommand(sql, conn);
                com.Parameters.AddWithValue("@user",username);
                SqlDataReader dred = com.ExecuteReader();
                while (dred.Read())
                {
                    email = Convert.ToString(dred["EmailAddress"].ToString());
                }
                com.Dispose();
                conn.Close();
                return email;
            }
            catch (Exception ex)
            {
                string a = ex.ToString();
                return email;
            }
        }

        public DataTable bideditemList(string p)
        {
            DataTable tabl = new DataTable();
            try
            {
                //"select ItemID,Categery,ItemName,StartPrice,Bidedprice,EndDate,quentity,customer from CuserCart where customer='" + p + "'";
                sql = "select ItemID,Date,bidPrice from BIDHistroy where username='" + p + "'";
                conn.Open();
                com = new SqlCommand(sql, conn);
                SqlDataAdapter Sda = new SqlDataAdapter();
                Sda.SelectCommand = com;
                Sda.Fill(tabl);
                com.Dispose();
                conn.Close();
                return tabl;
            }
            catch (Exception ex)
            {
                string a = ex.ToString();
            }
            return tabl; 
        }

        public DataTable paymentdetails(string p)
        {
            DataTable tabl = new DataTable();
            try
            {
                sql = "select ItemID,Amount,today from Payments where username='" + p + "'";
                conn.Open();
                com = new SqlCommand(sql, conn);
                SqlDataAdapter Sda = new SqlDataAdapter();
                Sda.SelectCommand = com;
                Sda.Fill(tabl);
                com.Dispose();
                conn.Close();
                return tabl;
            }
            catch (Exception ex)
            {
                string a = ex.ToString();
            }
            return tabl; 
        }
    }
}
