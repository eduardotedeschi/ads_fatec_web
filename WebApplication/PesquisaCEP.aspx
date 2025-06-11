<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PesquisaCEP.aspx.cs" Inherits="WebApplication.PesquisaCEP" Async="true"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Conteudo" runat="server">
    <div class="margin-60">
    <div class="box margin-right-20 padding-14">
        <h2>Pesquisa do CEP</h2>
        <br />
        <asp:Label ID="Aviso" Font-Size="16px" runat="server"></asp:Label>
        <br />
        <asp:Panel ID="EncontrarEndereco" runat="server">
            <label>CEP</label>
            <asp:TextBox ID="cepID" placeholder="Informe seu CEP" MaxLength="8" runat="server"></asp:TextBox>
            <asp:Button ID="EncontrarCEP" runat="server" OnClick="CEP_Click" Text="Pesquisar" />
            <br />
            <label>Rua</label>

            <asp:TextBox ID="logradouro" runat="server" ReadOnly="True"></asp:TextBox>

            <label>Numero</label>
            <asp:TextBox ID="numero" placeholder="Informe seu Número" MaxLength="5" runat="server"></asp:TextBox>
            <label>Complemento</label>
            <asp:TextBox ID="complemento" placeholder="Complemento (se houver)" MaxLength="50" runat="server"></asp:TextBox>

            <label>Bairro</label>
            <asp:TextBox ID="bairro" runat="server" ReadOnly="True"></asp:TextBox>

            <label>Cidade</label>
            <asp:TextBox ID="localidade" runat="server" ReadOnly="True"></asp:TextBox>

            <label>UF</label>
            <asp:TextBox ID="uf" runat="server" ReadOnly="True"></asp:TextBox>

        </asp:Panel>
    </div>
</div>
</asp:Content>
