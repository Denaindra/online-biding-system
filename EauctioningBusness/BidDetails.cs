using EauctioningDatabase;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EauctioningBusness
{
  public  class BidDetails
    {
        private DataBase database = new DataBase();

        public BidDetails() {
        
        }

        public void updateBidCondition(int id, double value)
        {
            database.updatebidCondition(id, value);

        }
        public void updateHistry(int id, double value,string username)
        {
            database.updatehistry(id, value, DateTime.Now,username);
        }

        public void setfalse(int p)
        {
            database.stopBiding(p);
        }
    }
}
