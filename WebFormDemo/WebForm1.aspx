<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebFormDemo.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="width:1100px;height:720px;margin:0 auto; background-color:lightgrey;">

        <div style="width:1100px;height:100px;  background-color:lightslategray; text-align:center; margin-bottom:30px">
            <strong style="font-size:45px; line-height:100px; text-align:center;">PERSONEL KAYIT SİSTEMİ</strong>
        </div>

        <div style="width:400px; height:45px;margin-top:15px; margin-left:50px; margin-right: auto; margin-bottom: 0;">
            <div style="width:102px ; line-height:45px; float:left; margin-left:5px; height: 48px;">Id</div>
            <asp:Textbox ID="txtId" runat="server" Style="width:200px; height:35px;line-height:45px; margin-left:2px;border-radius:5px;"></asp:Textbox>
        </div>

        <div style="width:400px; height:45px;margin-top:15px;  margin-left:50px; margin-right: auto; margin-bottom: 0;">
            <div style="width:102px ; line-height:45px; float:left; margin-left:5px; height: 48px;">Ad</div>
            <asp:Textbox ID="txtAd" runat="server" Style="width:200px; height:35px;line-height:45px; margin-left:2px;border-radius:5px;"></asp:Textbox>
        </div>

        <div style="width:400px; height:45px;margin-top:15px;  margin-left:50px; margin-right: auto; margin-bottom: 0;">
            <div style="width:102px ; line-height:45px; float:left; margin-left:5px; height: 48px;">Soyad</div>
            <asp:Textbox ID="txtSoyad" runat="server" Style="width:200px; height:35px;line-height:45px; margin-left:2px;border-radius:5px;"></asp:Textbox>
        </div>

        <div style="width:400px;height:45px;margin:0 auto; margin-top:15px;  margin-left:50px">
            <div style="width:102px ; line-height:45px; float:left; margin-left:5px; height: 48px;">Maaş</div>
            <asp:Textbox ID="txtMaas" runat="server" Style="width:200px; height:35px;line-height:45px; margin-left:2px;border-radius:5px;"></asp:Textbox>
        </div>
         
        <div style="width:400px;height:45px;margin:0 auto; margin-top:15px;  margin-left:50px">
            <div style="width:102px ; line-height:45px; float:left; margin-left:5px; height: 48px;">Şehir</div>
            <asp:Textbox ID="txtSehir" runat="server" Style="width:200px; height:35px;line-height:45px; margin-left:2px;border-radius:5px;"></asp:Textbox>
        </div>

        <div style="width:400px;height:45px;margin:0 auto; margin-top:15px;  margin-left:50px">
            <div style="width:102px ; line-height:45px; float:left; margin-left:5px; height: 48px;">Meslek</div>
            <asp:Textbox ID="txtMeslek" runat="server" Style="width:200px; height:35px;line-height:45px; margin-left:2px;border-radius:5px;"></asp:Textbox>
        </div>

        <div style="width:400px;height:45px;margin:0 auto; margin-top:15px;  margin-left:50px">
            <div style="width:102px ; line-height:45px; float:left; margin-left:5px; height: 48px;">TelNo</div>
            <asp:Textbox ID="txtTelNo" runat="server" Style="width:200px; height:35px;line-height:45px; margin-left:2px;border-radius:5px;"></asp:Textbox>
        </div>

        <div style="width:900px;height:45px;margin:0 auto; margin-top:25px; margin-left:150px">
            <asp:Button ID="btnKaydet" runat="server" Text="Kaydet" Style="width:110px;height:50px;margin:0 auto; margin-left:10px; line-height:50px;" OnClick="btnKaydet_Click" />
            <asp:Button ID="btnGüncelle" runat="server" Text="Güncelle" Style="width:110px;height:50px;margin:0 auto; margin-left:10px; line-height:50px;" OnClick="btnGüncelle_Click" />
            <asp:Button ID="btnGetir" runat="server" Text="Getir" Style="width:110px;height:50px;margin:0 auto; margin-left:10px; line-height:50px;" OnClick="btnGetir_Click" />
            <asp:Button ID="btnSil" runat="server" Text="Sil" Style="width:110px;height:50px;margin:0 auto; margin-left:10px; line-height:50px;" OnClick="btnSil_Click" />
            <asp:Button ID="btnTemizle" runat="server" Text="Temizle" Style="width:110px;height:50px;margin:0 auto; margin-left:10px; line-height:50px;" OnClick="btnTemizle_Click" />
        </div>

        <div style="width:600px;height:35px;margin:0 auto; margin-top:20px; margin-left:150px ;background-color:lightslategray;  margin-left:160px; margin-top:30px">
            <asp:Textbox ID="txtMesaj" runat="server" Style="width:600px; height:32px;line-height:45px; background-color:lightslategray" Enabled="False"></asp:Textbox>
        </div>
        
        <div style="margin-left:440px; margin-top:-540px; height: 380px; width: 624px; overflow-y: scroll;">
            <asp:GridView ID="gridView1" runat="server" CellPadding="4"  Width="426px"  Height="370px" ForeColor="#333333" GridLines="None" >
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />

            </asp:GridView>
        </div>
    
    </div>
    </form>
</body>
</html>
