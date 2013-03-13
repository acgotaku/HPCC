using System;
using System.Collections.Generic;
using System.Text;

namespace HPCC
{
    public class HPCJSPReq
    {
        private string jsppath = null;

        public string JSPPath
        {
            set { jsppath = value; }
            get { return jsppath; }
        }
        /// <summary>
        /// �յĹ��캯��
        /// </summary>
        public HPCJSPReq()
        {
            jsppath = "http://172.16.97.60:8080/hpcjq/index.jsp";
        }

        /// <summary>
        /// �����û��ӿ�
        /// </summary>
        /// <param name="uname"></param>
        /// <param name="pwd">�Ѿ�md5���ܵ�����</param>
        /// <returns>null��ʾΪ��</returns>
        public string createUser(string uname,string pwd)
        {
            
            if (jsppath == null || "".Equals(jsppath)) return "null";
            string url = jsppath + "?exec=create&uname=" + uname + "&pword=" + pwd + "&vmd5=" + StrToMD5(getYMD() + "HPC");
           // System.Windows.Forms.MessageBox.Show(url);
            //ASCIIEncoding encoding = new ASCIIEncoding();
            System.Net.HttpWebRequest myRequest = null;
            try
            {
                myRequest = (System.Net.HttpWebRequest)System.Net.WebRequest.Create(url);
            }
            catch (Exception)
            {
                return null;
            }
            myRequest.Method = "POST";
            myRequest.ContentType = "application/x-www-form-urlencoded";
            try
            {
                System.Net.HttpWebResponse myResponse = (System.Net.HttpWebResponse)myRequest.GetResponse();
                System.IO.StreamReader reader = new System.IO.StreamReader(myResponse.GetResponseStream(), Encoding.Default);
                string content = reader.ReadToEnd();
                return content.Trim();
            }
            catch (Exception)
            {
                return "exception";
            }
        }

        /// <summary>
        /// ����û�
        /// </summary>
        /// <param name="uname"></param>
        /// <returns></returns>
        public string checkUser(string uname)
        {
            return null;
        }

        /// <summary>
        /// �޸�����
        /// </summary>
        /// <param name="uname"></param>
        /// <param name="oldpwd"></param>
        /// <param name="newpwd"></param>
        /// <returns></returns>
        public string changePwd(string uname, string oldpwd, string newpwd)
        {
            return null;
        }

        /// <summary>
        /// ɾ���û�
        /// </summary>
        /// <param name="uname"></param>
        /// <param name="pwd"></param>
        /// <returns></returns>
        public string deleteUser(string uname, string pwd)
        {
            return null;
        }

        /// <summary>
        /// �õ�md5����
        /// </summary>
        /// <param name="str"></param>
        /// <returns></returns>
        public string StrToMD5(string str)
        {
            byte[] data = Encoding.GetEncoding("UTF-8").GetBytes(str);
            System.Security.Cryptography.MD5 md5 = new System.Security.Cryptography.MD5CryptoServiceProvider();
            byte[] OutBytes = md5.ComputeHash(data);

            string OutString = "";
            for (int i = 0; i < OutBytes.Length; i++)
            {
                OutString += OutBytes[i].ToString("x2");
            }
            return OutString;
        }

        /// <summary>
        /// ������� �� ��Ϊ��ǵ������ַ���
        /// </summary>
        /// <returns></returns>
        public  string getYMD()
        {
            string s = "";
            s = "" + System.DateTime.Now.Year;
            if (System.DateTime.Now.Month >= 10) s += System.DateTime.Now.Month;
            else s += ("0" + System.DateTime.Now.Month);
            if (System.DateTime.Now.Day >= 10)
            {
                s += System.DateTime.Now.Day;
            }
            else s += "0" + System.DateTime.Now.Day;
            return s;
        }
    }
}
