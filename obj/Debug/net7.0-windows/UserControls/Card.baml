   M S B A M L   `   `   `  ����  CC    CC.UserControls.Card   5      W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      -   5        $��Cards��5      ���#ffffff.��5      �� ���#242f34  �� CornerRadius$  7��6"   $
��30 4q�63   $��1q�6A   ��5   
   �� 5	       �� 
TargetType" ��6   .�5
      ��  �� Property � �� �� Value
 ���� 60    �� Triggers 5      P� 5       P� Property �@J�IsMouseOver P� Value$
 True��65   . �5      ��  � �� �#ffffff68   5      �� 5       �� Binding 6"   ��  �� ElementName$
 card��	 �� Path$	 IsActive�
 �� Value
 True6U   .a�5      ��  � �� �#ffffff68   5      5      ._�5   
   �  � ColumnDefinitions 5      �� 5      $
��auto �6#   �� 5      $	��135 �6#   �� 5      $
��auto �6#   .+�5      �� $  50��6   $��45��6'   $��45��62   ���#ffffff$��20 10 20 10q�6S   ._�5      A� $��42��6   $��42��6%   ��5      �� 5       j� Stretch$ UniformToFill=�6Y    �� ImageSource 6%   �� $
 Card��$	 Image�6Y   5       5!      �� 5"      $��1��6   $��Center=�6)   .+�5#      �� $��14(�6   ��6*   �� $
 Card��$	 Title��� 5$      $��11(�6   $��Light"�6*   $��0 3 0 0q�6=   ��6N   �� $
 Card��$
	 Time�5%      �� 5&      $��2��6   $  50��6%   $��25��67   $��25��6B   ���#ffffff$��Center=�6c   ._�5'      �� $��Center=�6   $��Center=�69   $��10(�6T   ��6b   �� $
 Card��$	 Number�5(      5)      5*      5+      