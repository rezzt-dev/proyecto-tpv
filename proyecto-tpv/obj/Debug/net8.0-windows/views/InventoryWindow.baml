   M S B A M L   `   `   `  ����G  Cproyecto-tpv, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:proyecto_tpv.viewsproyecto_tpv.views  5   	   (    "proyecto_tpv.views.InventoryWindow   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   2local clr-namespace:proyecto_tpv.views     5   	     � WindowStyle$
  None=�5   	   $	��600��5	   	   $
��1000��6    � WindowStartupLocation$ CenterScreen=�6#   ���#161A1D � AllowsTransparency$
 True��5
      ���#FFFFFF$��	Comfortaa)�6M   .��5      � ���#161A1D � ColumnDefinitions 5      �� 5      $��* �6   �� 5      $��7* �6   .+�5      �� $��0��6   ���#0B090A$��4,4,2,4q�6/    �� RadiusX$ 10��6@    �� RadiusY$ 10��6M   � 5      -   5        $��	spOptions��5      $��4,4,2,4q�6   $��0��6-    � RowDefinitions 5      �� 5   
   $��* �6   �� 5   
   $��3* �6   .+�5      �� -   5        $��bckImageProfile��5      $��10q�6)   $ 10��65   $ 10��6B   ���	#FFF5F3F4$��2��6b   �� 5      -   5        $��
imgProfile��5      $��14q�6    $��/images/profile-ico.ico��6,   � 5      -   5        $��
tpvOptions��5      $��1��6    5   
   �� 5      $��* �6   �� 5      $��* �6   �� 5      $��* �6   �� 5       $��* �6   .+�5#   
   �� $��0��6   $��6q�6!   $ 10��6,   $ 10��69   ���#161A1D$��2��6U   ���	#FFF5F3F46i   �� 5$   
   -   5         ��Name$ optSettings��5$      $��0��6   $��4q�63   ${�False��6p   ��6?   Z� ��5%      �� 5&       �� ImageSource$% /images/tpvOptions/settings.ico��6   	 j� Stretch$	 Uniform=�6G   5(      �� 5*   
   $��1��6   $��6q�6!   $ 10��6,   $ 10��69   ���#161A1D$��2��6U   ���	#FFF5F3F46i   �� 5+   
   -   5        $ optCalendar��5+      $��1��6   $��4q�63   ${�False��6V   ��6?   Z� ��5,      �� 5-      $% /images/tpvOptions/calendar.ico��6   $	 Uniform=�6G   5/      �� 51   
   $��2��6   $��6q�6!   $ 10��6,   $ 10��69   ���#161A1D$��2��6U   ���	#FFF5F3F46i   �� 52   
   -   5        $ optOrder��52      $��2��6   $��4q�60   ��6<   Z� ��53      �� 54      $" /images/tpvOptions/order.ico��6   $	 Uniform=�6D   56      �� 58   
   $��3��6   $��6q�6!   $ 10��6,   $ 10��69   ���#161A1D$��2��6U   ���	#FFF5F3F46i   �� 59   
   -   5        $ optExit��59      $��3��6   $��4q�6/   ��6:   Z� ��5:      �� 5;      $! /images/tpvOptions/exit.ico��6   $	 Uniform=�6C   
 j� Viewbox$
 0,0,1,1�6U   5=      5>   	   5?      �� 5A      $��1��6   ���#0B090A$��2,4,4,4q�6/   $ 10��6@   $ 10��6M   � 5B      $��1��6   $��2,4,4,4q�6    5C      �� 5D   
   $��5* �6   �� 5E   
   $��* �6   .+�5H      �� $��0��6   ���#161A1D$��4q�6.   $ 10��69   $ 10��6F   &   System.Windows.Controls.DataGrid  5I      -	   5        $��dataInventario��5I         AutoGenerateColumns$ False��6'   $��4q�6C   ���	#FFF5F3F4$��Stretch=�5J      $��Stretch=�6/   $��16(�6K      
IsReadOnly$
 True��5K      $|�False��6#   ��5I   N   Z�    Columns 5L   
   0  *System.Windows.Controls.DataGridTextColumn  5M      ,  &System.Windows.Controls.DataGridColumn   Header$ NOMBRE PRODUCTO��6   1  +System.Windows.Controls.DataGridBoundColumn   Binding 68   �� *Nombre+  5N      $ 	CATEGORIA��6    62   �� *NombreCategoria+  5O      $ PRECIO��6    6/   �� *Precio+  5P      $ CANTIDAD��6    61   �� *Stock+5R   	   �� 5T      $��1��6   ���#161A1D$��4q�6.   $ 10��69   $ 10��6F   � 5U      $��1��6    5V   
   �� 5W      $��* �6   �� 5X      $��* �6   �� 5Y      $��* �6   �� 5Z      $��* �6   .+�5]   
   �� $��0��6   $��
10,10,5,10q�6$   $ 10��68   $ 10��6E   $��2��6R   ���	#FFF5F3F46f   �� 5^   
   -
   5        $��btnAgregarProducto��5^      $��0��6+   $��
10,10,5,10q�6;   ��6O   Z� ��6f   Z� .��5`      �� $�� AGREGAR PRODUCTO��6   $
��Wrap=�6/    �� TextAlignment$ Center=�6C   $��22(�6Z   $��
ExtraBlack"�6h   5a      �� 5c   
   $��1��6   $��	5,10,5,10q�6$   $ 10��67   $ 10��6D   $��2��6Q   ���	#FFF5F3F46e   �� 5d   
   -   5        $��btnEliminarProducto��5d      $��1��6,   $��
10,10,5,10q�6<   ��6P   Z� ��6g   Z� .��5f      �� $��ELIMINAR PRODUCTO��6   $
��Wrap=�6/   $ Center=�6C   $��22(�6Z   $��
ExtraBlack"�6h   5g      �� 5i   
   $��2��6   $��	5,10,5,10q�6$   $ 10��67   $ 10��6D   $��2��6Q   ���	#FFF5F3F46e   �� 5j   
   -   5        $��btnProductosCriticos��5j      $��2��6-   $��
10,10,5,10q�6=   ��6Q   Z� ��6h   Z� .��5l      �� $��PRODUCTOS CRITICOS��6   $
��Wrap=�60   $ Center=�6D   $��22(�6[   $��
ExtraBlack"�6i   5m      �� 5o   
   $��3��6   $��
5,10,10,10q�6$   $ 10��68   $ 10��6E   $��2��6R   ���	#FFF5F3F46f   �� 5p   
   -   5        $��btnTodosLosProductos��5p      $��3��6-   $��
10,10,5,10q�6=   ��6Q   Z� ��6h   Z� .��5q      �� $�� TODOS LOS PRODUCTOS��6   $
��Wrap=�62   $ Center=�6F   $��22(�6]   $��
ExtraBlack"�6k   5r      5t   	   5u      5w      5x      