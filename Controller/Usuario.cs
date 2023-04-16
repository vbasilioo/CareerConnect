﻿using System.Collections.Generic;
using System.Linq;
using System.Windows.Forms;
using System;
using System.Threading;
using CareerConnect.Views;

namespace CareerConnect.Controller{
    public class Usuario{
        
        public int ID { get; set; }
        public string Nome { get; set; }
        public string Email { get; set; }
        public string Senha { get; set; }
        public string Cargo { get; set; }
        public int DataNascimento { get; set; }
        public string Endereco { get; set; }
        public string CNPJEmpresa { get; set; }
        public static Usuario usuarioLogado { get; private set; }

        // lista estatica com usuarios cadastrados
        private static List<Usuario> usuariosCadastrados = new List<Usuario>(){
            new Usuario(){
                ID = 0,
                Nome = "Vinicius Gonçalves Basílio",
                Email = "vinicius@gmail.com",
                Senha = "vinicius",
                Cargo = "Candidato",
                DataNascimento = 21,
                Endereco = "Jardim da Fonte, Cachoeira Paulista",
            },

            new Usuario(){
                ID = 1,
                Nome = "Maria Clara Rocha",
                Email = "maria@gmail.com",
                Senha = "maria",
                Cargo = "Coordenador",
                DataNascimento = 19,
                Endereco = "Itagacaba, Cruzeiro"
            },

            new Usuario(){
                ID = 2,
                Nome = "Eric Mendes",
                Email = "eric@gmail.com",
                Senha = "eric",
                Cargo = "Empresa",
                DataNascimento = 19,
                Endereco = "Centro, Cruzeiro",
                CNPJEmpresa = "45.186.994/0001-10"
            },

            new Usuario(){
                ID = 3,
                Nome = "Maria Clara Conde",
                Email = "mcconde@gmail.com",
                Senha = "conde",
                Cargo = "Candidato",
                DataNascimento = 19,
                Endereco = "Centro, Cruzeiro"
            },

            new Usuario(){
                ID = 4,
                Nome = "Gustavo Coutinho",
                Email = "gustavocoutinho@gmail.com",
                Senha = "gustavo",
                Cargo = "Empresa",
                DataNascimento = 19,
                Endereco = "Centro, Cruzeiro",
                CNPJEmpresa = "34.466.957/0001-40"
            }
        };

        public Usuario(){ 
            if(usuariosCadastrados == null){
                usuariosCadastrados = new List<Usuario>();
            }
            ID = Usuario.usuariosCadastrados.Count;
            //Console.WriteLine("ID: " + ID);
        }

        //construtor que esta sendo passado para a classe Candidato
        public Usuario(string nome, string endereco, int idade, string email){
            this.Nome = nome;
            this.Endereco = endereco;
            this.DataNascimento = idade;
            this.Email = email;
        }

        // adiciona um novo usuario na lista
        public static void AdicionarUsuario(Usuario usuario){
                usuariosCadastrados.Add(usuario);
        }

        // verificando se o email existe na hora de cadastra, pra evita cadastro de 2 ocnta cm msm email
        public static bool VerificarEmailExiste(string email){
            return usuariosCadastrados.Any(u => u.Email == email);
        }

        // metodo pra resgata email e senha do usuario
        public static Usuario BuscarUsuario(string email, string senha){
            return usuariosCadastrados.FirstOrDefault(u => u.Email == email && u.Senha == senha);
        }

        // metodo q busca usuario atraves de id ou nome inserido
        public static Usuario BuscarUsuarioIDouEmail(string idOuEmail){
            Usuario usuarioEncontrado = usuariosCadastrados.Find(u => u.ID.ToString() == idOuEmail || u.Email == idOuEmail);
            
            if(usuarioEncontrado != null && usuarioEncontrado.Cargo == "Candidato"){
                Buscar_Candidato formBuscarCandidato = new Buscar_Candidato(usuarioEncontrado);
                formBuscarCandidato.Show();
                return usuarioEncontrado;
            }else{
                MessageBox.Show("Usuário não encontrado ou não é um candidato.");
                return null;
            }
        }

