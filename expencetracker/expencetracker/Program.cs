using System;
using System.Collections.Generic;

namespace expencetracker
{
    internal class Program
    {
        static void Main(string[] args)
        {
            int ch;
            List<expense> expense = new List<expense>();

            do
            {
                Console.WriteLine("**************************");
                Console.WriteLine("EXPENSE TRACKER MODULE");
                Console.WriteLine("**************************");
                Console.WriteLine("1. Add Expense");
                Console.WriteLine("2. View all expense");
                Console.WriteLine("3. View Total Expense");
                Console.WriteLine("4. Exit");

                try
                {
                    Console.WriteLine("Enter your choice");
                    ch = Convert.ToInt32(Console.ReadLine());

                    switch (ch)
                    {
                        case 1:
                            {
                                try
                                {
                                    expense e = new expense();
                                    e.accdet();
                                    expense.Add(e);
                                    Console.WriteLine("Expense Added Successfully");
                                }
                                catch (FormatException)
                                {
                                    Console.WriteLine("Error: Please Enter A VALID Number");
                                }
                                catch (Exception ex)
                                {
                                    Console.WriteLine("Error: " + ex.Message);
                                }
                                finally
                                {
                                    Console.WriteLine("Expense Processing Completed...");
                                }
                                break;
                            }

                        case 2:
                            {
                                Console.WriteLine("ALL EXPENSE");

                                if (expense.Count == 0)
                                {
                                    Console.WriteLine("NO EXPENSE FOUND");
                                }
                                else
                                {
                                    foreach (expense exp in expense)
                                    {
                                        exp.dispdet();
                                    }
                                }
                                break;
                            }

                        case 3:
                            {
                                double t = 0;

                                foreach (expense exp in expense)
                                {
                                    t += exp.amt;
                                }

                                Console.WriteLine("Total Expense = " + t);
                                break;
                            }

                        case 4:
                            {
                                Console.WriteLine("Thank You for using Expense Tracker");
                                break;
                            }

                        default:
                            {
                                Console.WriteLine("Invalid choice... Please try again");
                                break;
                            }
                    }
                }
                catch (FormatException)
                {
                    Console.WriteLine("Error: Please enter a valid menu choice");
                    ch = 0;
                }

            } while (ch != 4);

        }   // <-- End of Main()

        // Expense class starts here
        class expense
        {
            public int expId;
            public string category;
            public double amt;
            public string paymentMode;
            public DateTime expdate;

            // Method to accept expense details
            public void accdet()
            {
                Console.WriteLine("Enter Expense ID:");
                expId = Convert.ToInt32(Console.ReadLine());

                Console.WriteLine("Enter Expense Category:");
                category = Console.ReadLine();

                Console.WriteLine("Enter Expense Amount:");
                amt = Convert.ToDouble(Console.ReadLine());

                if (amt <= 0)
                    throw new Exception("Amount must be more than ZERO");

                Console.WriteLine("Enter Payment Method (Cash/UPI/Card):");
                paymentMode = Console.ReadLine();

                expdate = DateTime.Now;
            }

            // Method to display expense details
            public void dispdet()
            {
                Console.WriteLine("~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
                Console.WriteLine("Expense ID = " + expId);
                Console.WriteLine("Expense Category = " + category);
                Console.WriteLine("Expense Amount = " + amt);
                Console.WriteLine("Payment Mode = " + paymentMode);
                Console.WriteLine("Date = " + expdate);
                Console.WriteLine("~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
            }
        }

    }   // End of Program class
}   // End of namespace4