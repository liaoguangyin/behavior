using System;
using System.Collections.Generic;
using System.Text;

namespace csharp
{   //设计一个类FactoryContext，保证整个程序运行过程中，无论如何，外部只能获得它的唯一的一个实例化对象。
    //    （提示：设计模式之单例）
    class FactoryContext
    {
        private readonly static FactoryContext context = new FactoryContext();
        private static FactoryContext _context;     
        public static FactoryContext GetInstance()
        {
            return _context;
        }
    }
}
