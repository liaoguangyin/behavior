using Csharplearn;
using CSharplearn;
using System;
using System.Collections.Generic;
using System.Text;

namespace csharp
{    // 实例化文章和意见建议，调用他们
     //继承自父类的属性和方法
     //自己的属性和方法
    class Article : Content, IAppraise
    {
        //标题：内容，关键字，评论，作者，赞，踩。
        private string[] comments;
        public string[] Comments { get => comments; set => comments = value; }
        public /*override*/ void Agree()
        {

        }
        public /*override*/ void Disagree()
        {

        }

        public void Search(string keword)
        {

        }

    }
}

