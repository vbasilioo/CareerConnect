   M S B A M L   `   `   `  ����=  9CC, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:CC.ControllerCC.Controller  5   	   R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35X;clr-namespace:System.Windows.Threading;assembly=WindowsBaseSystem.Windows.Threading 5   	       CC.Dashboard   5   	   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   c _MahApps.Metro.IconPacks.Core, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137ag cMahApps.Metro.IconPacks.Material, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137a:Icon-http://metro.mahapps.com/winfx/xaml/iconpacks   5   	   (ctrlclr-namespace:CC.Controller   5   	   N
dispatcher;clr-namespace:System.Windows.Threading;assembly=WindowsBase   5   	   $
��1020��5   	   $
��1680��6     � WindowStartupLocation$  CenterScreen=�6$    � WindowStyle$
 None=�6I    � AllowsTransparency$
 True��5   	   
������  � 	Resources 5
         	BoolToVis.  (System.Windows.Threading.DispatcherTimer 	 Timer   Interval��%]   &	        &	      �� 5   
   6'     5   
   -   5        $ 0:0:1h�5   3   6D   5      .��5      �� -   5        ���#eff2f7 �� CornerRadius$ 30��5   "   ._�5   
   �  � ColumnDefinitions 5      �� 5      $	��200 �6#   �� 5      $��* �6#   .+�5      �  � RowDefinitions 5      �� 5      $
��auto �6$   �� 5      $��* �6$   .+�5      �� $��
20 28 0 35q�6     	topButton#��[ 6-   5      �� 5       $��1��6   ���#242f34$ 	0 50 0 30��6;   ._�5!      ]� .+�5#      �� -   5         ��Name$ campoUsuario��5#   $   $��Usuário��6:   
�������$��22(�6\   $��SemiBold"�6j   $	��Top=�5$   $   	 �� TextAlignment$	 Center=�69   $��5 25 0 0q�6P   �� 5%      -   5        $ 
campoCargo��5%   $   $��Cargo��68   ���#f18047$��22(�6Z   $��Light"�6h   $	��Top=�5&   $   $	 Center=�69   �� 5(      $��25q�6$   $	��Top=�60   $	��0.8��6E   ���#242f346R   �� 5*      $	��Top=�6%   .+�5+      �� -   5        
 ��Name$
 btnDashboard��5+   %     
menuButton#��[ 6;   .��5,   "   ��  �� Orientation$ 
Horizontal=�6-   .+�5-   &   .  (MahApps.Metro.IconPacks.PackIconMaterial     Kind$ HomeVariant=�6<     menuButtonIcon#��[ 6O   �� 5.   &   $��Vagas��60   5/   #   50      �� 52      -   5        $
 btnVagas��52   %   #��[ 67   .��53   "   �� $ 
Horizontal=�6-   .+�54   &     $ AccountMultipleOutline=�6<   #��[ 6Z   �� 55   &   $��	Cadastrar��60   56   #   57      �� 59      -   5        $
 	btnGestao��59   %   #��[ 68   .��5:   "   �� $ 
Horizontal=�6-   .+�5;   &     $ 	HeadMinus=�6<   #��[ 6M   �� 5<   &   $��Gestão��60   5=   #   5>      �� 5@      -   5        $
 btnCandidatura��5@   %   #��[ 6=   .��5A   "   �� $ 
Horizontal=�6-   .+�5B   &     $ PencilOutline=�6<   #��[ 6Q   �� 5C   &   $��Candidaturas��60   5D   #   5E      �� 5G      -	   5        $
 btnAdm��5G   %   #��[ 65   .��5H   "   �� $ 
Horizontal=�6-   .+�5I   &     $	 Cog=�6<   #��[ 6G   �� 5J   &   $��Administração��60   5K   #   5L      �� 5N      -
   5        #��[ 5N   %   $��Bottom=�6I   $��Bottom=�6d   $��15 280 15 20q�6|   .��5O   "   �� $ 
Horizontal=�6-   .+�5P   &     $ Logout=�6<   #��[ 6J   �� 5Q   &   $
��Sair��60   5R   #   5S      5T      5U      5V      5W      � 5Y      $��1��6   $��30 20 20 20q�6#    5Z      �� 5[      $
��auto �6$   �� 5\      $
��auto �6$   �� 5]      $
��auto �6$   �� 5^      $
��auto �6$   �� 5_      $
��auto �6$   �� 5`      $��* �6$   �� 5a      $
��auto �6$   .+�5d      �� -   5        #��[ 5d      $��0 0 20 0q�6<   $��Right=�6N   .��5e        $	 Cog=�6,   5f      �� 5g      -   5        #��[ 5g      $��0 0 55 0q�6<   $��Right=�6N   .��5h        $
 Bell=�6,   5i      �� 5j      -   5         ��Name$ ContadorNotificacoes��5j      $��0��66   $��16(�6B   $
��Left=�6P   ���#242f34$
��Bold"�6�   $��
1363,0,0,0q�6�   $��Center=�6�   ��5k      �� 5l       �� 
TargetType" ��6    .�5m      ��  �� Property �@��Left �� Value$ 0��6<   �� 5n       �@��Top$ 0��6;    �� Triggers 5o      �� 5p   "    �� Binding 6.   ��  �� ElementName$ btnNotificacoes�� �� Path$ 	IsPressed� �� Value True6n   .a�5q   &   ��  �@��Left 6D   �� $ btnNotificacoes��$ ActualWidth�5r   #   5t      5v      �� 5x      $��10��6   $��3��6(   ���#242f34$��	0 -1 0 10q�6J   �� 5y      $��5��6   .+�5z      � -   5         �Name$ contentDashboard��5z       $��5��6:    � Orientation$ Vertical=�6G   5~      5      5�      5�      5�      5�      