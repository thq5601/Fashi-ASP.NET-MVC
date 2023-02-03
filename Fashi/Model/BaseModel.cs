using Fashi.Context;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Fashi.Model
{
    public class BaseModel
    {
        public List<category> listCate { get; set; }
        public List<menu> listMenu { get; set; }
        public List<bannersection> lstBanner { get; set; }
        public List<slide> listHero { get; set; }
          public List<womenlarge> listWomenLange { get; set; }
        public List<manlarge> listMenLange { get; set; }
        public List<partner> listLogoPartem { get; set; }
        public List<instagram> listItagram { get; set; }
        public List<product> listpro { get; set; }
        public List<latest> listLatest { get; set; }
        public List<blog> listblog { get; set; }

    }
}