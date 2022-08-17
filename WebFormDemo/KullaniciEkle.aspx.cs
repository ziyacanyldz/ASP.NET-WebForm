using AuthenticationManagerLibrary;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebFormDemo.ServiceReference1;

namespace WebFormDemo
{
    public partial class KullaniciEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnKaydet_Click(object sender, EventArgs e)
        {
            bool YETKI;
            Service1SoapClient service1 = new Service1SoapClient();

            WebFormDemo.ServiceReference1.YeniKullanici yeniKullanici = new WebFormDemo.ServiceReference1.YeniKullanici();

            yeniKullanici.KullaniciAdi = txtKullaniciAdi.Text;
            yeniKullanici.Sifre = service1.sha256_hash(txtSifre.Text);

            if (txtYetki.Text == "0")
            {
                YETKI = false;
                yeniKullanici.Yetki = YETKI;
                service1.Ekle2(yeniKullanici);
                txtMesaj.Text = "Kullanıcı eklendi";
            }
            else 
            {
                if (txtYetki.Text == "1")
                {
                    YETKI = true;
                    yeniKullanici.Yetki = YETKI;
                    service1.Ekle2(yeniKullanici);
                    txtMesaj.Text = "Kullanıcı eklendi";
                }
                else
                {
                    txtMesaj.Text ="Kullanıcı yetkili olucaksa 1 olmıycaksa 0 girin";
                    
                }

            }
            
            

        }
    }
}