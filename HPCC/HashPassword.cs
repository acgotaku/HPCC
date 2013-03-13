using System;
using System.Collections.Generic;
using System.Web;
using System.Security.Cryptography;
using System.Text;

namespace HPCC
{
    public class HashPassword
    {

        public static string Hash(string password)
        {
            HMACSHA1 hmac = new HMACSHA1(Encoding.UTF8.GetBytes("HPCC"));
            byte[] data = Encoding.UTF8.GetBytes(password);
            byte[] sig = hmac.ComputeHash(data);
            return Convert.ToBase64String(sig);
        }
    }
}