   M S B A M L   `   `   `  ����=  9CC, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:CCCC  5   	       CC.TrocarSenhaUsuario   5   	   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   "localclr-namespace:CC     5   	     � Title$  TrocarSenhaUsuario��5   	   $	��673��5	      $	��500��6   ���#171d20 � WindowStartupLocation$ CenterScreen=�63    � WindowStyle$
 None=�6X    � AllowsTransparency$
 True��6k   .��5
      � .+�5   
   �� -   5         ��Name$ titulo��5      $��Vamos Começar!��6    $��36(�69   $��SemiBold"�6G   
�������$��Poppins)�6p   $��Center=�6�   $��0,95,0,0q�6�   $	��Top=�6�   �� 5   
   $-��'Redifina uma nova senha para sua conta.��6   $��18(�6B   $��Medium"�6P   
�������$��Poppins)�6w   $��Center=�6�   $	��Top=�6�   $��	0,182,0,0q�6�   �� 5   
   -   5         ��Name$ BotaoRedefinir��5      $��	Redefinir��6)   ���#f18047$��16(�6R   $
��Bold"�6`   $��Poppins)�6r   
�������$��Center=�6�   $��	0,556,0,0q�6�   $	��Top=�6�   $��35��6�   $	��400��6�   6�   �� 5   
   -   5        $ BotaoRedefinir2��5      $��	Redefinir��6*   ���#f18047$��16(�6S   $
��Bold"�6a   $��Poppins)�6s   
�������$��Center=�6�   $��	0,556,0,0q�6�   $	��Top=�6�   $��35��6�   $	��400��6�   6�   �� 5   
   -   5        $��Voltar��5      ���#171d20$��16(�67   $��Light"�6E   $��Poppins)�6X   
�������$��Center=�6�   $��	0,609,0,0q�6�   $	��Top=�6�   $��35��6�   $	��400��6�   6�   �� 5   
   $��Insira sua senha atual��6   
�������$��16(�6D   $��SemiBold"�6R   $��Poppins)�6h   $
��Left=�6}   $��
50,289,0,0q�6�   $	��Top=�6�   �� 5   
   -   5        $ labelNovaSenha��5      $��Insira uma nova senha��6(   
�������$��16(�6[   $��SemiBold"�6i   $��Poppins)�6   $
��Left=�6�   $��
50,369,0,0q�6�   $	��Top=�6�   �� 5   
   -   5        $ labelConfirmarSenha��5      $��Confirme sua senha��6-   
�������$��16(�6]   $��SemiBold"�6k   $��Poppins)�6�   $
��Left=�6�   $��
50,452,0,0q�6�   $	��Top=�6�   G� 5   
   -   5         G�Name$ CampoNovaSenha��5      
�������$��Center=�6A   $��	0,408,0,0q�6^   $	��Top=�6q   $	��400��6�   $��39��6�      PasswordBoxStyle#��[  6�   
������ 
�������$��7q�6�   G� 5   
   -   5        $ CampoSenhaAtual��5      
�������$��Center=�6B   $	��Top=�6_   $	��400��6w   $��39��6�   #��[  6�   
������ 
�������$��7q�6�   $��	0,323,0,0q�6�   G� 5   
   -	   5        $ CampoConfirmarSenha��5      
�������$��Center=�6F   $	��Top=�6c   $	��400��6{   $��39��6�   #��[  6�   
������ 
�������$��7q�6�   $��	0,481,0,0q�6�   �� 5   
   -
   5        $ LabelSucesso��5      $,��&Você alterou a sua senha com sucesso!��6&   
��� � �$��16(�6i   $
��Bold"�6w   $��Poppins)�6�   $��Center=�6�   $��	0,234,0,0q�6�   $	��Top=�6�   �� 5   
   -   5        $ LabelSenhaIncorretaPadrao��5      $'��!A senha inserida está incorreta.��63   
���  ��$��16(�6o   $
��Bold"�6}   $��Poppins)�6�   $��Center=�6�   $��	0,234,0,0q�6�   $	��Top=�6�   5      5      