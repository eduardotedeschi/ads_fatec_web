﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FaleConosco.aspx.cs" Inherits="WebApplication.FaleConosco" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Conteudo" runat="server">
    <div class="row">
        <div class="col-6">
            <div class="box border margin-right-20 padding-14">
                <h2>Fale Conosco</h2>
                <br />
                <asp:Label ID="Alerta" Font-Size="16px" runat="server"></asp:Label>
                <br />
                <asp:Panel ID="Formulario" runat="server">
                    <label>Motivo</label>
                    <asp:DropDownList ID="Motivo" runat="server">
                        <asp:ListItem Text="Selecione" Value="0"></asp:ListItem>
                        <asp:ListItem Text="Sugestão" Value="1"></asp:ListItem>
                        <asp:ListItem Text="Crítica" Value="2"></asp:ListItem>
                        <asp:ListItem Text="Dúvida" Value="3"></asp:ListItem>
                        <asp:ListItem Text="Elogio" Value="4"></asp:ListItem>
                        <asp:ListItem Text="Outros" Value="5"></asp:ListItem>
                    </asp:DropDownList>
                    <label>Nome</label>
                    <asp:TextBox ID="Nome" MaxLength="50" runat="server"></asp:TextBox>
                    <label>Email</label>
                    <asp:TextBox ID="Email" TextMode="Email" MaxLength="40" runat="server"></asp:TextBox>
                    <label>Mensagem</label>
                    <asp:TextBox ID="Mensagem" MaxLength="300" TextMode="MultiLine" Rows="8" runat="server"></asp:TextBox>

                    <asp:Button ID="Enviar" OnClick="Enviar_Click" runat="server" Text="Enviar" />
                </asp:Panel>
            </div>
        </div>

        <div class="col-6">
            <div class="box border">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d62572306.7549792!2d-36.522040688467115!3d16.82087242847901!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x13883b64fb267151%3A0xd6406bdc582d7390!2sDeserto%20do%20Saara!5e0!3m2!1spt-BR!2sbr!4v1727364319445!5m2!1spt-BR!2sbr" width="100%" height="100%" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
            </div>
        </div>

    </div>
</asp:Content>
