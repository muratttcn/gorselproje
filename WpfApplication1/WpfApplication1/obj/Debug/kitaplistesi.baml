   M S B A M L   `   `   `  ����J  FWpfApplication1, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:WpfApplication1WpfApplication1  5   	   "    WpfApplication1.kitaplistesi   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   /localclr-namespace:WpfApplication1     5   	     � Title$  kitaplistesi��5   	   $	��300��6   $	��300��6+   .��5	      �  � RowDefinitions 5
   
   �� 5      6   �� 5      6   �� 5      6   �� 5      6   �� 5      6   �� 5      6   �� 5      6   �� 5      6   �� 5      6   ��5   
   �� 5       �� 
StartPoint$	 0,0&�6"    �� EndPoint$	 1,1&�63   .��5      �  � Color$ #3f98f1��6   � 5      $ #003c7b��6    � Offset$ 1Q�6/   5      .+�5   
   �� $��0��6   $��0��6    $��Center=�6-   $��Trebuchet MS)�6H   $
��Bold"�5   	   $��14(�6   
�������$��	0,0,80,24q�6<   $��26��6O   $��2��6[   .��6l   Kitap Arama Seçenekleri5!      �� 5"   
   -   5        $��0��5"      $��0��6!   $��	212,0,0,0q�6/   
�������$��25��6j   $��Bottom=�6v   .��6�   
ANASAYFA6�   �� 5#   
   $��0��6   $��1��6    $��Center=�6-   $��Trebuchet MS)�6H   $
��Bold"�5$   	   $��10(�6   
���   �$��
0,5,139,29q�6<   $��26��6P   $��2��6\   .��6m   Barkod Numarasına Göre Ara5&      �� 5'   
   $��0��6   $��1��6"   $��
153,6,59,0q�6/   6E   �� 5(   
   $��0��6   $��2��6    $��Center=�6-   $��Trebuchet MS)�6H   $
��Bold"�5)   	   $��10(�6   
���   �$��
0,5,139,29q�6<   $��26��6P   $��2��6\   .��6m   Kitap Adına Göre Ara5+      �� 5,   
   $��0��6   $��2��6"   $��
153,6,59,0q�6/   6E   �� 5-   
   $��0��6   $��3��6    $��Center=�6-   $��Trebuchet MS)�6H   $
��Bold"�5.   	   $��10(�6   
���   �$��
0,5,139,29q�6<   $��26��6P   $��2��6\   .��6m   Yazar Adına Göre Ara50      �� 51   
   $��0��6   $��3��6"   $��
153,6,59,0q�6/   6E   �� 52   
   $"��Barkod Numarasına Göre Ara��6   $��0��66   $��4��6F   $��0,1,0,29q�6S   $��2��6e   6x   �� 53   
   $��Kitap Adına Göre Ara��6   $��0��60   $��5��6@   $��0,1,0,29q�6M   $��2��6_   6r   �� 54   
   $��Yazar Adına Göre Ara��6   $��0��60   $��6��6@   $��0,1,0,29q�6M   $��2��6_   6r   &   System.Windows.Controls.DataGrid  55   
   $��7��6   $��2��6    63   56      57      