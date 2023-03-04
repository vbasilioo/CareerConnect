public class Login{
    private int id;
    private string username;
    private string password;
    
    public Login(string username, string password){
        this.username = username;
        this.password = password;
    }

    public bool Authenticate(string username, string password){
        return this.username.Equals(username) && this.password.Equals(password);
    }

    public string RegisterUser(string username, string password){
        return username; // so pra parar de dar erro, apagar dps
    }

    public void ForgotPassword(){
    }

    public void Logout(){
    }
}