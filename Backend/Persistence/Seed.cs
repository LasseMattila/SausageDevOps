using System;
using System.Collections.Generic;
using System.Linq;
using Domain;

namespace Persistence
{
    public class Seed
    {
        public static void SeedData(DataContext context)
        {
            if (!context.Products.Any())
            {
                var countries = new List<Product>
                {
                    new Product
                    {
                        Name = "HK Sininen",
                        MeatType = "Pork",
                        Price = 10.5M,
                        Producer = "HK"
                    },
                    new Product
                    {
                        Name = "Prinssinakki",
                        MeatType = "Pork",
                        Price = 5.62M,
                        Producer = "HK"
                    },
                    new Product
                    {
                        Name = "ChorizoNakki",
                        MeatType = "Pork",
                        Price = 16.4M,
                        Producer = "Nakkikeisarit"
                    }
                };
                context.Products.AddRange(countries);
                context.SaveChanges();
            }
        }
    }
}
