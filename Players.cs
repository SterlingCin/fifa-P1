using System.Text.Json;
using System.Text.Json.Serialization;
using System.Runtime.Serialization;
using System.Data.SqlClient;

namespace P1
{
    public class Players
    {
        [JsonIgnore(Condition = JsonIgnoreCondition.Never)]
        public int playerId { get; set; }
        [JsonIgnore(Condition = JsonIgnoreCondition.Never)]
        public string playerName { get; set; }
        [JsonIgnore(Condition = JsonIgnoreCondition.Never)]
        public int playerTeamId { get; set; }
        [JsonIgnore(Condition = JsonIgnoreCondition.WhenWritingNull)]
        public string playerImage{ get; set; }
        [JsonIgnore(Condition = JsonIgnoreCondition.Never)]
        public string playerPosition { get; set; }

        //Dictionary to hold acceptable values for positions
        public Dictionary<string, string> Positions = new Dictionary<string, string>()
        {
            {"Stiker","ST" },
            {"Goal Keeper","GK" },
            {"GoalKeeper","GK" },
            {"Right Midfielder","RM" },
            {"Right Wing", "RW" },
            {"Right Back", "RB" },
            { "Right Wing Back", "RWB"},
            {"Left MidFielder","LM"},
            {"Left Wing", "LW" },
            {"Left Back", "LB" },
            {"Left Wing Back","LWB" },
            {"Center Midfielder", "CM" },
            {"Center Forward", "CF" },
            {"Center Back", "CB" },
            {"Center Attacker Midfielder", "CAM" },
            {"Center Defensive Midfielder", "CDM" }
        };

        //Player Methods 
        //Connect
        SqlConnection con = new SqlConnection("server=DESKTOP-2NFCJSD\\STERLINGINSTANCE;database=Fifa;integrated security = true");
        //Get players by team (used in TeamDataController getTeamByName)
        #region GetMembersByTeam 
        public List<Players> getTeamPlayers(Teams P_Team)
        {
            int searchId = P_Team.teamId;
            List<Players> teamPlayers = new List<Players>();

            //collect teams players
            SqlCommand cmdSearchPlayers = new SqlCommand("select * from Players where playerTeamId = @searchId", con);
            cmdSearchPlayers.Parameters.AddWithValue("@searchId", searchId);

            con.Open();
            SqlDataReader readPlayers = cmdSearchPlayers.ExecuteReader();
            while (readPlayers.Read())
            {
                Players newPlayer = new Players();

                newPlayer.playerId = (int)readPlayers[0];
                newPlayer.playerName = (string)readPlayers[1];
                newPlayer.playerPosition = (string)readPlayers[2];
                newPlayer.playerTeamId = (int)readPlayers[3];
                newPlayer.playerImage = (string)readPlayers[4];
                teamPlayers.Add(newPlayer);
            }

            readPlayers.Close();
            con.Close();
            return teamPlayers;
        }
        #endregion

        //Get Player by name
        #region GetMemberByName
        public Players getPlayer(string name)
        {
            Players emptyMember = new Players();
            //Select by name
            SqlCommand cmdSearchPlayers = new SqlCommand("select * from Players where playerName = @name", con);
            cmdSearchPlayers.Parameters.AddWithValue("@name", name);

            con.Open();
            SqlDataReader readPlayer = cmdSearchPlayers.ExecuteReader();
            while (readPlayer.Read())
            {
                Players foundPlayer = new Players();
                foundPlayer.playerId= (int)readPlayer[0];
                foundPlayer.playerName = (string)readPlayer[1];
                foundPlayer.playerPosition = (string)readPlayer[2];
                foundPlayer.playerTeamId = (int)readPlayer[3];
                foundPlayer.playerImage= (string)readPlayer[4];
                emptyMember = foundPlayer;
            }

            readPlayer.Close();
            con.Close();
            return emptyMember;
        }
        #endregion

