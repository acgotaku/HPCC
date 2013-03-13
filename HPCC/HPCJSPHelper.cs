using System;
using System.Collections.Generic;
using System.Text;

namespace HPCC
{
    public class HPCJSPHelper
    {
        /// <summary>
        /// 获取错误的帮助，即获取错误提示信息
        /// </summary>
        /// <param name="strexec">操作名称，如 创建 为 create</param>
        /// <param name="num">返回的数字代号</param>
        /// <returns>代号描述</returns>
        public static string getHelpInfo(string strexec, string num)
        {
            if ("create".Equals(strexec))
            {
                if ("0".Equals(num))
                    return "exec 参数错误";
                else if ("1".Equals(num))
                    return "正确";
                else if ("2".Equals(num))
                    return "参数错误";
                else if ("3".Equals(num))
                    return "服务端配置出错";
                else if ("4".Equals(num))
                    return "服务端权限不够";
                else if ("5".Equals(num))
                    return "用户已经存在";
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
