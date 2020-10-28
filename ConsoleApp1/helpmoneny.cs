using System;
using System.Collections.Generic;
using System.Text;

namespace selfstudy
{
    /*帮帮币版块，定义一个类HelpMoney，表示一行帮帮币交易数据，包含你认为应该包含的字段和方法*/
    class helpmoneny
    {
        private DateTime time{get;set;}
        private int Useable { get; set; }
        private int Forzen { get; set; }
        private string Kind { get; set; }
        private int Change { get; set; }
        private string Notes { get; set; }

        public void Gain(int num) { 
        }
        public void Frozen(int num) { 
        }
    }
}
