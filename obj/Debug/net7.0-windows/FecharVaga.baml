   M S B A M L   `   `   `  ����=  9CC, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:CC.UserControlsCC.UserControls  5          CC.FecharVaga   5   	   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   
   R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      /localclr-namespace:CC.UserControls     5      c _MahApps.Metro.IconPacks.Core, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137ag cMahApps.Metro.IconPacks.Material, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137a:Icon-http://metro.mahapps.com/winfx/xaml/iconpacks   5   	   
������   � WindowStartupLocation$  CenterScreen=�5	   P    � WindowStyle$
 None=�6u    � AllowsTransparency$
 True��6�   .��5      � .+�5   
   ��  �� CornerRadius$ 30��6   ���#eff2f7._�5      &   System.Windows.Controls.DataGrid  -   5          Name$ GridCandidatos��5   *  
������    DataGridStyle1#���   6S     DataGridCellStyle1   	CellStyle# �  6|     DataGridColumnHeaderStyle1   ColumnHeaderStyle# �  6�     DataGridRowStyle2   RowStyle# �  6�   $��5��6  $��10,10,10,35q�6B  ��6   �� *
Candidatos+   Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn	   Header$
	 Nome��6)   
   
IsReadOnly$

 True��67      Width5  /System.Windows.Controls.DataGridLengthConverter$ * 6I   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6S   �� *NomeCandidato+  5      $	 Curso��6)   $

 True��68   $ * 6J    6T   �� *Curso+4  .System.Windows.Controls.DataGridTemplateColumn  5      -   5        colunaAcoes��$	 Ações��5   B   $

 True��6Q   $
 auto 6c      CellTemplate 5      �� 5      .R�5   "   ��  �� Orientation$ 
Horizontal=�6-   .+�5   &   ��  ��Name$ btnSelecionar��6-   -   5          detailsButton#��[ 5   D   
 � Tag 6�   �� .��5   *   .  (MahApps.Metro.IconPacks.PackIconMaterial     Kind$ 	BellCheck=�6@     gridButtonIcon#��[ 6Q   5   '   5   #   5      5      5!      5"      � 5%   
   .+�5&      �� -   5        $��Voltar��5&      $
��Left=�6&   $	��Top=�6A     
buttonMain#��[ 6Y   $��1300,690,0,0q�6}   $	��126��6�   6�   5'      5(      5+      