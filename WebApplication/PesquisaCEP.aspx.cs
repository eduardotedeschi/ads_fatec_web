using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Reflection.Emit;
using System.Runtime.ConstrainedExecution;
using System.Security.Cryptography;
using System.Threading.Tasks;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json;

namespace WebApplication
{
    public partial class PesquisaCEP : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        async protected void CEP_Click(object sender, EventArgs e)
        {
            if (cepID.Text.Trim() == "")
            {
                Aviso.Text = "Digite seu CEP";
            }
            var cep = cepID.Text.Trim();
            var endereco = await acharEndereco(cep);

            if (endereco.erro == "true")
            {
                Aviso.Text = "CEP não encontrado.";
            }
            else
            {
                logradouro.Text = endereco.logradouro;
                bairro.Text = endereco.bairro;
                localidade.Text = endereco.localidade;
                uf.Text = endereco.uf;
                Aviso.Text = "";
                Aviso.Text = "Endereço encontrado com sucesso!";
            }
        }

        private async Task<Endereco> acharEndereco(string cep)
        {
            using (var httpClient = new HttpClient())
            {
                try
                {
                    var response = await httpClient.GetStringAsync($"https://viacep.com.br/ws/{cep}/json/");
                    return Newtonsoft.Json.JsonConvert.DeserializeObject<Endereco>(response);
                }
                catch (Exception ex)
                {
                    Aviso.Text = "Erro ao acessar a API: " + ex.Message;
                    return null;
                }
            }
        }


        public class Endereco
        {
            public string logradouro { get; set; }
            public string bairro { get; set; }
            public string localidade { get; set; }
            public string uf { get; set; }
            public string erro { get; set; }
        }
    }
}