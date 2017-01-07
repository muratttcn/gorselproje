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

namespace WpfApplication1
{
    /// <summary>
    /// Interaction logic for anasayfa.xaml
    /// </summary>
    public partial class anasayfa : Window
    {
        public anasayfa()
        {
            InitializeComponent();
        }


        private void btn8_Click_1(object sender, RoutedEventArgs e)
        {


            MessageBox.Show("Çıkmak İstiyor Musunuz?", "Çıkış");

            {
                this.Hide();
            }

        }

        private void btn2_Click(object sender, RoutedEventArgs e)
        {
            uyekayit a = new uyekayit();
            a.Show();
            this.Hide();
        }

        private void btn3_Click(object sender, RoutedEventArgs e)
        {
            uyelistesi b = new uyelistesi();
            b.Show();
            this.Hide();
        }

        private void btn4_Click(object sender, RoutedEventArgs e)
        {
            kitapkaydet c = new kitapkaydet();
            c.Show();
            this.Hide();
        }
    }
}