        //metodo pra calcular idade [vai pegar o dia/mes/ano selecionado no calendario e subtrair pelo atual]
        public static int CalcularIdade(DateTime dataNascimento){
            int idade = DateTime.Now.Year - dataNascimento.Year;

            if (DateTime.Now.Month < dataNascimento.Month || (DateTime.Now.Month == dataNascimento.Month && DateTime.Now.Day < dataNascimento.Day)){
                idade--;
            }

            return idade;
        }

        // enviando mensagem pelo whatsappweb da nova senha
         public static void enviarWhatsApp(string numero, string email){
            try{
                string mensagem = Usuario.EsqueciMinhaSenha(email);

                if(numero == ""){
                    MessageBox.Show("Nenhum número adicionado!");
                }

                if(numero.Length <= 0){
                    numero = "+55" + numero;
                }

                numero = numero.Replace(" ", "");
                System.Diagnostics.Process.Start("https://web.whatsapp.com/send?phone=" + numero); // abre o zap web e o número selecionado

                // espera 35s e dps envia a mensagem automaticamente (35s por ter internets mais lentas)
                Thread.Sleep(35000); 

                SendKeys.SendWait("Olá, Eu sou a Cecília, a Assistente Virtual do CareerConnect, e estou aqui para te ajudar a recuperar sua senha!\nEssa é a sua nova senha: " 
                    + mensagem + "\nFique atento, anote em algum lugar e não passe para mais ninguém!\nAgradecemos por escolher a gente no auxílio na busca de emprego!"
                    + "\n\nUm grande abraço, Cecília e Equipe CC!");
                SendKeys.SendWait("{ENTER}");
            }catch(Exception ex){
                MessageBox.Show(ex.Message);
            }
        }

        //gera numeros aleatorios pra ser a nova senha da pessoa
        private static string gerarNumeroAleatorioWhatsApp(){
            Random randNum = new Random();
            int numero = randNum.Next();
            return numero.ToString();
        }

        //consome a API do zapzap pra enviar mensagem com senha aleatoria pro individuo
        public static string EsqueciMinhaSenha(string email){
            var usuario = usuariosCadastrados.FirstOrDefault(u => u.Email == email);

            if(usuario == null){
                MessageBox.Show("Esse e-mail não foi encontrado na lista de e-mail cadastrados. Tente novamente!");
            }

            string novaSenha = gerarNumeroAleatorioWhatsApp().ToString();
            return usuario.Senha = novaSenha;
        }

        //autenticao  usuario na hora do login
        public static bool FazerLogin(string email, string senha){
           Usuario usuario = Usuario.BuscarUsuario(email, senha);

           if (usuario != null){
               usuarioLogado = usuario;
               Dashboard dashboard = new Dashboard();
               dashboard.Show();
               return true;
           }else{
                MessageBox.Show("Email ou senha incorretos!");
               return false;
           }
        }

        //verifica o cargo do usuario lgoado pra ocultar ou deixar amostra os botoes
        public static string VerificarCargoUsuario(){
            switch(usuarioLogado.Cargo){
                case "Candidato":
                    return "Candidato";
                case "Coordenador":
                    return "Coordenador";
                case "Empresa":
                    return "Empresa";
                case "Selecione":
                    return "";
                default:
                    return "Outros";
            }
        }

        //metodo q busca (cria a lista) de candidatos
        public static List<Usuario> BuscarCandidatos(){
            return usuariosCadastrados.FindAll(u => u.Cargo == "Candidato");
        }

        //buscar usuario pro email ou id
        public static Usuario BuscarUsuarioEmailOuID(string emailOuID){
            if(int.TryParse(emailOuID, out int id)){ //verificando se é int
                return usuariosCadastrados.FirstOrDefault(u => u.ID == id); // busca por ID
            }else{
                return usuariosCadastrados.FirstOrDefault(u => u.Email.ToLower() == emailOuID.ToLower()); // busca o email td minusculo pra evitar erros
            }
        }

        //verificar se CNPJ do usuario ja existe
        public static bool VerificarCNPJExiste(string cnpj){
            return usuariosCadastrados.Any(u => u.CNPJEmpresa == cnpj);
        }

