using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EauctioningEntity
{
    public class Item
    {

        private string _categery;
        private string _path;
        private DateTime _date;
        private double _price;
        private string _itemname;
        private string discription;
        private int quentity;

        public Item(string categery,string path,DateTime date,double price,string itemname,string discription,int quntitys) {
            Categery = categery;
            Path = path;
            Date = date;
            Price = price;
            ItemName = itemname;
            Discription = discription;
            Quentity = quntitys;
        }

        public Item() { 
        
        }

      

        public int Quentity
        {
            get { return quentity; }
            set { quentity = value; }
        }
        


        public string Discription
        {
            get { return discription; }
            set { discription = value; }
        }
        
        public string ItemName
        {
            get { return _itemname; }
            set { _itemname = value; }
        }
        public double Price
        {
            get { return _price; }
            set { _price = value; }
        }
        public DateTime Date
        {
            get { return _date; }
            set { _date = value; }
        }
        public string Path
        {
            get { return _path; }
            set { _path = value; }
        }
        public string Categery
        {
            get { return _categery; }
            set { _categery = value; }
        }
    }
}
