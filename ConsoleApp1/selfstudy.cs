using System;
using System.Dynamic;
using System.Globalization;

namespace ConsoleApp1
{
    class Selfstudy
    {
        //static void Main(string[] args)
        //{
            //作业
            //观察一起帮登录页面，用if...else ...完成以下功能。
            //用户依次由控制台输入：验证码、用户名和密码：
            //如果验证码输入错误，直接输出：“*验证码错误”；
            //如果用户名不存在，直接输出：“*用户名不存在”；
            //如果用户名或密码错误，输出：“*用户名或密码错误”
            //以上全部正确无误，输出：“恭喜！登录成功！”
            //const string code = "zzz", name = "廖", password = "4567";
            //Console.WriteLine("输入验证码");
            //string usecode = Console.ReadLine();
            //if (usecode == code)
            //{
            //    Console.WriteLine("输入用户名");
            //    string usename = Console.ReadLine();
            //    if (usename == name)
            //    {
            //        Console.WriteLine("输入密码");
            //        string usepassword = Console.ReadLine();
            //        if (usepassword == password)
            //        {
            //            Console.WriteLine("登陆成功");
            //        }
            //        else
            //        {
            //            Console.WriteLine("用户名或密码错误");
            //        }
            //    }
            //    else
            //    {
            //        Console.WriteLine("用户名不存在");
            //    }
            //}
            //else
            //{
            //    Console.WriteLine("验证码错误");
            //}
            //作业：
            //      将源栈同学姓名 / 昵称分别：
            //      按进栈时间装入一维数组，
            //      按座位装入二维数组，
            //    并输出共有多少名同学。
            //string[] students = { "刘伟-刘", "龚廷义-龚", "李智博-李", "周丁浩-周", "廖光银-廖" };
            //Console.WriteLine(students.Length);


            //string[,] student = new string[4, 2];
            //student[1, 0] = "刘伟-刘";
            //student[2, 0] = "龚廷义-龚";
            //student[0, 1] = "李智博-李";
            //student[1, 1] = "周丁浩-周";
            //student[2, 1] = "廖光银-廖";
            //Console.WriteLine(student.Length);
            //    作业：
            //         分别用for循环和while循环输出：1,2,3,4,5 和 1,3,5,7,9
            //         用for循环输出存储在一维 / 二维数组里的源栈所有同学姓名 / 昵称
            //         让电脑计算并输出：99 + 97 + 95 + 93 + ...+1的值
            //         将源栈同学的成绩存入一个double数组中，用循环找到最高分和最低分
            //         找到100以内的所有质数（只能被1和它自己整除的数）
            //         生成一个元素（值随机）从小到大排列的数组
            //         设立并显示一个多维数组的值，元素值等于下标之和。Console.Write()
            //int i = 0;
            //while (i < 6)
            //{
            //    i++;
            //    Console.WriteLine(i);
            //}
            //int i = 0;
            //while (i < 10)
            //{
            //    i++;
            //    Console.WriteLine(i);
            //    i = (i + 1);
            //for (int i = 1; i < 6; i++)
            //{
            //    Console.WriteLine(i);
            //}
            //for (int i = 1; i<=5; i++)
            //{
            //    Console.WriteLine(i = 2 * i - 1);
            //    i = i + 1;
            //} 



            //int sum = 0;
            //for (int i = 1; i < 99; i++)
            //{
            //    i += 1;
            //    sum += i;
            //}
            //Console.WriteLine(sum);



            //for (int i = 0; i < students.Length; i++)
            //{
            //    Console.WriteLine(students[i]);
            //}

            //for (int t = 0; t < student.Rank; t++)
            //{
            //    for (int i = 0; i < student.GetLength(t); i++)
            //    {
            //        for (int y = 0; y < student.GetLength(t+1); y++)
            //        {
            //            Console.WriteLine(student[i,y]);
            //        }

            //    }
            //}


            //double[] score = { 80, 70, 60, 88, 90, 95 };
            //double max = score[0];
            //for (int i = 0; i < score.Length; i++)
            //{
            //    if (score[i]>max)
            //    {
            //        max = score[i];
            //    }
            //}
            //Console.WriteLine(max);


            //double min = score[0];
            //for (int i = 0; i < score.Length; i++)
            //{
            //    if (score[i]<min)
            //    {
            //        min = score[i];
            //    }
            //}
            //Console.WriteLine(min);
            //}



