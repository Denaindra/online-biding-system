using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EauctioningBusness
{
    public class DateandTime
    {
        public DateandTime() { 
        
        }

        public string getcurrentDate()
        {
            DateTime localDate = DateTime.Now;
            return localDate.ToLocalTime().ToString("MM/dd/yyyy hh:mm tt");
        }

    }
}
