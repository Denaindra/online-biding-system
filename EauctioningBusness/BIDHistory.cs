using EauctioningDatabase;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EauctioningBusness
{
   public class BIDHistory
    {
      private  DataBase database = new DataBase();

       public BIDHistory() { 
       
       }

       public DataTable gethistry(int ID)
       {
           return database.getBidStroty(ID);
       }

       public string gethiesetbid(int ID) {
          return database.gethigestBIDOWner(ID);
       }

       public DataTable getBidistory()
       {
           return database.getBidStroty();
       }
    }
}
