using System;

namespace CareerConnect.Entities{
    class Login{
        private Database database;

        private Pessoa pessoa;

        public Login(){
            database = new Database();
            pessoa = new Pessoa();
        }

        public void Iniciar(){
            while(true){
                Console.WriteLine("Bem-vindo ao CareerConnect!");
                Console.WriteLine("1. Entrar");
                Console.WriteLine("2. Criar conta");
                Console.WriteLine("3. Esqueci minha senha");
                Console.WriteLine("4. Sair");
                string opcao = Console.ReadLine();

                switch(opcao){
                    default:
                        Console.Clear();
                        Console.WriteLine("Você nao inseriu uma opcao correta, tente novamente!");
                    break;
                    case "1":
                        Console.Clear();
                        Entrar();
                    break;
                    case "2":
                        Console.Clear();
                        CriarConta();
                    break;
                    case "3":
                        Console.Clear();
                        EsqueciMinhaSenha();
                    break;
                    case "4":
                        Console.Clear();
                        Environment.Exit(0);
                    break;
                }
            }
        }

        public void Entrar(){
            Console.WriteLine("LOGIN");
            Console.WriteLine("Informe o seu usuario: ");
            string usuario = Console.ReadLine();
            Console.WriteLine("Informe a sua senha: ");
            string senha = Console.ReadLine();
            database.Login(usuario, senha);

            if(database.Login(usuario, senha) == true){
                Console.Clear();
                pessoa.CriarPessoa();
            }else{
                Console.Clear();
                Console.WriteLine("Usuario ou senha invalidos, tente novamente.");
            }
        }

        public void CriarConta(){
            Console.WriteLine("CRIAR UMA CONTA");
            Console.WriteLine("Informe um seu usuario: ");
            string usuario = Console.ReadLine();
            Console.WriteLine("Informe uma senha: ");
            string senha = Console.ReadLine();

            if(database.CriarConta(usuario, senha)){
                Console.WriteLine("Sua conta foi criada, acesse usando seu usuario e sua senha.");
            }else{
                Console.WriteLine("Falha ao criar uma conta! Tente novamente.");
            }
        }

        public void EsqueciMinhaSenha(){
            Console.WriteLine("ESQUECI MINHA SENHA");
            Console.WriteLine("Por favor, informe o seu usuario: ");
            string usuario = Console.ReadLine();
            
            if(database.Autenticar(usuario)){
                Console.WriteLine("Insira sua nova senha: ");
                string senha = Console.ReadLine();
                database.EsqueciSenha(usuario, senha);
                Console.WriteLine("Sua senha foi alterada com sucesso!");
            }else{
                Console.WriteLine("O usuario não existe, por favor tente novamente.");
            }
        }
    }
}