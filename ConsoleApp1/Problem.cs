using CSharplearn;
using System;

namespace selfstudy
{/*定义一个类Problem，包含字段：标题（Title）、正文（Body）、悬赏（Reward）、发布时间（PublishDateTime）和作者（Author），和方法Publish()*/
    class Problem:Content
    {
        private string _Title { get; set; }
        private string _Body { get; set; }
        public Problem(string boby)
        {
            _Body = boby; 
        }
        private Problem() 
        {
        }
        private int _reward;
      
        public int _Reward 
        {
            get { return _reward; }
            set 
            {
                if (value<0)
                {
                    Console.WriteLine("悬赏不能为负数");
                    return;
                }
            }
        }
        private DateTime _publisaDateTime { get; set; }
        private int _Author { get; set; }
        //    一起帮的求助可以有多个（最多10个）关键字，请为其设置索引器，以便于我们通过其整数下标进行读写。
        private string[] _keywords = new string [10];

        public string this[int index] 
        {
        set { _keywords[index - 1] = value; }
        get { return _keywords[index - 1]; }
        }
        //public override void Publish()
        //{
        //    _Author.HelpMoney -= _Reward;//发布减少帮帮比

        //    _Reward--;//需要消耗其设置悬赏数量的帮帮币
        //}
    }
 

}
