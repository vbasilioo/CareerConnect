   M S B A M L   `   `   `  ����   CC"    CC.UserControls.Candidaturas   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     c _MahApps.Metro.IconPacks.Core, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137ag cMahApps.Metro.IconPacks.Material, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137a:Icon-http://metro.mahapps.com/winfx/xaml/iconpacks   .��� .+�&   System.Windows.Controls.DataGrid  -      Name$  GridOportunidades��$��5��   DataGridStyle1#���     DataGridCellStyle1   	CellStyle# �    DataGridColumnHeaderStyle1   ColumnHeaderStyle# �    DataGridRowStyle2   RowStyle# �     Columns 4  .System.Windows.Controls.DataGridTemplateColumn  ,  &System.Windows.Controls.DataGridColumn   Header$ ID��   
IsReadOnly$
 True��   Width5  /System.Windows.Controls.DataGridLengthConverter$ *    CellTemplate �� .R��� 	 �� Orientation$	 
Horizontal=�.+��� $��25��$��25��
 �� CornerRadius$
 50��$��0 0 10 0q����#f18047._��� $��Center=�$��Center=�
�������$��0 0 0 1q����� *ID+0  *System.Windows.Controls.DataGridTextColumn  $ Título da Vaga��$
 True��$ * 1  +System.Windows.Controls.DataGridBoundColumn   Binding �� *
TituloVaga+  $ Descrição da Vaga��$
 True��$ *  �� *DescricaoVaga+  $ Salário��$
 True��$ *  �� *SalarioVaga+  $ 
Requisitos��$
 True��$ *  �� *
Requisitos+  $ Empresa��$
 True��$ *  �� *NomeFantasia+  $ Status��$
 True��$ *  �� *
StatusVaga+  $ Ações��$
 True��$
 auto  �� .R��� $	 
Horizontal=�.+���  ��Name$ 
btnAprovar��-     aproveButton#��[ .��.  (MahApps.Metro.IconPacks.PackIconMaterial     Kind$ Check=�  gridButtonIcon#��[ 