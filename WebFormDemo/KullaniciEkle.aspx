<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="KullaniciEkle.aspx.cs" Inherits="WebFormDemo.KullaniciEkle" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="width:750px;height:390px;margin:0 auto; background-color:lightgrey;">
        <div style="width:750px;height:60px;  background-color:lightslategray; text-align:center; margin-bottom:30px">
            <strong style="font-size:20px; line-height:60px; text-align:center;">Yeni Kullanıcı Ekle</strong>
        </div>
        <div style="width:400px; height:45px;margin-top:15px;  margin-left:100px; margin-right: auto; margin-bottom: 0;">
            <div style="width:102px ; line-height:45px; float:left; margin-left:5px; height: 48px; margin-right:50px">KullanıcıAdı:</div>
            <asp:Textbox ID="txtKullaniciAdi" runat="server" Style="width:200px; height:35px;line-height:45px; margin-left:2px;border-radius:5px;"></asp:Textbox>
        </div>

        <div style="width:400px; height:45px;margin-top:15px;  margin-left:150px; margin-right: auto; margin-bottom: 0;">
            <div style="width:102px ; line-height:45px; float:left; margin-left:5px; height: 48px;">Şifre:</div>
            <asp:Textbox ID="txtSifre" runat="server" Style="width:200px; height:35px;line-height:45px; margin-left:2px;border-radius:5px;"></asp:Textbox>
        </div>

        <div style="width:400px;height:45px;margin:0 auto; margin-top:15px;  margin-left:150px">
            <div style="width:102px ; line-height:45px; float:left; margin-left:5px; height: 48px;">Yetki:</div>
            <asp:Textbox ID="txtYetki" runat="server" Style="width:200px; height:35px;line-height:45px; margin-left:2px;border-radius:5px;"></asp:Textbox>
        </div>
        <div style="width:900px;height:45px;margin:0 auto; margin-top:10px; margin-left:217px">
            <asp:Button ID="btnEkle" runat="server" Text="Ekle" Style="width:150px;height:45px;margin:0 auto; margin-left:45px; line-height:50px ;" OnClick="btnKaydet_Click"/>
        </div>
         <div style="width:450px;height:30px;margin:0 auto; margin-top:20px; background-color:lightslategray;  margin-left:120px; ">
            <asp:Textbox ID="txtMesaj" runat="server" Style="width:450px; height:30px;line-height:45px; background-color:lightslategray" Enabled="False"></asp:Textbox>
        </div>

    </div>
    </form>
</body>
</html>
