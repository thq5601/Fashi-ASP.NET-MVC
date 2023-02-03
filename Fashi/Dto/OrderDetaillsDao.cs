using Fashi.Context;
using System.Linq;

namespace Fashi.Dto
{
    public class OrderDetaillsDao
    {
        fashiEntities2 dbObj;
        public OrderDetaillsDao()
        {
            dbObj = new fashiEntities2();
        }
        public IQueryable<OrderDetail> ChiTietGH(int Id)
        {
            var res = (from sp in dbObj.OrderDetails where sp.Id == Id select sp);
            return res;
        }
    }
}