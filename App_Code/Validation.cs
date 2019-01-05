using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace App
{
    class Validation
    {
        public static bool IsMinimumAmount(int temp, int min)
        {
            bool blnResult;

            if (temp >= min)
            {
                blnResult = true;
            }
            else
            {
                blnResult = false;
            }
            return blnResult;
        }

        public static bool IsNotOverMax(int temp, int max)
        {
            bool blnResult;

            if (temp <= max)
            {
                blnResult = true;
            }
            else
            {
                blnResult = false;
            }
            return blnResult;
        }

        public static bool IsValidEmail(string temp)
        {
            bool blnResult = true;

            int atLocation = temp.IndexOf("@");
            int NextatLocation = temp.IndexOf("@", atLocation + 1);

            int periodLocation = temp.LastIndexOf(".");

            if (temp.Length < 8)
            {
                blnResult = false;
            }
            else if (atLocation < 2)
            {
                blnResult = false;
            }
            else if (periodLocation + 2 > (temp.Length))
            {
                blnResult = false;
            }

            return blnResult;
        }

        //LAB 4 - Zip should be either 5 digits or 9 digits
        public static bool IsValidZip(int temp)
        {
            bool blnResult = false;

            if (temp == 5 || temp == 9)
            {
                blnResult = true;
            }
            return blnResult;
        }

        //LAB 4 - Try to break street address into number, name and street (EX: 14 Allen Ave.)
        public static bool IsValidStreetAddress(string temp)
        {
            bool blnResult = false;

            try
            {
                string[] street = temp.Split(' ');
                if (street.Length == 3)
                {
                    int streetNum;
                    if (Int32.TryParse(street[0], out streetNum))
                    {
                        if (street[1].Length >= 2)
                        {
                            if (street[2].Length >= 2)
                            {
                                blnResult = true;
                                return blnResult;
                            }
                        }
                    }
                }
            }
            catch
            {
                return blnResult;
            }
            return blnResult;
        }
        public static bool IsValidDOB(string temp)
        {
            bool blnResult = false;
            try
            {
                
                string[] dob = temp.Split('/', '-');
                if (dob.Length == 3)
                {
                    if (dob[0].Length == 2)
                    {
                        if (dob[1].Length == 2)
                        {
                            if (dob[2].Length == 4)
                            {
                                blnResult = true;
                                return blnResult;
                            }
                        }
                    } 
                }
            }
            catch
            {
                return blnResult;
            }
            return blnResult;
        }
        public static bool IsAFutureDate(DateTime temp)
        {
            bool blnResult;

            if (temp <= DateTime.Now)
            {
                blnResult = false;
            }
            else
            {
                blnResult = true;
            }

            return blnResult;
        }
        public static bool IsBool(bool val)
        {
            if (val == true || val == false)
            {
                return true;
            }
            else return false;
        }
    }
}
