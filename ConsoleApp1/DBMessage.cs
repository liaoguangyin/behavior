using System;
using System.Collections.Generic;
using System.Text;

namespace csharp
{
    class DBMessage:ISendMessage
    {
        public void Send()
        {
            Console.WriteLine(" DBMessage");
        }
        public void send()
        {
            throw new NotImplementedException();
        }
    }
}
