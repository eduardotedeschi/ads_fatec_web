using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication
{
    public partial class FaleConosco : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Enviar_Click(object sender, EventArgs e)
        {
            //VALIDAR OS DADOS
            if (Motivo.SelectedValue == "0")
            {
                Alerta.Text = "Selecione o Motivo!";
                Alerta.ForeColor = System.Drawing.Color.Red;
            }
            else if (Nome.Text.Trim()=="")
            {
                Alerta.ForeColor = System.Drawing.Color.Red;
                Alerta.Text = "Digite seu nome!";
            }
            else if (Email.Text.Trim() == "")
            {
                Alerta.ForeColor = System.Drawing.Color.Red;
                Alerta.Text = "Digite seu email!";
            }
            else if (Mensagem.Text.Trim() == "")
            {
                Alerta.ForeColor = System.Drawing.Color.Red;
                Alerta.Text = "Digite a mensagem!";
            }
            else
            {
                try
                {
                    //2. CONTINUAR O E-MAIL
                    MailMessage email = new MailMessage();
                    email.To.Add("contato@seudominio.com.br");
                    MailAddress from = new MailAddress("contato@seudominio.com.br");
                    email.From = from;
                    email.Subject = "email enviado pelo form Fale Conosco!";
                    email.Body = "Motivo: " + Motivo.SelectedValue + "\n" + "Nome: " + Nome.Text + "\n" + "Mensagem: " + Mensagem.Text + "\n";
                    email.IsBodyHtml = false;

                    //3. ENVIAR O EMAIL
                    SmtpClient smtp = new SmtpClient();
                    smtp.Host = "seudominio.com.br";
                    smtp.Credentials = new System.Net.NetworkCredential("contato@seudominio.com.br", "suasenha");
                    smtp.Send(email);
                    Alerta.ForeColor = System.Drawing.Color.BlueViolet;
                    Alerta.Text = "Seu email foi enviado com sucesso";
                    Formulario.Visible = false;  
                }
                catch (Exception ex)
                {

                    SalvarExcecoes.RecuperarExcecao gravar = new SalvarExcecoes.RecuperarExcecao();

                    gravar.Salvar(ex);

                    Alerta.ForeColor = System.Drawing.Color.Red;
                    Alerta.Text = "Houve uma falha ao enviar o email!";
                    Formulario.Visible = false; 
                }       

            }
        }
    }
}