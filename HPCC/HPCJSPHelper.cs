using System;
using System.Collections.Generic;
using System.Text;

namespace HPCC
{
    public class HPCJSPHelper
    {
        /// <summary>
        /// ��ȡ����İ���������ȡ������ʾ��Ϣ
        /// </summary>
        /// <param name="strexec">�������ƣ��� ���� Ϊ create</param>
        /// <param name="num">���ص����ִ���</param>
        /// <returns>��������</returns>
        public static string getHelpInfo(string strexec, string num)
        {
            if ("create".Equals(strexec))
            {
                if ("0".Equals(num))
                    return "exec ��������";
                else if ("1".Equals(num))
                    return "��ȷ";
                else if ("2".Equals(num))
                    return "��������";
                else if ("3".Equals(num))
                    return "��������ó���";
                else if ("4".Equals(num))
                    return "�����Ȩ�޲���";
                else if ("5".Equals(num))
                    return "�û��Ѿ�����";
                else if ("6".Equals(num))
                    return "InterruptedException";
                else if ("7".Equals(num))
                    return "IOException";
                else if ("8".Equals(num))
                    return "NoFile or ReadError";
                else
                    return strexec;
            }
            else
            {
                return "NULL";
            }
        }
    }
}
