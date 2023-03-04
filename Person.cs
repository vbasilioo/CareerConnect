public class Person{
    private int id;
    private string name{ get; set; }
    private int age{ get; set; }
    private string email{ get; set; }
    // adicionar enum position

    public Person(string name, int age, string email){
        this.name = name;
        this.age = age;
        this.email = email;
    }

}