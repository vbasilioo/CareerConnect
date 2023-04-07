﻿using CareerConnect.Controller;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Controls;
using System.Windows.Forms;

namespace CareerConnect.Views{
    public partial class Vagas : Form{

        private List<Usuario> candidatos;
        private List<Usuario> empresas;
        private Oportunidade oportunidade;
        List<Oportunidade> oportunidadesFiltradas = Oportunidade.ListarOportunidades();

        public Vagas(){
            InitializeComponent();
            AtualizarGridView(); // atualiza a GridView no construtor
            VerificacaoCargo(); //verifica o cargo do usuario logado para mostrar ou nao X botoes
        }

        private void btnCadastrarVaga_Click(object sender, EventArgs e){
            Cadastrar_Oportunidade cop = new Cadastrar_Oportunidade();
            Cadastrar_Oportunidade.FormVagas = this; // ref ao form vagas
            cop.Show();
        }

        private void GridOportunidades_CellContentClick(object sender, DataGridViewCellEventArgs e){
            AtualizarGridView(); // atualiza a GridView
        }

        public void VerificacaoCargo(){
            if(Usuario.VerificarCargoUsuario() == "Candidato"){
                btnListarCandidatos.Visible = false;
                btnEditarVaga.Visible = false;
                btnDesassociarCandidato.Visible = false;
                btnDeletarVaga.Visible = false;
                btnCadastrarVaga.Visible = false;
                btnBuscarCandidato.Visible = false;
                btnAssociarCandidato.Visible = false;
                btnListarEmpresas.Visible = false;
                btnVerAssociados.Visible = false;
            }else if(Usuario.VerificarCargoUsuario() == "Coordenador"){
                btnDeletarVaga.Visible = false;
                btnCadastrarVaga.Visible = false;
                btnEditarVaga.Visible = false;
                btnCandidatar.Visible = false;
                btnAttCandidatura.Visible = false;
                btnListarCandidaturas.Visible = false;
                btnExcluirCandidatura.Visible = false;
                btnVerAssociados.Visible = false;
                label1.Visible = false;
                campoPesquisarEmpresa.Visible = false;
            }else if(Usuario.VerificarCargoUsuario() == "Empresa"){
                btnBuscarCandidato.Visible = false;
                btnAssociarCandidato.Visible = false;
                btnDesassociarCandidato.Visible = false;
                btnListarCandidatos.Visible = false;
                btnListarEmpresas.Visible = false;
                btnCandidatar.Visible = false;
                btnAttCandidatura.Visible = false;
                btnListarCandidaturas.Visible = false;
                btnExcluirCandidatura.Visible = false;
                label1.Visible = false;
                campoPesquisarEmpresa.Visible = false;
            }
        }

        public void AtualizarGridView(){
            GridOportunidades.DataSource = oportunidadesFiltradas;
            GridOportunidades.ReadOnly = true;
            GridOportunidades.DefaultCellStyle.Padding = new Padding(0, 10, 0, 10);
            GridOportunidades.DefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleCenter;
            GridOportunidades.RowTemplate.Height = 45;
            GridOportunidades.AutoSizeRowsMode = DataGridViewAutoSizeRowsMode.AllCells;
            GridOportunidades.Columns[0].HeaderText = "ID";
            GridOportunidades.Columns[0].Width = 40;
            GridOportunidades.Columns[0].HeaderCell.Style.Font = new Font("Arial", 12, FontStyle.Bold);
            GridOportunidades.Columns[1].HeaderText = "Título da Vaga";
            GridOportunidades.Columns[1].Width = 250;
            GridOportunidades.Columns[1].HeaderCell.Style.Font = new Font("Arial", 12, FontStyle.Bold);
            GridOportunidades.Columns[2].HeaderText = "Descrição da Vaga";
            GridOportunidades.Columns[2].Width = 450;
            GridOportunidades.Columns[2].HeaderCell.Style.Font = new Font("Arial", 12, FontStyle.Bold);
            GridOportunidades.Columns[3].HeaderText = "Salário";
            GridOportunidades.Columns[3].Width = 80;
            GridOportunidades.Columns[3].HeaderCell.Style.Font = new Font("Arial", 12, FontStyle.Bold);
            GridOportunidades.Columns[4].HeaderText = "Classificação";
            GridOportunidades.Columns[4].Width = 130;
            GridOportunidades.Columns[4].HeaderCell.Style.Font = new Font("Arial", 12, FontStyle.Bold);
            GridOportunidades.Columns[5].HeaderText = "Empresa";
            GridOportunidades.Columns[5].Width = 120;
            GridOportunidades.Columns[5].HeaderCell.Style.Font = new Font("Arial", 12, FontStyle.Bold);
            GridOportunidades.Columns[6].HeaderText = "CNPJ";
            GridOportunidades.Columns[6].Width = 150;
            GridOportunidades.Columns[6].HeaderCell.Style.Font = new Font("Arial", 12, FontStyle.Bold);
            GridOportunidades.Columns[7].HeaderText = "Status";
            GridOportunidades.Columns[7].Width = 90;
            GridOportunidades.Columns[7].HeaderCell.Style.Font = new Font("Arial", 12, FontStyle.Bold);
            //arrumar, as cores nao tao pegando
            foreach(DataGridViewRow row in GridOportunidades.Rows){
                string statusVaga = row.Cells["StatusVaga"].Value?.ToString()?.Trim();
                if(statusVaga == "Aberta"){
                    row.Cells["StatusVaga"].Style.ForeColor = Color.Green;
                    row.Cells["StatusVaga"].Style.Font = new Font("Arial", 12, FontStyle.Bold);
                }else if(statusVaga == "Fechada"){
                    row.Cells["StatusVaga"].Style.ForeColor = Color.Red;
                    row.Cells["StatusVaga"].Style.Font = new Font("Arial", 12, FontStyle.Bold);
                }
            }
        }

