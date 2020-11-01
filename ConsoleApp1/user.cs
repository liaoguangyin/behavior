using System;
using System.Collections.Generic;
using System.Text;

namespace selfstudy
{
    //观察“一起帮”的：

    //注册/登录功能，定义一个User类，包含字段：Name（用户名）、Password（密码）和 邀请人（InvitedBy），和方法：Register()、Login()
    class user
    {
        private string _Name;
        private user()
        {
        }
        public user(string name, string password)
        {
            _Name = name;
            _password = password;
        }
        public string name
        {
            set
            {
                if (value == "admin")
                {
                    _Name = "系统管理员";
                }
                else
                {
                    _Name = value;
                }
            }
            get
            {
                return _Name;
            }
        }
        private string _password;
        public string password
        {
            set;
            private get;
        }

        public user _invitedBy { get; set; }
        public string _inviteCode { get; set; }
        public string AuthCode { get; set; }
    }
}
