using csharp;
using System;
using System.Collections.Generic;
using System.Text;

namespace selfstudy
{
    //观察“一起帮”的：

    //注册/登录功能，定义一个User类，包含字段：Name（用户名）、Password（密码）和 邀请人（InvitedBy），和方法：Register()、Login()
    //让User类无法被继承

    public sealed class User : Entity
    {
        private string _Name;
        public User(string name, string Password)
        {
            _Name = name;
            _password = Password;
        }
        public void Register(){}
        public void Login() {}
        public string Name
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
        public string Password
        {
            set;
            private get;
        }

        public User InvitedBy { get; set; }
        public string InviteCode { get; set; }
        public string AuthCode { get; set; }
       
     
    }
}
