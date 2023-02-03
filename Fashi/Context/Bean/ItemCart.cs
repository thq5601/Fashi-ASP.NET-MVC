using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Fashi.Model
{
    public class ItemCart
    {
        public int id { get; set; }
        public string ten { get; set; }
        public int soluong { get; set; }
        public double giagiam { get; set; }
        public string anhmh { get; set; }
        public double tonggia()
        {
            return soluong * giagiam;
        }
    }
}