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
    /// Interaction logic for kitapkirala.xaml
    /// </summary>
    public partial class kitapkirala : Window
    {
        public kitapkirala()
        {
            InitializeComponent();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            anasayfa anasayfa = new anasayfa();
            anasayfa.Show();
            this.Hide();
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            MySqlConnection baglati = new MySqlConnection("Server=localhost;Port=3306;Database=test;Uid=muratcn5734;");
            try
            {
                baglati.Open();
            }
            catch (MySqlException hata)
            {
                MessageBox.Show(hata.Message);
                this.Close();
                return;
            }


            MySqlCommand komut = new MySqlCommand("SELECT * FROM kitapkirayanlar", baglati);


            MySqlDataAdapter adabtor = new MySqlDataAdapter(komut);
            DataTable tablo = new DataTable();
            adabtor.Fill(tablo);


            dg1.ItemsSource = tablo.AsDataView();
        }
    }
}
