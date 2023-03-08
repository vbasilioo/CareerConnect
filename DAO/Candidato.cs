namespace CareerConnect.DAO{
    class Candidato : Pessoa{
        private string curriculo;

        public Candidato(string curriculo) : base(){
            this.curriculo = curriculo;
        }
    }
}