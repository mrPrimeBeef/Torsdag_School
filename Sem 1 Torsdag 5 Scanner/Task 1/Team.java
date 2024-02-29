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

  @Override
  public String toString(){
  	return "Team: " + teamName + ". Rank: " + teamRank;
  }

} // end Team