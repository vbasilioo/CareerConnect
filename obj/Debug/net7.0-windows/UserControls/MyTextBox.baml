   M S B A M L   `   `   `  ����=  9CC, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:CC.UserControlsCC.UserControls  5          CC.UserControls.MyTextBox   5      W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      /localclr-namespace:CC.UserControls     5      -   5          >�Name$  	myTextbox��5   H    � 	Resources 5	         	boolToVis��%   &	        �� 5
   
   6'   5      .��5      �� $��20 10q�6   .+�5   
   �� 
���   �$��20(�6[   $��0 0 0 8q�6i   ��6   ��  �� ElementName$ 	myTextbox�� �� Path$ Caption�6i   � 5   
   .+�5      �� -   5         ��Name$ lblSucessoCadastro��5      
��� � �$
��Bold"�6G   $y�	Collapsed=�6Y   $
��70 7q�6p   �� 5      -   5        $ lblErroSalario��5      
���  ��$
��Bold"�6A   $y�	Collapsed=�6S   $
��70 7q�6j   �� 5      -   5        $ lblErroCNPJ��5      
���  ��$
��Bold"�6>   $y�	Collapsed=�6P   $
��70 7q�6g   �� 5      $
��13 0q�6   $��Center=�6&   
���   � J� IsHitTestVisible$ False��6T    K� ZIndex$ 1��5      $��14(�6)   ��67   �� $ 	myTextbox��$
 Hint�y�6h   �� $ textBox��$ Text.IsEmpty� �� 	Converter# [  �� 5      -   5         ��Name$ textBox��5      
���   �6'   5      5      5      