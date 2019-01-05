using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace App
{
    public class IDApplication
    {
        public const string connString = @"Server=sql.neit.edu,4500;Database=SE245_nfonseca;User Id=SE245_nfonseca;Password=005111687;";
        private string
            firstName,
            middleName,
            lastName,
            dateOfBirth,
            homeWorld,
            netWorth,
            field,
            lod,
            preBlasterType,
            preStarFighter,
            idName,
            email,
            password;
        public int ID = 0;

        protected string
            feedback;

        private bool
            defector,
            preCombat;


        public string FirstName                                                 //Make all getters and setters
        {
            get
            {
                return firstName;
            }
            set
            {
                if (Validation.IsMinimumAmount(value.Length, 2))
                {
                    firstName = value;
                }
                else
                {
                    feedback += "\nERROR: First name should be 2 or more characters.";
                }
            }
        }
        public string MiddleName 
        {
            get
            {
                return middleName;
            }
            set
            {
                if (Validation.IsMinimumAmount(value.Length, 2))
                {
                    middleName = value;
                }
                else
                {
                    feedback += "\nERROR: First name should be 2 or more characters.";
                }
            }
        }
        public string LastName 
        {
            get
            {
                return lastName;
            }
            set
            {
                if (Validation.IsMinimumAmount(value.Length, 2))
                {
                    lastName = value;
                }
                else
                {
                    feedback += "\nERROR: First name should be 2 or more characters.";
                }
            }
        }
        public string DateOfBirth
        {
            get
            {
                return dateOfBirth;
            }
            set
            {
                if (Validation.IsValidDOB(value))
                {
                    dateOfBirth = value;
                }
                else
                {
                    feedback += "\nERROR: DOB should be in format mm/dd/yyyy";
                }
            }
        }
        public string HomeWorld                          //No validation since it is a drop down (so all values must be valid)
        {
            get
            {
                return homeWorld;
            }
            set
            {
                homeWorld = value;
            }
        }
        public string NetWorth                           //No validation since it is a drop down (so all values must be valid)          
        {
            get
            {
                return netWorth;
            }
            set
            {
                netWorth = value;
            }
        }
        public string Field                              //No validation since it is a drop down (so all values must be valid)                   
        {
            get
            {
                return field;
            }
            set
            {
                field = value;
            }
        }
        public string LOD                                //No validation since it is a drop down (so all values must be valid)            
        {
            get
            {
                return lod;
            }
            set
            {
                lod = value;
            }
        }
        public string PreBlasterType                    //No validation since it is a radio list (so all values must be valid)                            
        {
            get
            {
                return preBlasterType;
            }
            set
            {
                preBlasterType = value;
            }
        }
        public string PreStarFighter                    //No validation since it is a radio list (so all values must be valid)
        {
            get
            {
                return preStarFighter;
            }
            set
            {
                preStarFighter = value;
            }
        }
        public string IDName 
        {
            get
            {
                return idName;
            }
            set
            {
                if (Validation.IsMinimumAmount(value.Length, 2))
                {
                    idName = value;
                }
                else
                {
                    feedback += "\nERROR: First name should be 2 or more characters.";
                }
            }
        }
        public string Email
        {
            get
            {
                return email;
            }
            set
            {
                if (Validation.IsMinimumAmount(value.Length, 2))
                {
                    email = value;
                }
                else
                {
                    feedback += "\nERROR: First name should be 2 or more characters.";
                }
            }
        }
        public string Password
        {
            get
            {
                return password;
            }
            set
            {
                if (Validation.IsMinimumAmount(value.Length, 2))
                {
                    password = value;
                }
                else
                {
                    feedback += "\nERROR: First name should be 2 or more characters.";
                }
            }
        }
        public bool Defector
        {
            get
            {
                return defector;
            }
            set
            {
                if (Validation.IsBool(value))
                {
                    defector = value;
                }
                else
                {
                    feedback += "\nERROR: First name should be 2 or more characters.";
                }
            }
        }
        public bool PreCombat
        {
            get
            {
                return preCombat;
            }
            set
            {
                if (Validation.IsBool(value))
                {
                    preCombat = value;
                }
                else
                {
                    feedback += "\nERROR: First name should be 2 or more characters.";
                }
            }
        }

        public string Feedback
        {
            get
            {
                return feedback;
            }
            set
            {
                feedback = value;
            }
        }

        public string AddContact()
        {
            string strFeedback = "";

            //Create SQL command string
            string strSQL = "INSERT INTO MemberApp (FirstName, MiddleName, LastName, DateOfBirth, HomeWorld, NetWorth, Field, LOD, PreBlasterType, PreStarFighter, IDName, Email, IDPassword, Defector, PreCombat) VALUES (@FirstName, @MiddleName, @LastName, @DateOfBirth, @HomeWorld, @NetWorth, @Field, @LOD, @PreBlasterType, @PreStarFighter, @IDName, @Email, @IDPassword, @Defector, @PreCombat)";

            // Create a connection to DB
            SqlConnection conn = new SqlConnection();
            //Create the who, what where of the DB
            string strConn = @connString;
            conn.ConnectionString = strConn;
            System.Diagnostics.Debug.WriteLine("ONE");
            // Bark out our command
            SqlCommand comm = new SqlCommand();
            comm.CommandText = strSQL;  //Commander knows what to say
            comm.Connection = conn;     //Where's the phone?  Here it is

            //Fill in the paramters (Has to be created in same sequence as they are used in SQL Statement)
            comm.Parameters.AddWithValue("@FirstName", FirstName);
            comm.Parameters.AddWithValue("@MiddleName", MiddleName);
            comm.Parameters.AddWithValue("@LastName", LastName);
            comm.Parameters.AddWithValue("@DateOfBirth", DateOfBirth);
            comm.Parameters.AddWithValue("@HomeWorld", HomeWorld);
            comm.Parameters.AddWithValue("@NetWorth", NetWorth);
            comm.Parameters.AddWithValue("@Field", Field);
            comm.Parameters.AddWithValue("@LOD", LOD);
            comm.Parameters.AddWithValue("@PreBlasterType", PreBlasterType);
            comm.Parameters.AddWithValue("@PreStarFighter", PreStarFighter);
            comm.Parameters.AddWithValue("@IDName", IDName);
            comm.Parameters.AddWithValue("@Email", Email);
            comm.Parameters.AddWithValue("@IDPassword", Password);
            comm.Parameters.AddWithValue("@Defector", Defector);
            comm.Parameters.AddWithValue("@PreCombat", PreCombat);

            try
            {
                //Open the connection
                conn.Open();
                System.Diagnostics.Debug.WriteLine("Two");
                //Bark command and Hangup
                strFeedback = comm.ExecuteNonQuery().ToString() + " Records Added";
            }
            catch (Exception err)
            {
                System.Diagnostics.Debug.WriteLine("Three");
                strFeedback = err.Message;
            }
            finally
            {
                conn.Close();            //Disconnect
            }

            return strFeedback;

        }

        public DataSet SearchContacts(String FName, String LName)
        {
            //Create a dataset to return filled
            DataSet ds = new DataSet();


            //Create a command for our SQL statement
            SqlCommand comm = new SqlCommand();


            //Write a Select Statement to perform Search
            String strSQL = "SELECT ID, FirstName, MiddleName, LastName, DateOfBirth, HomeWorld, NetWorth, Field, LOD, PreBlasterType, PreStarFighter, IDName, Email, IDPassword, Defector, PreCombat FROM MemberApp WHERE 0=0";

            //If the First/Last Name is filled in include it as search criteria
            if (FName.Length > 0)
            {
                strSQL += " AND FirstName LIKE @FirstName";
                comm.Parameters.AddWithValue("@FirstName", "%" + FName + "%");
            }
            if (LName.Length > 0)
            {
                strSQL += " AND LastName LIKE @LastName";
                comm.Parameters.AddWithValue("@LastName", "%" + LName + "%");
            }


            //Create DB tools and Configure
            //*********************************************************************************************
            SqlConnection conn = new SqlConnection();
            //Create the who, what where of the DB
            string strConn = @connString;
            conn.ConnectionString = strConn;

            //Fill in basic info to command object
            comm.Connection = conn;     //tell the commander what connection to use
            comm.CommandText = strSQL;  //tell the command what to say

            //Create Data Adapter
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = comm;    //commander needs a translator(dataAdapter) to speak with datasets

            //*********************************************************************************************

            //Get Data
            conn.Open();                //Open the connection (pick up the phone)
            da.Fill(ds, "MemberApp");    //Fill the dataset with results from database and call it "Persons"
            conn.Close();               //Close the connection (hangs up phone)

            //Return the data
            return ds;
        }

        public SqlDataReader FindOnePerson(int intPersonID)
        {
            //Create and Initialize the DB Tools we need
            SqlConnection conn = new SqlConnection();
            SqlCommand comm = new SqlCommand();

            //My Connection String
            string strConn = @connString;

            //My SQL command string to pull up one person's data
            string sqlString =
           "SELECT ID, FirstName, MiddleName, LastName, DateOfBirth, HomeWorld, NetWorth, Field, LOD, PreBlasterType, PreStarFighter, IDName, Email, IDPassword, Defector, PreCombat FROM MemberApp WHERE ID = @ID;";

            //Tell the connection object the who, what, where, how
            conn.ConnectionString = strConn;

            //Give the command object info it needs
            comm.Connection = conn;
            comm.CommandText = sqlString;
            comm.Parameters.AddWithValue("@ID", intPersonID);

            //Open the DataBase Connection and Yell our SQL Command
            conn.Open();

            //Return some form of feedback
            return comm.ExecuteReader();   //Return the dataset to be used by others (the calling form)

        }

        public Int32 UpdateAContact()
        {
            Int32 intRecords = 0;

            //Create SQL command string
            string strSQL = "UPDATE MemberApp SET FirstName = @FirstName, MiddleName = @MiddleName, LastName = @LastName, DateOfBirth = @DateOfBirth, HomeWorld = @HomeWorld, NetWorth = @NetWorth, Field = @Field, LOD = @LOD, PreBlasterType = @PreBlasterType, PreStarFighter = @PreStarFighter, IDName = @IDName, Email = @Email, IDPassword = @IDPassword, Defector = @Defector, PreCombat = @PreCombat WHERE ID = @ID;";

            // Create a connection to DB
            SqlConnection conn = new SqlConnection();
            //Create the who, what where of the DB
            string strConn = @connString;
            conn.ConnectionString = strConn;

            // Bark out our command
            SqlCommand comm = new SqlCommand();
            comm.CommandText = strSQL;  //Commander knows what to say
            comm.Connection = conn;     //Where's the phone?  Here it is

            //Fill in the paramters (Has to be created in same sequence as they are used in SQL Statement)
            comm.Parameters.AddWithValue("@FirstName", FirstName);
            comm.Parameters.AddWithValue("@MiddleName", MiddleName);
            comm.Parameters.AddWithValue("@LastName", LastName);
            comm.Parameters.AddWithValue("@DateOfBirth", DateOfBirth);
            comm.Parameters.AddWithValue("@HomeWorld", HomeWorld);
            comm.Parameters.AddWithValue("@NetWorth", NetWorth);
            comm.Parameters.AddWithValue("@Field", Field);
            comm.Parameters.AddWithValue("@LOD", LOD);
            comm.Parameters.AddWithValue("@PreBlasterType", PreBlasterType);
            comm.Parameters.AddWithValue("@PreStarFighter", PreStarFighter);
            comm.Parameters.AddWithValue("@IDName", IDName);
            comm.Parameters.AddWithValue("@Email", Email);
            comm.Parameters.AddWithValue("@IDPassword", Password);
            comm.Parameters.AddWithValue("@Defector", Defector);
            comm.Parameters.AddWithValue("@PreCombat", PreCombat);
            comm.Parameters.AddWithValue("@ID", ID);

            try
            {
                //Open the connection
                conn.Open();
                //Run the Update and store the number of records effected
                intRecords = comm.ExecuteNonQuery();
            }
            catch (Exception err)
            {
            }
            finally
            {
                //close the connection
                conn.Close();
            }

            return intRecords;

        }

        public Int32 DeleteOnePerson(int intPersonID)
        {
            Int32 intRecords = 0;

            //Create and Initialize the DB Tools we need
            SqlConnection conn = new SqlConnection();
            SqlCommand comm = new SqlCommand();

            //My Connection String
            string strConn = @connString;

            //My SQL command string to pull up one person's data
            string sqlString = "DELETE FROM MemberApp WHERE ID = @ID;";

            //Tell the connection object the who, what, where, how
            conn.ConnectionString = strConn;

            //Give the command object info it needs
            comm.Connection = conn;
            comm.CommandText = sqlString;
            comm.Parameters.AddWithValue("@ID", intPersonID);

            //Open the DataBase Connection and Yell our SQL Command
            conn.Open();

            //Run the deletion and store the number of records effected
            intRecords = comm.ExecuteNonQuery();

            //close the connection
            conn.Close();

            return intRecords;   //Return # of records deleted

        }

        public IDApplication()
        {
            firstName = "";
            middleName = "";
            lastName = "";
            dateOfBirth = "";
            homeWorld = "";
            netWorth = "";
            field = "";
            lod = "";
            preBlasterType = "";
            preStarFighter = "";
            idName = "";
            email = "";
            password = "";
            feedback = "";
            defector = false;
            preCombat = false;
        }
    }
}