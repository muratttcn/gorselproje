using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using System.Data;
using MySql.Data.MySqlClient;

namespace WpfApplication1
{
    /// <summary>
    /// Interaction logic for uyekayit.xaml
    /// </summary>
    public partial class uyekayit : Window
    {
     
        public uyekayit()
        {
            InitializeComponent();
        }
        MySqlConnection baglanti = new MySqlConnection("Server=localhost;Port=3306;Database=test;Uid=muratcn5734;");
        private void Button_Click(object sender, RoutedEventArgs e)
        {
            anasayfa anasayfa = new anasayfa();
            anasayfa.Show();
            this.Hide();

        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {

            try
            {
                baglanti.Open();
            }
            catch (MySqlException hata)
            {
                MessageBox.Show(hata.Message);
                this.Close();
                return;
            }
            // bağlantıyı açalım

            // ekleme komutunu tanımladım ve insert sorgusunu yazdım.
            MySqlCommand ekle = new MySqlCommand("insert into uyekayit (tc,ad,soyad,cep,e-mail,adres) values ('" + txt1.Text + "','" + txt2.Text + "','" + txt3.Text + "','" + txt4.Text + "','" + txt5.Text +"','" + txt6.Text +"')", baglanti);
                // sorguyu çalıştırıyorum.
                object sonuc = null;
                sonuc = ekle.ExecuteNonQuery(); // sorgu çalıştı ve dönen değer objec türünden değişkene geçti eğer değişken boş değilse eklendi boşşsa eklenmedi.
                if (sonuc != null)
                    MessageBox.Show("Sisteme başarıyla eklendi");
                else
                    MessageBox.Show("Sisteme eklenemedi.", "Uyarı");
                // bağlantıyı kapatalım
                baglanti.Close();
            }
        


    }
}
      