        //metodo que busca o usuario na grid oportunidades e retorna se achou ou nao
        public static void BuscarUsuarioNaGrid(string nomeOuID){
            Usuario usuarioEncontrado = null;
            if(int.TryParse(nomeOuID, out int id)){ //verificando se é int{
                usuarioEncontrado = usuariosCadastrados.FirstOrDefault(u => u.ID == id); // busca por ID
            }else{
                usuarioEncontrado = usuariosCadastrados.FirstOrDefault(u => u.Nome.ToLower() == nomeOuID.ToLower()); // busca o nome todo minúsculo pra evitar erros
            }

            if(usuarioEncontrado != null){
                Buscar_Candidato formBuscarCandidato = new Buscar_Candidato(usuarioEncontrado);
                formBuscarCandidato.Show();
            }else{
                MessageBox.Show("Candidato não encontrado!");
            }
        }

        //metodo q busca (cria a lista) de empresas
        public static List<Usuario> ListarEmpresas(){
            return usuariosCadastrados.FindAll(u => u.Cargo == "Empresa");
        }

        //buscar usuario por cnpj
        public static Usuario BuscarUsuarioPorCNPJ(string cnpj){
            return usuariosCadastrados.FirstOrDefault(u => u.CNPJEmpresa == cnpj);
        }

        //metodo pra obter o usuario logado
        public static Usuario GetUsuarioLogado(string cnpj){
            int idUsuarioLogado = ObterIDUsuarioLogado(cnpj);
            
            if(idUsuarioLogado == -1) return null;

            foreach(Usuario usuario in usuariosCadastrados){
                if(usuario.ID == idUsuarioLogado) return usuario;
            }

            return null;
        }

        //metodo pra obter ID do usuario logado
        public static int ObterIDUsuarioLogado(string cnpj){
            int idUsuarioLogado = -1;

            foreach(Usuario usuario in usuariosCadastrados){
                if(usuario.CNPJEmpresa == cnpj){
                    idUsuarioLogado = usuariosCadastrados.IndexOf(usuario);
                    break;
                }
            }

            return idUsuarioLogado;
        }
        
        public bool VerificarEmpresa(string cnpj, int id){
            Usuario usuarioLogado = GetUsuarioLogado(cnpj);
    
            // ve se o cnpj do usuariologado é igual o informado
            if (usuarioLogado.CNPJEmpresa == cnpj) if (this.ID == id) return true;

            return false;
        }

        //metodo ao contrario do pegar idade, agr pra retornar idade pro datepicker
        public static DateTime ObterDataNascimento(int idade){
            DateTime dataAtual = DateTime.Now;
            int anoNascimento = dataAtual.Year - idade;
            int mesNascimento = dataAtual.Month;
            int diaNascimento = dataAtual.Day;

            // ajusta o mes e dia do nascimento se a data ainda n passou esse ano
            if (dataAtual.Month < mesNascimento || (dataAtual.Month == mesNascimento && dataAtual.Day < diaNascimento))
            {
                anoNascimento--;
            }

            return new DateTime(anoNascimento, mesNascimento, diaNascimento);
        }

        //editando dados dos usuario
        public static void EditarUsuario(Usuario usuarioLogado, string nome, string email, string cargo, DateTime datanascimento, string endereco, string cnpj){
            usuarioLogado.Nome = nome;
            usuarioLogado.Email = email;
            usuarioLogado.Cargo = cargo;
            usuarioLogado.DataNascimento = CalcularIdade(datanascimento);
            usuarioLogado.Endereco = endereco;
            usuarioLogado.CNPJEmpresa = cnpj;
            MessageBox.Show("Dados editados com sucesso!");
        }

        // converte a idade para data de nascimento correspondente
        public static DateTime CalcularDataNascimento(int idade){
            var now = DateTime.Now;
            var dataNascimento = new DateTime(now.Year - idade, now.Month, now.Day);
            if(dataNascimento > now){
                dataNascimento = dataNascimento.AddYears(-1);
            }
            return dataNascimento;
        }
    }
}
