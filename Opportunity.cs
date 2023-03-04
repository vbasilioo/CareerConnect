public class Opportunity{
    private int id { get; set; }
    private string title { get; set; }
    private string description { get; set; }
    private string type { get; set; }
    private float salary { get; set; }
    private int start_date { get; set; }
    private int end_date { get; set; }
    private string requirements { get; set; }

    public void createOpportunity(string title, string description, string requirements){
        this.title = title;
        this.description = description;
        this.requirements = requirements;
    }

    public void deleteOpportunity(){
    }

    public void updateOpportunity(){
    }

    public void listOpportunities(){
    }

    public void searchOpportunity(int idOpportunity){
    }
}