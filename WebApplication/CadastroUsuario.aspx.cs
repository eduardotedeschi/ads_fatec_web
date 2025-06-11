using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Security.Policy;
using System.Web;
using System.Web.Management;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication
{
    public partial class CadastroUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // método é executado quando a página é chamada 
            if (!IsPostBack) // se não for um retorno "botão"
            {
                if (!string.IsNullOrEmpty(Request.QueryString["key"]))
                {
                    UsuarioID.Text = Request.QueryString["key"];
                    LeiaUsuario();
                }
            }
        }

        protected void EnvioCadastrar_Click(object sender, EventArgs e)
        {
            //1. Validar os dados de entrada
            if (LimparSPC(Nome.Text) == "")
            {
                Aviso.ForeColor = System.Drawing.Color.Red;
                Aviso.Text = "Digite seu nome!";
            }
            else if (LimparSPC(NomeAcesso.Text) == "")
            {
                Aviso.ForeColor = System.Drawing.Color.Red;
                Aviso.Text = "Digite seu nome de usuário!";
            }

            else if (!CheckName(LimparSPC(NomeAcesso.Text)))
            {
                Aviso.ForeColor = System.Drawing.Color.Red;
                Aviso.Text = "Nome de usuário já registrado";
            }

            else if (LimparSPC(Email.Text) == "")
            {
                Aviso.ForeColor = System.Drawing.Color.Red;
                Aviso.Text = "Digite seu email!";
            }
            else if (LimparSPC(Senha.Text) == "")
            {
                Aviso.ForeColor = System.Drawing.Color.Red;
                Aviso.Text = "Digite sua senha";
            }
            else if (LimparSPC(ConfirmarSenha.Text) != LimparSPC(Senha.Text))
            {
                Aviso.ForeColor = System.Drawing.Color.Red;
                Aviso.Text = "Senhas diferentes!";
            }
            else
            {
                try
                {
                    //2. Construir a string de conexão com o banco de dados
                    string myAcces = Server.MapPath("~/App_Data/BDADS2024.accdb");
                    string conexao = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + myAcces + ";Persist Security Info=False;";

                    Datapost.DB.UTIL ut = new Datapost.DB.UTIL();

                    //3. Construir o comando SQL para inserir o registro na tabela usuarios
                    string sql = "";
                    if (UsuarioID.Text == "")
                    {
                        sql = "INSERT INTO Usuarios(Nome,Email,NomeAcesso,Senha) VALUES('" + LimparSPC(Nome.Text) + "','" + LimparSPC(Email.Text) + "','" + LimparSPC(NomeAcesso.Text) + "','" + ut.Encrypt(LimparSPC(Senha.Text)) + "')";

                    }
                    else
                    {
                        sql = "UPDATE Usuarios SET Nome='" + Nome.Text + "',Email='" + Email.Text + "',NomeAcesso='" + NomeAcesso.Text + "',Senha='" + ut.Encrypt(Senha.Text) + "' WHERE UsuarioID=" + UsuarioID.Text;

                    }

                    //4. Enviar os dados para o banco de dados
                    Datapost.DB.DAO db = new Datapost.DB.DAO();

                    db.ConnectionString = conexao;
                    db.DataProviderName = Datapost.DB.DAO.ProviderName.OleDb;
                    db.Query(sql);

                    //5. Inseriu com sucesso
                    Aviso.ForeColor = System.Drawing.Color.Green;
                    Aviso.Text = "Cadastrado com Sucesso!";
                    LimparCampos();


                }
                catch (Exception)
                {
                    Aviso.ForeColor = System.Drawing.Color.Red;
                    Aviso.Text = "Houve uma falha ao enviar o email!";
                    Cadastro.Visible = false;
                }

                ExcluirCadastro.Visible = false;
            }
        }

        protected string LimparSPC(string valor)
        {
            return valor.Trim();
        }

        protected bool CheckName(string valor)
        {
            //1. String de conexão
            string myAcces = Server.MapPath("~/App_Data/BDADS2024.accdb");
            string conexao = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + myAcces + ";Persist Security Info=False;";

            //2. Comando sql
            string sql = "SELECT * FROM Usuarios WHERE NomeAcesso ='" + valor + "'";

            //3. Enviar os dados para o banco de dados
            Datapost.DB.DAO db = new Datapost.DB.DAO();

            db.ConnectionString = conexao;
            db.DataProviderName = Datapost.DB.DAO.ProviderName.OleDb;

            DataTable tb = new DataTable();

            tb = (DataTable)db.Query(sql);

            if (tb.Rows.Count == 1)
            {
                if (tb.Rows[0]["UsuarioID"].ToString() == UsuarioID.Text)
                {
                    return true;
                }
                else
                {
                    return false;
                }
                //Não pode gravar o nome de acesso;
            }
            else
            {
                return true;
            }
        }

        protected void LeiaUsuario()
        {
            // 1. Busca os dados do Usuario a partir do ID
            string sql = "SELECT * FROM Usuarios WHERE UsuarioID =" + UsuarioID.Text;
            // 2.Construir a string de conexão com o banco de dados
            string myAcces = Server.MapPath("~/App_Data/BDADS2024.accdb");
            string conexao = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + myAcces + ";Persist Security Info=False;";

            //3. Enviar os dados para o banco de dados
            Datapost.DB.DAO db = new Datapost.DB.DAO();

            db.ConnectionString = conexao;
            db.DataProviderName = Datapost.DB.DAO.ProviderName.OleDb;

            DataTable tb = new DataTable();

            tb = (DataTable)db.Query(sql); //tb é a linha da tabela que contem os dados solicitados

            Datapost.DB.UTIL ut = new Datapost.DB.UTIL();

            Nome.Text = tb.Rows[0]["Nome"].ToString();
            NomeAcesso.Text = tb.Rows[0]["NomeAcesso"].ToString();
            Email.Text = tb.Rows[0]["Email"].ToString();
            Senha.Text = ut.Decrypt(tb.Rows[0]["Senha"].ToString());
            ConfirmarSenha.Text = ut.Decrypt(tb.Rows[0]["Senha"].ToString());

            ExcluirCadastro.Visible = true;
            
        }

        protected void ExcluirCadastro_Click(object sender, EventArgs e)
        {
            // 2.Construir a string de conexão com o banco de dados
            string myAcces = Server.MapPath("~/App_Data/BDADS2024.accdb");
            string conexao = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + myAcces + ";Persist Security Info=False;";

            string sql = "DELETE FROM Usuarios WHERE UsuarioID=" + UsuarioID.Text;

            //3. Enviar os dados para o banco de dados
            Datapost.DB.DAO db = new Datapost.DB.DAO();

            db.ConnectionString = conexao;
            db.DataProviderName = Datapost.DB.DAO.ProviderName.OleDb;

            db.Query(sql);

            Aviso.ForeColor = System.Drawing.Color.Green;
            Aviso.Text = "Excluido com Sucesso!";
            LimparCampos();

            ExcluirCadastro.Visible = false;

        }

        protected void LimparCampos()
        {
            UsuarioID.Text = "";
            Nome.Text = "";
            NomeAcesso.Text = "";
            Email.Text = "";
            Senha.Text = "";
            ConfirmarSenha.Text = "";
        }
    }
}