        //getTeamByPosition[all accepted positions in Positions string dictionary]
        //return List<Players> 
        //parameter String Position[Key value from PlayersTable]
        #region ListMemebersByPosition
        public List<Players> listPlayersByPositon(string P_Position)
        {
            List<Players> playerRoster = new List<Players>();
            if (P_Position == "GoalKeeper" || P_Position =="Goal Keeper")
            {
                string position1 = "GoalKeeper";
                SqlCommand cmdGetPlayers = new SqlCommand("select * from Players where playerPosition = @P_Position", con);
                cmdGetPlayers.Parameters.AddWithValue("@P_Position",position1 );

                con.Open();
                SqlDataReader read1 = cmdGetPlayers.ExecuteReader();

                while (read1.Read())
                {
                    Players newPlayer = new Players();
                    newPlayer.playerId = (int)read1[0];
                    newPlayer.playerName = (string)read1[1];
                    newPlayer.playerPosition = (string)read1[2];
                    newPlayer.playerTeamId = (int)read1[3];
                    newPlayer.playerImage = (string)read1[4];
                    playerRoster.Add(newPlayer);
                }

                read1.Close();
                con.Close();

                string position2 = "Goal Keeper";
                SqlCommand cmdGetPlayer2 = new SqlCommand("select * from Players where playerPosition = @P_Position2", con);
                cmdGetPlayer2.Parameters.AddWithValue("@P_Position2", position2);

                con.Open();
                SqlDataReader read2 = cmdGetPlayer2.ExecuteReader();

                while (read2.Read())
                {
                    Players newPlayer = new Players();
                    newPlayer.playerId = (int)read2[0];
                    newPlayer.playerName = (string)read2[1];
                    newPlayer.playerPosition = (string)read2[2];
                    newPlayer.playerTeamId = (int)read2[3];
                    newPlayer.playerImage = (string)read2[4];
                    playerRoster.Add(newPlayer);
                }
                read2.Close();
                con.Close();
                return playerRoster;
            }
            else
            {
                SqlCommand cmdGetPlayers = new SqlCommand("select * from Players where playerPosition = @P_Position", con);
                cmdGetPlayers.Parameters.AddWithValue("@P_Position", P_Position);

                con.Open();
                SqlDataReader getDetail = cmdGetPlayers.ExecuteReader();

                while (getDetail.Read())
                {
                    Players newPlayer = new Players();
                    newPlayer.playerId = (int)getDetail[0];
                    newPlayer.playerName = (string)getDetail[1];
                    newPlayer.playerPosition = (string)getDetail[2];
                    newPlayer.playerTeamId = (int)getDetail[3];
                    newPlayer.playerImage = (string)getDetail[4];
                    playerRoster.Add(newPlayer);
                }

                getDetail.Close();
                con.Close();
                return playerRoster;
            }
            
        }
        #endregion

        //Add Player
        #region AddPlayer
        public string addPlayer(int NewID, string NewName, string NewPosition, int TeamID, string NewPic)
        {
            SqlCommand cmdAdd = new SqlCommand("insert into Players values(@NewID,@NewName,@NewPosition, @TeamID,@NewPic)", con);
            cmdAdd.Parameters.AddWithValue("@NewID",NewID);
            cmdAdd.Parameters.AddWithValue("@NewName",NewName);
            cmdAdd.Parameters.AddWithValue("@NewPosition",NewPosition);
            cmdAdd.Parameters.AddWithValue("@TeamID", TeamID);
            cmdAdd.Parameters.AddWithValue("@NewPic", NewPic);

            con.Open();
            int addResult = cmdAdd.ExecuteNonQuery();
            con.Close();

            if (addResult == 0)
            {
                return "The Player was not Added";
            }
            else
            {
                return "This Player has been added";
            }
        
        }
        #endregion

        //update players
        #region UpdatePlayers
        public string updatePlayer(int playerID, string newName, string newPosition, int newTeamId, string newImage)
        {
            SqlCommand cmdUpdate = new SqlCommand("update Players set playerName = @newName,playerPosition=@newPosition, playerTeamId=@newTeamId,playerImage = @newImage where playerId = @playerID",con);
            cmdUpdate.Parameters.AddWithValue("@playerID", playerID);
            cmdUpdate.Parameters.AddWithValue("@newName", newName);
            cmdUpdate.Parameters.AddWithValue("@newPosition", newPosition);
            cmdUpdate.Parameters.AddWithValue("@newTeamId", newTeamId);
            cmdUpdate.Parameters.AddWithValue("@newImage", newImage);

            con.Open();
            int updateResult = cmdUpdate.ExecuteNonQuery();
            con.Close();
            if(updateResult == 0)
            {
                return "Player could not be found";
            }
            else
            {

                return "Player has been updated";
            }
            
        }
        #endregion

        //Delete Player
        #region DeletePlayer
        public string DeletePlayer(int playerID)
        {
            SqlCommand cmdDelete = new SqlCommand("delete from Players where playerId = @playerID",con);
            cmdDelete.Parameters.AddWithValue("@playerID", playerID);

            con.Open();
            int deleteResult = cmdDelete.ExecuteNonQuery();
            con.Close();

            if (deleteResult == 0)
            {
                return "Player has not been deleted";
            }
            else
            {
                return "Player has been deleted";
            }
        }
        #endregion
    }
}
