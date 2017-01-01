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
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Data;
using System.Data.Sql;
using MySql.Data.MySqlClient;

namespace WpfApplication1
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void btn1_Click(object sender, RoutedEventArgs e)
        {
            MySqlConnection baglanti = new MySqlConnection("localhost;Port=3306;Database=kullanıcıgirisi");

            {
                if (txt1.Text == "sa" && txt2.Text == "123")
                {




                    MessageBox.Show("Giriş Başarılı");
                    anasayfa a = new anasayfa();
                    a.Show();
                    this.Hide();
                }
                else
                {
                    MessageBox.Show("Giriş Başarısız");
                }


            }

        }
    
    
    }
}