            //for (int i = 2; i <=100; i++)
            //{
            //    for (int t = 2; t < i; t++)
            //    {
            //        if (i%t==0)
            //        {
            //            break;
            //        }
            //        else if (i-1==t)
            //        {
            //            Console.WriteLine(i);
            //        }
            //    }
            //}





            //int[] score = new int[10];
            //Random random = new Random();
            //score[0] = random.Next(5);
            //for (int i = 0; i < 10; i++)
            //{
            //    score[i + 1] = random.Next() + score[i];
            //}

            //for (int i = 0; i < 9; i++)
            //{
            //    for (int j =  i+1;j<10; j++)
            //    {


            //        if (score[j] < score[i])
            //        {
            //            int temp = score[i];
            //            score[i] = score[j ];
            //            score[j ] = temp;
            //        }
            //    }
            //}

            //for (int i = 0; i < score.Length; i++)
            //{
            //    Console.WriteLine(score[i]);
            //}



            //int[,] add = new int[3, 4];
            //for (int i = 0; i < add.GetLength(0); i++)
            //{
            //    for (int j = 0; j < add.GetLength(1); j++)
            //    {
            //        Console.Write(i + j+" ");
            //    }
            //}
        //}
        //作业
        //   将之前作业封装成方法（自行思考参数和返回值），并调用执行。且以后作业，如无特别声明，皆需使用方法封装。
        //   计算得到源栈同学的平均成绩（精确到两位小数），方法名GetAverage()
        //   完成“猜数字”游戏，方法名GuessMe()：
        //   随机生成一个大于0小于1000的整数
        //     用户输入一个猜测值，系统进行判断，告知用户猜测的数是“大了”，还是“小了”
        //      没猜中可以继续猜，但最多不能超过10次
        //        如果5次之内猜中，输出：你真牛逼！
        //        如果8次之内猜中，输出：不错嘛！
        //        10次还没猜中，输出：(～￣(OO)￣)ブ

        //static double GetAverage(double[] score)
        //{
        //    double sum = 0;
        //    for (int i = 0; i < score.Length; i++)
        //    {
        //        sum = sum + score[i];
        //    }
        //    double average = sum / score.Length;
        //    return average;
        //}

        //static void GuessMe()
        //{
        //    int num = new Random().Next(1000);
        //    Console.WriteLine("随机数是：" + num);
        //    for (int i = 1; i < 11; i++)
        //    {
        //        int input = Convert.ToInt32(Console.ReadLine());
        //        if (input != num)
        //        {
        //            if (i == 10)
        //            {
        //                Console.WriteLine("(～￣(OO)￣)ブ");
        //                return;
        //            }
        //            if (input > num)
        //            {
        //                Console.WriteLine($"太大了！还剩{10 - i}次");
        //                continue;
        //            }
        //            else
        //            {
        //                Console.WriteLine($"太小了！还剩{10 - i}次");
        //                continue;
        //            }
        //            {

        //            }
        //        }
        //        else
        //        {
        //            string congratulation = "";
        //            if (i >= 5)
        //            {
        //                congratulation = "你真牛逼";
        //            }
        //            else if (i <= 8);
        //            { 
        //                Console.WriteLine("不错啊");
        //            }
        //            else
        //            { 
        //                Console.WriteLine("失败");
        //            }
        //            Console.WriteLine(congratulation);
        //            break;
        //        }
        //    }
        //}




        //作业
        //     利用ref调用Swap()方法交换两个同学的床位号
        //     将登陆的过程封装成一个方法LogOn()，调用之后能够获得：
        //       true / false，表示登陆是否成功
        //       string，表示登陆失败的原因

        //static void Swap(ref int Bednumber1, ref int Bednumber2)
        //{
        //    int temp = Bednumber1;
        //    Bednumber1 = Bednumber2;
        //    Bednumber2 = temp;

        //    if (LogOn("廖", "4567", out string reason))
        //    {
        //        Console.WriteLine("");
        //    }
        //    else
        //    {
        //        Console.WriteLine("");
        //    }

        //}
        //static bool LogOn(string username, string password, out string reason)
        //{
        //    reason = "";
        //    return true;

        //}
        //作业 
        //    1 定义一个生成数组的方法：int[] GetArray()，其元素随机生成从小到大排列。利用可选参数控制：
        //    2 最小值min（默认为1）
        //      相邻两个元素之间的最大差值gap（默认为5）
        //      元素个数length（默认为10个）
        //    3 实现二分查找，方法名BinarySeek(int[] numbers, int target)：
        //        传入一个有序（从大到小/从小到大）数组和数组中要查找的元素
        //        如果找到，返回该元素所在的下标；否则，返回-1

    }

}
