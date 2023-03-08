// VER COMO USAR O ENUM PRA RECEBER COMO PARAMETRO, NAO TO SABENDO
// PERGUNTAR
// DEPOIS DISSO, APAGAR ESSES COMENTARIOS E ADICIONAR ELE COMO PARAMETRO NO CRIAR PESSOA

namespace CareerConnect.DAO{
    class Pessoa{
        private string _nome; 
        private int _idade { get; set; }
        private string _email;
        private int _telefone;
        private string _endereco;
        //private Cargo cargo;

        public Pessoa(){}

        public void CriarPessoa(){
            Console.WriteLine("POR FAVOR, INSIRA OS SEUS DADOS: ");

            Console.Write("Qual o seu nome completo: ");
            string nome = Console.ReadLine();
            bool verificaNome;

            if(verificaNome = String.IsNullOrEmpty(nome)){
                Console.WriteLine("FALHA: Voce enviou o campo nome totalmente vazio.");
            }else if(verificaNome = String.IsNullOrWhiteSpace(nome)){
                Console.WriteLine("FALHA: Voce enviou o campo nome com espaços.");
            }

            // QUANDO ENVIO UM CAMPO NULO, O CÓDIGO QUEBRA
            Console.Write("Qual a sua idade: ");
            int idade = int.Parse(Console.ReadLine());

            if(idade < 0){
                Console.WriteLine("FALHA: Voce enviou uma idade menor que zero.");
            }else if(idade < 18){
                Console.WriteLine("FALHA: Voce deve possuir mais de 18 anos para usar o CareerConnect.");
            }

            Console.Write("Qual o seu e-mail: ");
            string email = Console.ReadLine();
            bool verificaEmail;

            if(verificaEmail = String.IsNullOrEmpty(nome)){
                Console.WriteLine("FALHA: Voce enviou o campo nome totalmente vazio.");
            }else if(verificaEmail = String.IsNullOrWhiteSpace(nome)){
                Console.WriteLine("FALHA: Voce enviou o campo nome com espaços.");
            }

            Console.Write("Qual o seu endereco: ");
            string endereco = Console.ReadLine();
            bool verificaEndereco;

            if(verificaEndereco = String.IsNullOrEmpty(nome)){
                Console.WriteLine("FALHA: Voce enviou o campo nome totalmente vazio.");
            }else if(verificaEndereco = String.IsNullOrWhiteSpace(nome)){
                Console.WriteLine("FALHA: Voce enviou o campo nome com espaços.");
            }


            if((verificaNome == false) && (verificaEndereco == false) && (verificaEmail == false)){
                this._nome = nome;
                this._idade = idade;
                this._email = email;
                this._endereco = endereco;
                Console.Clear();
                Console.WriteLine($"{nome}, o seu cadastro foi finalizado. Faça bom uso do CareerConnect!");

                int acesso;

                do{
                    Console.WriteLine("Voce deseja acessar (digite numeros): ");
                    Console.WriteLine("1. Tornar-se (candidato, coordenador, empresa)\n" +
                    "2. Area de oportunidades\n" +
                    "3. Area de Candidatura\n" +
                    "4. Area de Proposta\n" +
                    "5. Area de Propostas\n0. Sair");
                    acesso = int.Parse(Console.ReadLine());

                    switch(acesso){
                        default:
                            
                            break;
                        case 0:
                            break;
                        case 1:
                            break;
                        case 2:
                            break;
                        case 3:
                            break;
                        case 4:
                            break;
                        case 5:
                            break;
                    }

                }while(acesso!=0);
            }
        }

        public void AtualizarPessoa(string nome, int idade, string email, string endereco){
            Console.WriteLine("Você está prestes a atualizar os seus dados, tem certeza que deseja continuar?");
            Console.WriteLine("Sim ou não?");
            string escolha = Console.ReadLine();

            if(escolha.ToLower() == "sim"){
                Console.WriteLine("Informe o seu novo nome: ");
                string novoNome = Console.ReadLine();
                Console.Write("Informe sua nova idade: ");
                int novaIdade = int.Parse(Console.ReadLine());
                Console.Write("Informe o seu novo e-mail: ");
                string novoEmail = Console.ReadLine();
                Console.Write("Informe seu novo telefone: ");
                int novoTelefone = int.Parse(Console.ReadLine());
                Console.Write("Informe o seu novo endereco: ");
                string novoEndereco = Console.ReadLine();

                Console.WriteLine();

                Console.WriteLine($"NOVOS DADOS: \nNOME: {novoNome}\nIDADE: {novaIdade}\nE-MAIL: {novoEmail}\nTELEFONE: {novoTelefone}\nENDERECO: {novoEndereco}");
                Console.Write("Deseja confirmar esses dados?\nSim ou não?: ");
                string confirmar = Console.ReadLine();

                if(confirmar.ToLower() == "sim"){
                    this._nome = novoNome;
                    this._idade = novaIdade;
                    this._email = novoEmail;
                    this._telefone = novoTelefone;
                    this._endereco = novoEndereco;
                    Console.WriteLine("Seus dados foram atualizados com sucesso!");
                }else if(confirmar.ToLower() == "nao"){
                    Console.WriteLine("Você cancelou a atualização de dados.");
                }
            }else if(escolha.ToLower() == "nao"){
                Console.WriteLine("Você cancelou a atualizacao de dados.");
            }
        }

        public string Nome{
            get{
                return _nome;
            }
            set{
                if(value != null && value.Length > 0){
                    this._nome = value;
                }
            }
        }

        public string Email{
            get{
                return _email;
            }
            set{
                if(value != null && value.Length > 0){
                    this._email = value;
                }
            }
        }

        public string Endereco{
            get{
                return _endereco;
            }
            set{
                if(value != null && value.Length > 0){
                    this._endereco = value;
                }
            }
        }

        public override string ToString(){
            return this._nome + "\n" + this._idade + "\n" + this._email + "\n" + this._endereco;
        }
    }
}