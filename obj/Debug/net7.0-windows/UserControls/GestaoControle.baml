   M S B A M L   `   `   `  ����=  9CC, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:CC.UserControlsCC.UserControls  5   	   $    CC.UserControls.GestaoControle   5      W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   ] YXceed.Wpf.Toolkit.NET5, Version=4.5.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f44xctk)http://schemas.xceed.com/wpf/xaml/toolkit  5      c _MahApps.Metro.IconPacks.Core, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137ag cMahApps.Metro.IconPacks.Material, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137a:Icon-http://metro.mahapps.com/winfx/xaml/iconpacks   5   	   (ucclr-namespace:CC.UserControls   5   	   $
��1350��5   	   $	��890��6   
������ .��5	      ��   �� CornerRadius$  7��6   
������  J� Effect 5
   
   3  -System.Windows.Media.Effects.DropShadowEffect  5         
BlurRadius$ 30Q�6      ShadowDepth$ 5Q�6/      	Direction$
 -130Q�6?      Opacity$	 0.1Q�6P   ._�5   
   � $
��20 0q�6    � RowDefinitions 5      �� 5      $
��auto �6    �� 5      $
��auto �6    �� 5      $��* �6    �� 5      $��* �6    �� 5      $��* �6    �� 5      $��* �6    �� 5      $
��auto �6     � ColumnDefinitions 5      �� 5      $��* �6#   �� 5      $��* �6#   .+�5      ��  �� Orientation$ 
Horizontal=�6   $��20 20 -300 0q�62   .+�5      �� -   5        	 ��Name$	 lblDetalhes��5      $��Detalhes��61   ���#374655$��18(�6V   $��15 0 0 0q�6d   $��Center=�6v   �� 5      -   5        $	 lblSucessoCadastro��5      $"��Vaga cadastrada com sucesso!��68   
��� � �$��16(�6o   $��	500 0 0 0q�6}   $��Center=�6�   $y�	Collapsed=�6�   �� 5      -   5        $	 lblErroSalario��5      $��Salário inválido.��64   
���  ��$��16(�6^   $��	500 0 0 0q�6l   $��Center=�6   $y�	Collapsed=�6�   �� 5       -   5        $	 lblCamposVazios��5       $$��Todos os campos estão vazios.��65   
���  ��$��16(�6k   $��	500 0 0 0q�6y   $��Center=�6�   $y�	Collapsed=�6�   �� 5!      -   5        $	 lblErroCNPJ��5!      $��CNPJ inválido.��61   
���  ��$��16(�6X   $��	400 0 0 0q�6f   $��Center=�6y   $y�	Collapsed=�6�   5"         CC.UserControls.MyTextBox  5%      -   5        
  Name$
 	txtTitulo��5%      $��0��6.   $��2��6>      Caption$ Título da Vaga��6K     5&      -   5        $
 txtDescricao��5&      $��0��61   $��3��6A   $ Descrição da Vaga��6N     5'      -   5        $
 
txtSalario��5'      $��0��6/   $��4��6?   $ Salário��6L     5(      -	   5        $
 txtRequisitos��5(      $��1��62   $��2��6B   $ 
Requisitos��6O     5)      -
   5        $
 txtNomeempresa��5)      $��1��63   $��3��6C   $ Empresa��6P   �� 5*      -   5         ��Name$ 	txtStatus��5*      $��1��6*   $��4��6:   $��35��6G   $��24,47,20,99q�6S   
�������$��16(�6{   
�������.@�5+      �� .��6   Aberta5-      �� 5.      .��6   	Fechada50      52      �� 55      $��6��6   $��2��6"   $��80��66   
������ $  	0 0 10 10��6[   $��-20 40 -20 0q�6t   �� 57      -   5        $��1��57      $��6��6%   $��Salvar��62   $��	0 40 20 0q�6C   $��Right=�6V      
Mainbutton#��[  6r    58        59      $ 10Q�6'   $ 5Q�67      Color$ #f18047��6G   $	 0.3Q�6W   $
 -120Q�6e   5;      �� 5<      $��1��6   $��Status��6$   $��20(�65   $
��Left=�6C   $��	24,10,0,0q�6^   $��4��6q   $	��Top=�6~   5=      5>      5?      