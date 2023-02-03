using Fashi.Context;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Fashi.Dto
{
    public class SanPhamDAO
    {
        fashiEntities2 dbObj;
        public SanPhamDAO()
        {
            dbObj = new fashiEntities2();
        }

        public IQueryable<product> ListSP()
        {
            var res = (from sp in dbObj.products select sp);
            return res;
        }
    }
}