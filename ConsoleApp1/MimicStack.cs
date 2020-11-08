﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Text;

namespace csharp
{
    //自己实现一个模拟栈（MimicStack）类，入栈出栈数据均为int类型，包含如下功能
    //    出栈Pop()，弹出栈顶数据入栈Push()，
    //    可以一次性压入多个数据
    //    出/入栈检查，
    //      如果压入的数据已超过栈的深度（最大容量），提示“栈溢出”
    //      如果已弹出所有数据，提示“栈已空
    public class MimicStack
    {

        static int[] container;
        public MimicStack(int length)
        {
            container = new int[length];
        }
        static int top = 0;
        public static void Push(int element)
        {
            if (top <= container.Length - 1)
            {
                container[top] = element;
                top++;
            }
            else
            {
                Console.WriteLine("栈溢出");
            }
        }
        public static int Pop() 
        {
            if (top!=0)
            {
                top--;
                return container[top];
            }
            else
            {
                Console.WriteLine("栈已空");
                return -1;
            }
        }
       
    }
}