        private void btnAttVaga_Click(object sender, EventArgs e){
            Vagas vagas = new Vagas();
            vagas.Show();
            this.Hide();
        }

        private void btnEditarVaga_Click(object sender, EventArgs e){
            string idOuNome = Microsoft.VisualBasic.Interaction.InputBox("Insira o ID ou o nome da vaga que você quer editar:", "Editar vaga", "");
            Oportunidade oportunidade = Oportunidade.BuscarVagaPorIdOuNomeECNPJ(idOuNome, Usuario.usuarioLogado.CNPJEmpresa);

            if (oportunidade == null){
                MessageBox.Show("Essa vaga não está cadastrada nesse CNPJ.");
            }else{
                Editar_Oportunidade edo = new Editar_Oportunidade(idOuNome);
                edo.Show();
            }
        }

        private void btnEditarVaga_MouseClick(object sender, MouseEventArgs e){}

        private void GridOportunidades_RowValidated(object sender, DataGridViewCellEventArgs e){}

        private void btnDeletarVaga_Click(object sender, EventArgs e){
            string idOuNome = Microsoft.VisualBasic.Interaction.InputBox("Insira o ID ou o nome da vaga que você quer excluir:", "Excluir vaga", "");
            Oportunidade.DeletarVagaNaTela(idOuNome);
        }

        private void button2_Click(object sender, EventArgs e){
            string idOuEmail = Microsoft.VisualBasic.Interaction.InputBox("Insira o ID ou o nome do candidato que você quer encontrar:");
            Usuario.BuscarUsuarioNaGrid(idOuEmail);
        }

        private void campoPesquisarEmpresa_TextChanged(object sender, EventArgs e){
            if(campoPesquisarEmpresa.Text == ""){
                oportunidadesFiltradas = Oportunidade.ListarOportunidades();
            }else{
                oportunidadesFiltradas = Oportunidade.ProcurarEmpresaPorNome(campoPesquisarEmpresa.Text, oportunidadesFiltradas);
            }
            AtualizarGridView();
        }

