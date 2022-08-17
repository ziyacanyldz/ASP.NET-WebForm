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
    public partial class KullaniciGiris : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGiris_Click(object sender, EventArgs e)
        {
            string Sifrehash = "";
     
            Service1SoapClient service1 = new Service1SoapClient();

            WebFormDemo.ServiceReference1.Kullanici kullanici = new WebFormDemo.ServiceReference1.Kullanici();

            Sifrehash = service1.sha256_hash(txtSifre.Text);
            kullanici.Sifre = Sifrehash;
            kullanici.KullaniciAdi = txtKullaniciAdi.Text;


            if (service1.LoginKontrol(kullanici))
            {
                Session["UserName"] = txtKullaniciAdi.Text;

                if (service1.YetkiliMi(kullanici))
                {
                    Response.Redirect("YetkiliKullaniciGiris.aspx");
                }
                else
                {
                    Response.Redirect("WebForm1.aspx");
                }

            }
            else
            {
                txtMesaj.Text="Kullanıcı adı veya şifre yanlış";
            }
             
        }
    }
}