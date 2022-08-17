<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="KullaniciGiris.aspx.cs" Inherits="WebFormDemo.KullaniciGiris" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="width:650px;height:320px;margin:0 auto; background-color:lightgrey;">
        <div style="width:650px;height:60px;  background-color:lightslategray; text-align:center; margin-bottom:30px">
            <strong style="font-size:20px; line-height:60px; text-align:center;">Kullanıcı Giriş</strong>
        </div>

        <div style="width:350px; height:45px;margin-top:15px; margin-left:100px; margin-right: auto; margin-bottom: 0;">
            <div style="width:120px ; line-height:40px;font-size:19px; float:left; margin-left:5px; height: 48px;">Kullanıcı Adı:</div>
            <asp:Textbox ID="txtKullaniciAdi" runat="server" Style="width:200px; height:35px;line-height:45px; margin-left:2px;border-radius:5px;"></asp:Textbox>
        </div>

        <div style="width:400px; height:45px;margin-top:15px;  margin-left:100px; margin-right: auto; margin-bottom: 0;">
            <div style="width:120px ; line-height:40px;font-size:19px; float:left; margin-left:5px; height: 48px;">Şifre:</div>
            <asp:Textbox ID="txtSifre" runat="server" Style="width:200px; height:35px;line-height:45px; margin-left:2px;border-radius:5px; " type="password"></asp:Textbox>
        </div>

        <div style="width:900px;height:45px;margin:0 auto; margin-top:10px; margin-left:217px">
            <asp:Button ID="btnGiris" runat="server" Text="Giriş" Style="width:205px;height:45px;margin:0 auto; margin-left:10px; line-height:50px ;" OnClick="btnGiris_Click"/>
        </div>

        <div style="width:400px; height:45px;margin-top:15px;  margin-left:100px; margin-right: auto; margin-bottom: 0;margin-top:10px">
            <asp:Textbox ID="txtMesaj" runat="server" Style="width:350px; height:25px;line-height:45px; margin-left:50px;border-radius:5px; margin-top:1px" Enabled="False"></asp:Textbox>
        </div>

    
    </div>
    </form>
</body>
</html>
