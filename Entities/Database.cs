namespace CareerConnect.Entities{
    class Database{
        Dictionary<string, string> contas;

        public Database(){
            contas = new Dictionary<string, string>();
        }

        public bool CriarConta(string usuario, string senha){ // recebendo parametros do Login.cs
            if(contas.ContainsKey(usuario)){ //verificando se existe o usuario
                return false;
            }else{
                contas.Add(usuario, senha);
                return true;
            }
        }

        public bool Login(string usuario, string senha){
            if(contas.ContainsKey(usuario)){
                if(contas[usuario] == senha){ //verificando se no dicionario (contas) na posicao (usuario), se o usuario inserido é compativel com a senha
                    Console.WriteLine("Voce realizou o login.");
                    return true;
                }
            }
            return false;
        }

        public bool Autenticar(string usuario){ // verifica se usuario existe
            return contas.ContainsKey(usuario);
        }

        public void EsqueciSenha(string usuario, string senha){
            contas[usuario] = senha;
        }
    }
}