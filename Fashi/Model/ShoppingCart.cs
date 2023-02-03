using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Fashi.Context;
   public class ShoppingCart
    {
        /// Truy xuất giỏ hàng từ Session
        public static ShoppingCart Cart
        {
            get
            {
                var cart = HttpContext.Current.Session["Cart"] as ShoppingCart;
                if (cart == null)
                {
                    cart = new ShoppingCart();
                    HttpContext.Current.Session["Cart"] = cart;
                }
                return cart;
            }
        }

        public List<product> Items = new List<product>();
        /// Lấy số lượng hàng hóa trong giỏ
        public int Count
        {
            get
            {
                return (int)Items.Sum(p => p.soluong);
            }
        }
        /// Tính tổng số tiền của giỏ hàng
        public double Amount
        {
            get
            {
                return (double)Items.Sum(p => p.soluong * p.giaban * (1 - p.giagiam));
            }
        }
        /// Chọn hàng (bỏ hàng vào giỏ)
        public void Add(int Id)
        {
            try
            {
                var p = Items.Single(i => i.id == Id);
                p.soluong++;
            }
            catch // Chưa có trong giỏ -> Lấy từ DB
            {
                using (var db = new fashiEntities1())
                {
                    var p = db.products.Find(Id);
                    p.soluong = 1;
                    Items.Add(p);
                }
            }
        }
       /// Xóa hàng khỏi giỏ
        public void Remove(int Id)
        {
            var p = Items.Single(i => i.id == Id);
            Items.Remove(p);
        }
          /// Cap nhat so luong
        public void Update(int Id, int newQty)
        {
            var p = Items.Single(i => i.id == Id);
            p.soluong = newQty;
        }
       /// Xóa sạch giỏ hàng
        public void Clear()
        {
            Items.Clear();
        }
    }