using System.Text.Json;
using System.Text.Json.Serialization;
using System.Data.SqlClient;
using System.Collections.Generic;
namespace P1
{
    public class Teams
    {
        [JsonIgnore(Condition = JsonIgnoreCondition.Never)]
        public int teamId {get; set;}
        [JsonIgnore(Condition = JsonIgnoreCondition.Never)]
        public string teamName {get; set;}
        [JsonIgnore(Condition = JsonIgnoreCondition.Never)]
        public string country { get; set; }
        [JsonIgnore(Condition = JsonIgnoreCondition.WhenWritingNull)]
        public string teamFlag { get; set; }
        [JsonIgnore(Condition = JsonIgnoreCondition.WhenWritingNull)]
        public string teamJersey { get; set; }

        //Team Methods 
        //Connect
        SqlConnection con = new SqlConnection("server=DESKTOP-2NFCJSD\\STERLINGINSTANCE;database=Fifa;integrated security = true");

        // Show ALl Teams (GET list<string>)
        #region getAllTeams
        public List<Teams> getAllTeams()
        {
            List<Teams> teamsList = new List<Teams>();
            
            SqlCommand cmdAll = new SqlCommand("select * from Teams",con);
            
            con.Open();
            SqlDataReader read = cmdAll.ExecuteReader();
            while (read.Read())
            {
                Teams emptyTeam = new Teams();
                emptyTeam.teamId = (int)read[0];
                emptyTeam.teamName = (string)read[1];
                emptyTeam.country = (string)read[2];
                emptyTeam.teamFlag = (string)read[3];
                emptyTeam.teamJersey = (string)read[4];
                teamsList.Add(emptyTeam);
            }
            read.Close();
            con.Close();
            return teamsList;
        }
        #endregion

        //Get team by name and players in that team (GET)
        #region getTeamByName
        //Step 1:find team based on Name return a Team
        public Teams getTeam(string TeamName)
        {
            Teams empty = new Teams();
            //Select team
            SqlCommand cmdSearchTeams = new SqlCommand("select * from Teams where teamName = @name",con);
            cmdSearchTeams.Parameters.AddWithValue("@name",TeamName);

            con.Open();
            SqlDataReader readTeam = cmdSearchTeams.ExecuteReader();
                while (readTeam.Read())
                {
                Teams foundTeam = new Teams();
                foundTeam.teamId = (int)readTeam[0];
                foundTeam.teamName = (string)readTeam[1];
                foundTeam.country = (string)readTeam[2];
                foundTeam.teamFlag = (string)readTeam[3];
                foundTeam.teamJersey = (string)readTeam[4];
                empty = foundTeam;
            }
            
            readTeam.Close();
            con.Close();
            return empty;
        }
        #endregion

        //Add new team (post)
        #region addNewTeam
        public string addNewTeam(int T_Id, string T_name, string T_Country, string T_Flag, string T_Jersey)
        {
            SqlCommand cmdAdd = new SqlCommand("insert into Teams values(@T_Id, @T_name, @T_country, @T_Flag,@T_Jersey)",con);
            cmdAdd.Parameters.AddWithValue("@T_Id",T_Id);
            cmdAdd.Parameters.AddWithValue("@T_name", T_name);
            cmdAdd.Parameters.AddWithValue("@T_country", T_Country);
            cmdAdd.Parameters.AddWithValue("@T_Flag",T_Flag);
            cmdAdd.Parameters.AddWithValue("@T_Jersey", T_Jersey);

            con.Open();
            int checkResult = cmdAdd.ExecuteNonQuery();
            con.Close();
            if (checkResult == 0)
            {
                return "Team is already on the roster";
            }
            else
            {
                return "This team has been added";
            }

        }
        #endregion


    }
}
