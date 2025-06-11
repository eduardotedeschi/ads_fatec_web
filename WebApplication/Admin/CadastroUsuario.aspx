<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CadastroUsuario.aspx.cs" Inherits="WebApplication.CadastroUsuario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Conteudo" runat="server">
    <div class="margin-60">
        <div class="box margin-right-20 padding-14">
            <h2>Cadastro Usuário</h2>
            <br />
            <asp:Label ID="Aviso" Font-Size="16px" runat="server"></asp:Label>
            <br />
            <asp:Label ID="UsuarioID" Font-Size="30px" runat="server"></asp:Label>
            <asp:Panel ID="Cadastro" runat="server">
                <label>Nome</label>
                <asp:TextBox ID="Nome" placeholder="seu nome" MaxLength="50" runat="server"></asp:TextBox>

                <label>Nome de Acesso</label>
                <asp:TextBox ID="NomeAcesso" placeholder="seu nome de acesso" MaxLength="30" runat="server"></asp:TextBox>

                <label>Email</label>
                <asp:TextBox ID="Email" TextMode="Email" placeholder="seu email" MaxLength="40" runat="server"></asp:TextBox>

                <label>Senha</label>
                <asp:TextBox ID="Senha" placeholder="sua senha"  MaxLength="20" runat="server"></asp:TextBox>

                <label>Confirmar Senha</label>
                <asp:TextBox ID="ConfirmarSenha" placeholder="confirme sua senha"  MaxLength="20" runat="server"></asp:TextBox>

                <asp:Button ID="EnvioCadastrar" OnClick="EnvioCadastrar_Click" runat="server" Text="Cadastrar-se" />

                <asp:Button ID="ExcluirCadastro" Visible="false" CssClass="botao-delete" OnClick="ExcluirCadastro_Click" runat="server" Text="Excluir Cadastro" />

            </asp:Panel>
        </div>
    </div>
</asp:Content>