        private void btnListarCandidatos_Click(object sender, EventArgs e){
            GridOportunidades.Columns.Clear();
            candidatos = Usuario.BuscarCandidatos();
            GridOportunidades.DataSource = candidatos;
            GridOportunidades.ReadOnly = true;
            GridOportunidades.DefaultCellStyle.Padding = new Padding(0, 10, 0, 10);
            GridOportunidades.DefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleCenter;
            GridOportunidades.RowTemplate.Height = 25;
            if(GridOportunidades.Columns.Contains("VagasRegistradas")) GridOportunidades.Columns["VagasRegistradas"].Visible = false;
            if(GridOportunidades.Columns.Contains("CNPJEmpresa")) GridOportunidades.Columns["CNPJEmpresa"].Visible = false;
            GridOportunidades.Columns["Senha"].Visible = false;
            GridOportunidades.Columns["Cargo"].Visible = false;
            GridOportunidades.Columns["ID"].HeaderText = "ID";
            GridOportunidades.Columns["ID"].Width = 40;
            GridOportunidades.Columns["ID"].HeaderCell.Style.Font = new Font("Arial", 12, FontStyle.Bold);
            GridOportunidades.Columns["Nome"].HeaderText = "Nome";
            GridOportunidades.Columns["Nome"].Width = 250;
            GridOportunidades.Columns["Nome"].HeaderCell.Style.Font = new Font("Arial", 12, FontStyle.Bold);
            GridOportunidades.Columns["Email"].HeaderText = "E-mail";
            GridOportunidades.Columns["Email"].Width = 300;
            GridOportunidades.Columns["Email"].HeaderCell.Style.Font = new Font("Arial", 12, FontStyle.Bold);
            GridOportunidades.Columns["DataNascimento"].HeaderText = "Idade";
            GridOportunidades.Columns["DataNascimento"].Width = 80;
            GridOportunidades.Columns["DataNascimento"].HeaderCell.Style.Font = new Font("Arial", 12, FontStyle.Bold);
            GridOportunidades.Columns["Endereco"].HeaderText = "Endereço";
            GridOportunidades.Columns["Endereco"].Width = 300;
            GridOportunidades.Columns["Endereco"].HeaderCell.Style.Font = new Font("Arial", 12, FontStyle.Bold);
        }

        private void btnListarEmpresas_Click(object sender, EventArgs e){
            GridOportunidades.Columns.Clear();
            empresas = Usuario.ListarEmpresas();
            GridOportunidades.DataSource = empresas;
            GridOportunidades.ReadOnly = true;
            GridOportunidades.DefaultCellStyle.Padding = new Padding(0, 10, 0, 10);
            GridOportunidades.DefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleCenter;
            GridOportunidades.RowTemplate.Height = 25;
            GridOportunidades.Columns["Senha"].Visible = false;
            GridOportunidades.Columns["Cargo"].Visible = false;
            GridOportunidades.Columns["CNPJEmpresa"].Visible = true;
            GridOportunidades.Columns["Nome"].Visible = false;
            GridOportunidades.Columns["DataNascimento"].Visible = false;
            GridOportunidades.Columns["ID"].HeaderText = "ID";
            GridOportunidades.Columns["ID"].Width = 40;
            GridOportunidades.Columns["ID"].HeaderCell.Style.Font = new Font("Arial", 12, FontStyle.Bold);
            GridOportunidades.Columns["Email"].HeaderText = "E-mail para contato";
            GridOportunidades.Columns["Email"].Width = 300;
            GridOportunidades.Columns["Email"].HeaderCell.Style.Font = new Font("Arial", 12, FontStyle.Bold);
            GridOportunidades.Columns["Endereco"].HeaderText = "Endereço";
            GridOportunidades.Columns["Endereco"].Width = 300;
            GridOportunidades.Columns["Endereco"].HeaderCell.Style.Font = new Font("Arial", 12, FontStyle.Bold);
            GridOportunidades.Columns["CNPJEmpresa"].HeaderText = "CNPJ";
            GridOportunidades.Columns["CNPJEmpresa"].Width = 300;
            GridOportunidades.Columns["CNPJEmpresa"].HeaderCell.Style.Font = new Font("Arial", 12, FontStyle.Bold);

            if(!GridOportunidades.Columns.Contains("VagasRegistradas")){
                DataGridViewTextBoxColumn colunaVagas = new DataGridViewTextBoxColumn();
                colunaVagas.HeaderText = "Vagas oferecidas";
                colunaVagas.Name = "VagasRegistradas";
                colunaVagas.Width = 200;
                colunaVagas.HeaderCell.Style.Font = new Font("Arial", 12, FontStyle.Bold);
                GridOportunidades.Columns.Add(colunaVagas);
            
                for(int i = 0; i < GridOportunidades.Rows.Count; i++){
                    string cnpj = GridOportunidades.Rows[i].Cells["CNPJEmpresa"].Value.ToString();
                    int numVagas = Oportunidade.ContarVagasNesseCNPJ(cnpj);
                    GridOportunidades.Rows[i].Cells["VagasRegistradas"].Value = numVagas;
                }
            }
        }

        private void btnCandidatar_Click(object sender, EventArgs e){
            Oportunidade_Inscricao opoi = new Oportunidade_Inscricao();
            opoi.Show();
        }
    }
}
