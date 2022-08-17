<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="YetkiliKullaniciGiris.aspx.cs" Inherits="WebFormDemo.YetkiliKullaniciGiris" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    
    <div tyle="width:650px;height:320px;margin:0 auto; background-color:lightgrey;">
        <div style="width:650px;height:60px;  background-color:lightslategray; text-align:center; margin-bottom:15px">
            <strong style="font-size:20px; line-height:60px; text-align:center;">Yetkili Kullanıcı</strong>
        </div>
        <div style="width:650px;height:100px;margin:0 auto; margin-top:0px; margin-left:20px">
            <asp:Button ID="btnGiris" runat="server" Text="Sisteme Giriş" Style="width:600px;height:100px;margin:0 auto; margin-left:10px; line-height:50px ;" OnClick="btnGiris_Click"/>
        </div>
        <div style="width:650px;height:100px;margin:0 auto; margin-top:10px; margin-left:20px">
            <asp:Button ID="btnKullaniciEkle" runat="server" Text="Kullanıcı İşlemleri" Style="width:600px;height:100px;margin:0 auto; margin-left:10px; line-height:50px ;" OnClick="btnYeniKullaniciGiris_Click"/>
        </div>
    </div>
    
    </form>
</body>
</html>
