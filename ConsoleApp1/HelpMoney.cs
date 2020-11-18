using System;
using System.Collections.Generic;
using System.Text;

namespace selfstudy
{
    /*帮帮币版块，定义一个类HelpMoney，表示一行帮帮币交易数据，包含你认为应该包含的字段和方法*/
    class HelpMoney
    {
        private DateTime Time { get; set; }
        private int Available { get; set; }
        private int Freeze { get; set; }
        private string Species { get; set; }
        private int Variety { get; set; }
        private string Remarks { get; set; }

        public void Gain(int num) { 
        }
        public void Frozen(int num) { 
        }
    }
}
