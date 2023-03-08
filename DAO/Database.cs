namespace CareerConnect.DAO{
    class Database{
        Dictionary<string, string> usuarios;
        Dictionary<string, string> contas;

        public Database(){
            usuarios = new Dictionary<string, string>();
            contas = new Dictionary<string, string>();
        }

        /* LOGIN */

        public bool CriarConta(string usuario, string senha){ // recebendo parametros do Login.cs
            if(usuarios.ContainsKey(usuario)){ //verificando se existe o usuario
                return false;
            }else{
                usuarios.Add(usuario, senha);
                return true;
            }
        }

        public bool Login(string usuario, string senha){
            if(usuarios.ContainsKey(usuario)){
                if(usuarios[usuario] == senha){ //verificando se no dicionario (usuarios) na posicao (usuario), se o usuario inserido é compativel com a senha
                    Console.WriteLine("Voce realizou o login.");
                    return true;
                }
            }
            return false;
        }

        public bool Autenticar(string usuario){ // verifica se usuario existe
            return usuarios.ContainsKey(usuario);
        }

        public void EsqueciSenha(string usuario, string senha){
            usuarios[usuario] = senha;
        }
    }
}