using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BTL_N07
{
    public class CartItem
    {
        public Product product { get; set; }
        public int quantity { get; set; }
        public CartItem()
        {
            product = new Product();
        }
        public override bool Equals(object obj)
        {
            CartItem c = (CartItem)obj;
            return this.product.MaSanPham.Equals(c.product.MaSanPham);
        }
    }
}