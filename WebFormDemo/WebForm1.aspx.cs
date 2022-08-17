using PersonelManagerLibrary;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebFormDemo.ServiceReference1;

namespace WebFormDemo
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        private void temizle()
        {
            txtId.Text = "";
            txtAd.Text = "";
            txtSoyad.Text = "";
            txtMaas.Text = "";
            txtSehir.Text = "";
            txtMeslek.Text = "";
            txtTelNo.Text = "";
        }
        
        private void kayitlariGetir()
        { 
            Service1SoapClient service1 = new Service1SoapClient();
            gridView1.DataSource = service1.GetirHepsi();

            gridView1.DataBind();            
        }
        

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserName"] == null)
                Response.Redirect("KullaniciGiris.aspx");
            
            kayitlariGetir();
        }

        protected void btnKaydet_Click(object sender, EventArgs e)
        {
            WebFormDemo.ServiceReference1.Personel personel = new WebFormDemo.ServiceReference1.Personel();
            personel.Ad = txtAd.Text;
            personel.Soyad = txtSoyad.Text;
            personel.Maas = txtMaas.Text;
            personel.Sehir = txtSehir.Text;
            personel.Meslek = txtMeslek.Text;
            personel.TelNo = txtTelNo.Text;

            if (txtId.Text == "")
            {
                Service1SoapClient service1 = new Service1SoapClient();
                service1.Ekle(personel);

                txtMesaj.Text = "Personel eklendi";
                temizle();
                kayitlariGetir();
            }
            else
            {
                txtMesaj.Text = "Yeni kayıt yaparken ıd alanı boş bırakılır";
            }
            
        }
        
        protected void btnGüncelle_Click(object sender, EventArgs e)
        {
            WebFormDemo.ServiceReference1.Personel personel = new WebFormDemo.ServiceReference1.Personel();
            personel.Id = Convert.ToInt32(txtId.Text);
            personel.Ad = txtAd.Text;
            personel.Soyad = txtSoyad.Text;
            personel.Maas = txtMaas.Text;
            personel.Sehir = txtSehir.Text;
            personel.Meslek = txtMeslek.Text;
            personel.TelNo = txtTelNo.Text;

            Service1SoapClient service1 = new Service1SoapClient();

            if (!service1.Guncelle(personel))
            {
                txtMesaj.Text = "Personel güncellenemedi , tekrar deneyin";
                temizle();
            }
            else
            {
                txtMesaj.Text = "Personel güncellendi";
                temizle();
                kayitlariGetir();
            }
            
        }

        protected void btnGetir_Click(object sender, EventArgs e)
        {
            int id =  Convert.ToInt32(txtId.Text);

            Service1SoapClient service1 = new Service1SoapClient();
            WebFormDemo.ServiceReference1.Personel personel = new WebFormDemo.ServiceReference1.Personel();

            personel = service1.GetirById(id);

            if (personel.Id == 0)
            {
                txtMesaj.Text = "Kayıt bulunamadı";
                 
            }

            if(personel.Id != 0)
            {
                txtAd.Text = personel.Ad;
                txtSoyad.Text = personel.Soyad;
                txtMaas.Text = personel.Maas;
                txtSehir.Text = personel.Sehir;
                txtMeslek.Text = personel.Meslek;
                txtTelNo.Text = personel.TelNo;

                txtMesaj.Text = "Kayıt getirildi";
                 
            }
           
        }

        protected void btnSil_Click(object sender, EventArgs e)
        {
            WebFormDemo.ServiceReference1.Personel personel = new WebFormDemo.ServiceReference1.Personel();
            personel.Id = Convert.ToInt32(txtId.Text);

            Service1SoapClient service1 = new Service1SoapClient();
            
            if (!service1.Sil(personel.Id))
            {
                txtMesaj.Text = "Personel silinemedi , tekrar deneyin";
                temizle();
            }
            else
            {
                txtMesaj.Text = "Personel silindi";
                temizle();
                kayitlariGetir();
            }
            
        }

        protected void btnTemizle_Click(object sender, EventArgs e)
        {
            temizle();
        }
    }
}