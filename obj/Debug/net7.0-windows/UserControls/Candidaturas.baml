   M S B A M L   `   `   `  ����  CC"    CC.UserControls.Candidaturas   5      W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   c _MahApps.Metro.IconPacks.Core, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137ag cMahApps.Metro.IconPacks.Material, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137a:Icon-http://metro.mahapps.com/winfx/xaml/iconpacks   5   	   .��5	      � .+�5   
   &   System.Windows.Controls.DataGrid  -   5           Name$  GridOportunidades��5   �   $��5��6      DataGridStyle1#���   6      DataGridCellStyle1   	CellStyle# �  6I     DataGridColumnHeaderStyle1   ColumnHeaderStyle# �  6z     DataGridRowStyle2   RowStyle# �  6�      Columns 5      4  .System.Windows.Controls.DataGridTemplateColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ ID��6)      
IsReadOnly$
 True��65      Width5  /System.Windows.Controls.DataGridLengthConverter$ * 6G      CellTemplate 5      �� 5      .R�5      �� 	 �� Orientation$	 
Horizontal=�6)   .+�5   "   �� $��25��6)   $��25��64   
 �� CornerRadius$
 50��6@   $��0 0 10 0q�6R   ���#f18047._�5   &   �� $��Center=�6D   $��Center=�6_   
�������$��0 0 0 1q�6�   ��60   �� *ID+6�   5   #   5      5      5      0  *System.Windows.Controls.DataGridTextColumn  5      $ Título da Vaga��6%   $
 True��6=   $ * 6O   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6Y   �� *
TituloVaga+  5      $ Descrição da Vaga��6%   $
 True��6@   $ * 6R    6\   �� *DescricaoVaga+  5      $ Salário��6%   $
 True��66   $ * 6H    6R   �� *SalarioVaga+  5      $ 
Requisitos��6%   $
 True��69   $ * 6K    6U   �� *
Requisitos+  5      $ Empresa��6%   $
 True��66   $ * 6H    6R   �� *NomeFantasia+  5      $ Status��6%   $
 True��65   $ * 6G    6Q   �� *
StatusVaga+  5      $ Ações��6)   $
 True��68   $
 auto 6J    5       �� 5!      .R�5"      �� $	 
Horizontal=�6)   .+�5#   "   ��  ��Name$ 
btnAprovar��6)   -   5          aproveButton#��[ 5#   =   .��5$   &   .  (MahApps.Metro.IconPacks.PackIconMaterial     Kind$ Check=�6<     gridButtonIcon#��[ 6I   5%   #   5&      5'      5)      5+      5,      5-      