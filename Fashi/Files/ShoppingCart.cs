using Fashi.Context;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class ShoppingCart
{
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

    public int Count
    {
        get
        {
            return (int)Items.Sum(p => p.soluong);
        }
    }


    public double Amount
    {
        get
        {
            return (double)Items.Sum(p => p.soluong * p.giagiam );
        }
    }


    public void Add(int id)
    {
        try
        {
            var p = Items.Single(i => i.id == id);
            p.soluong++;
        }
        catch 
        {
            using (var db = new fashiEntities2())
            {
                var p = db.products.Find(id);
                p.soluong = 1;
                Items.Add(p);
            }
        }
    }

    public void Remove(int id)
    {
        var p = Items.Single(i => i.id == id);
        Items.Remove(p);
    }


    public void Update(int id, int newQty)
    {
        var p = Items.Single(i => i.id == id);
        p.soluong = newQty;
    }

    public void Clear()
    {
        Items.Clear();
    }
}