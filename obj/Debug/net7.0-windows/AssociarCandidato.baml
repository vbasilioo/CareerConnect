   M S B A M L   `   `   `  ����=  9CC, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:CC.UserControlsCC.UserControls  5   	       CC.AssociarCandidato   5   	   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   ] YXceed.Wpf.Toolkit.NET5, Version=4.5.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f44xctk)http://schemas.xceed.com/wpf/xaml/toolkit  5   	   :d2http://schemas.microsoft.com/expression/blend/2008  5   	   Dmc;http://schemas.openxmlformats.org/markup-compatibility/2006  5   	   &ucclr-namespace:CC.UserControls  5   	   $	��700��5   	   $	��850��6     � WindowStyle$
  None=�6"    � WindowStartupLocation$ CenterScreen=�65    � AllowsTransparency$
 True��6Z   
������ .��5
      � .+�5   
   ��  �� CornerRadius$ 7��6   ���#ffffff J� Effect 5      3  -System.Windows.Media.Effects.DropShadowEffect  5         
BlurRadius$ 30Q�6#      ShadowDepth$ 5Q�63      	Direction$
 -130Q�6C      Opacity$	 0.1Q�6T   ._�5      � $
��20 0q�6   	 � RowDefinitions	 5      �� 5      $
��auto �6$   �� 5      $
��auto �6$   �� 5      $��* �6$   �� 5      $��* �6$   �� 5      $��* �6$   �� 5      $��* �6$   �� 5      $
��auto �6$   
 � ColumnDefinitions
 5      �� 5      $��* �6'   �� 5      $��* �6'   .+�5      ��  �� Orientation$ 
Horizontal=�6   $��20 20 -100 0q�66   .+�5       �� -   5         ��Name$ lblDetalhes��5        $��Detalhes��65   ���#374655$��18(�6Z   $��15 0 0 0q�6h   $��Center=�6z   �� 5!      -   5        $ lblSucessoAssoc��5!       $%��Usuário associado com sucesso!��69   
��� � �$��18(�6r   $��	100 0 0 0q�6�   $
��Bold"�6�   $��Center=�6�   �� 5"      -   5        $ lblSucessoCadastro��5"       $"��Vaga cadastrada com sucesso!��6<   
��� � �$��16(�6s   $��	-70 0 0 0q�6�   $��Center=�6�   $y�	Collapsed=�6�   �� 5#      -   5        $ lblErroSalario��5#       $��Salário inválido.��68   
���  ��$��16(�6b   $��	-70 0 0 0q�6p   $��Center=�6�   $y�	Collapsed=�6�   �� 5$      -   5        $ lblErroCNPJ��5$       $��CNPJ inválido.��65   
��� � �$��16(�6^   $��	-70 0 0 0q�6l   $��Center=�6   $y�	Collapsed=�6�   5%      �� 5'      $ 
Horizontal=�6   $��1��66   $��Right=�6F   $��	0 20 20 0q�6b   .+�5)      �� $��10 0 0 0q�6!   $��Center=�63   5*      5+      �� 5,      $��1��6   $��2��6)   $	��0.7��6=   $��-20 20q�6J   ���#e1e6eb6Z      CC.UserControls.MyTextBox  5.      -   5          Name$ txtNome��5.      $��0��60   $��2��6@      Caption$ Nome *��6M   �� 5/      -   5         ��Name$ cmbVagas��5/      $��0��6-   $��3��6=    �� DisplayMemberPath$
 Nome��6J    �� SelectedValuePath$ ID��6c   $��20,41,21,41q�6z   �� 52      $��6��6   $��2��6&   $��80��6:   ���#f6f6f6$ 	0 0 10 10��6[   $��-20 40 -20 0q�6t   �� 54      -   5        $��1��54      $��6��6)   $��Associar��66   $��	0 40 20 0q�6I   $��Right=�6\      
Mainbutton#��[  6x    55        56      $ 10Q�6+   $ 5Q�6;      Color$ #f18047��6K   $	 0.3Q�6[   $
 -120Q�6i   58      �� 59      -	   5        $��Voltar��59      $��6��6*   $
��Left=�67   $��	20 40 0 0q�6R   $	��150��6e     Secondarybutton#��[ 6q   6�   5:      5;      5<      5=      