   M S B A M L   `   `   `  ����=  9CC, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:CCCC  5   	       CC.CadastrarCoordenador   5   	   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   "localclr-namespace:CC     5   	     � Title$  CadastrarCoordenador��5   	   $	��550��6&   $	��600��63   ���#171d20 � WindowStartupLocation$ CenterScreen=�6T    � WindowStyle$
 None=�6y    � AllowsTransparency$
 True��6�   .��5	      � .+�5
   
   �� -   5         ��Name$ 	CampoNome��5
      
�������$��Center=�68   $��0,80,0,0q�6U    �� TextWrapping$
 Wrap=�6g   $	��Top=�6{   $	��518��6�   �� 5   
   -   5        $ 
CampoEmail��5      
�������$��Center=�69   $��	0,183,0,0q�6V   $
 Wrap=�6i   $	��Top=�6}   $	��518��6�   �� 5   
   -   5        $ CampoEndereco��5      
�������$��Center=�6<   $��	0,424,0,0q�6Y   $
 Wrap=�6l   $	��Top=�6�   $	��518��6�   (  "System.Windows.Controls.DatePicker  5   
   -   5          Name$ CampoNascimento��5      $��Center=�6.   $��	0,343,0,0q�6K   $	��Top=�6^   $	��518��6v   
������ 6�   �� 5   
   $��Nome e Sobrenome��6   
�������$��SemiBold"�6>   $��16(�6T   $��Poppins)�6b   $
��Left=�6w   $��	41,41,0,0q�6�   $	��Top=�6�   �� 5   
   $��E-mail��6   
�������$��SemiBold"�64   $��16(�6J   $��Poppins)�6X   $
��Left=�6m   $��
40,143,0,0q�6�   $	��Top=�6�   G� 5   
   -   5         G�Name$ 
CampoSenha��5      $��Center=�6*   $��	0,261,0,0q�6G   $	��Top=�6Z   $	��518��6r   $��38��6~      PasswordBoxStyle2#��[  6�   
������ 
�������$��7q�6�   
�������6�   �� 5   
   $��Senha��6   
�������$��SemiBold"�63   $��16(�6I   $��Poppins)�6W   $
��Left=�6l   $��
41,227,0,0q�6�   $	��Top=�6�   �� 5   
   $��Data de Nascimento��6   
�������$��SemiBold"�6@   $��16(�6V   $��Poppins)�6d   $
��Left=�6y   $��
41,304,0,0q�6�   $	��Top=�6�   �� 5   
   $��	Endereço��6   
�������$��SemiBold"�66   $��16(�6L   $��Poppins)�6Z   $
��Left=�6o   $��
41,385,0,0q�6�   $	��Top=�6�   �� 5   
   -   5        $��	Cadastrar��5        
mainbutton#��[ 6%   $
��Left=�6I   $��
41,489,0,0q�6d   $	��Top=�6x   $	��337��6�   6�   �� 5   
   -   5        $��Voltar��5        buttonMainGreen#��[ 6"   $
��Left=�6K   $��401,489,0,0q�6f   $	��Top=�6{   $	��158��6�   6�   �� 5   
   -   5         ��Name$ LabelSucesso��5      $*��$Sucesso ao cadastrar um coordenador!��6&   
��� � �$
��Bold"�6h   $��14(�6z   $��Center=�6�   $��0,10,0,0q�6�   $	��Top=�6�   	 J� RenderTransformOrigin$	 -0.382,0.482&�6�   $	��265��6�   �� 5   
   -	   5        $ LabelErrado��5      $2��,O coordenador deve possuir nome e sobrenome.��6%   
���  ��$
��Bold"�6m   $��14(�6   $��Center=�6�   $��0,10,0,0q�6�   $	��Top=�6�   $	 0.583,-0.241&�6�   �� 5   
   -
   5        $ LabelErroEmail��5      $��Este e-mail é inválido.��6(   
���  ��$
��Bold"�6[   $��14(�6m   $��Center=�6{   $��0,10,0,0q�6�   $	��Top=�6�   $	 0.583,-0.241&�6�   5      5      