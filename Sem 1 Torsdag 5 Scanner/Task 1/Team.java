import java.util.ArrayList;


class Team{
	private String teamName;
	private int teamRank;
	private ArrayList<String> players  = new ArrayList<>();


public Team(String teamName){
	this.teamName = teamName;

  } // end construtor

  void setRank(int teamRank){
  	this.teamRank = teamRank;
  }

  public void addPlayer(String playerName){
    players.add(playerName);
  }

  @Override
  public String toString(){
    String output = "Team: " + teamName + "\nRank: " + teamRank + ".\nName of players: ";
    for (String name : players) {
    output += (players.indexOf(name)+1) + ". " + name + "\n";
    }
    return output;

  	//return "Team: " + teamName + "\nRank: " + teamRank + ".\nName of players: " + players;

  } // ville være god stil at bruge this. her, men det ikke nødvendigt fordi der ikke kommer nolge argumenter ind

} // end Team