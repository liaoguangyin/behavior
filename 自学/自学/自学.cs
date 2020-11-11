using System;
using System.Collections.Generic;
using System.Text;

namespace csharp.自学
{
    class 自学
    {
        public class Animal
        {
            public virtual void Eat()
            {
                Console.WriteLine("Animal eat");
            }
        }

        public class Cat : Animal
        {
            public override void Eat()
            {
                Console.WriteLine("Cat eat");
            }
        }

        public class Dog : Animal
        {
            public override void Eat()
            {
                Console.WriteLine("Dog eat");
            }
        }

        class Tester
        {
            static void Main(string[] args)
            {
                Animal[] animals = new Animal[3];

                animals[0] = new Animal();
                animals[1] = new Cat();
                animals[2] = new Dog();

                for (int i = 0; i < 3; i++)
                {
                    animals[i].Eat();
                }
            }
        }
    }
}
