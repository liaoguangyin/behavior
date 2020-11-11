using System;
using System.Collections.Generic;
using System.Text;

namespace csharp
{
    class EmailMessage:ISendMessage
    {
        public void Send()
        {
            Console.WriteLine("EmailMessage");
        }
    }
}
