   M S B A M L   `   `   `  ����=  9CC, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:CC.UserControlsCC.UserControls  5      ,    &CC.UserControls.OportunidadesAprovadas   5      W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      /localclr-namespace:CC.UserControls     5      c _MahApps.Metro.IconPacks.Core, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137ag cMahApps.Metro.IconPacks.Material, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137a:Icon-http://metro.mahapps.com/winfx/xaml/iconpacks   5      .��5
      � .+�5   
   &   System.Windows.Controls.DataGrid  -   5           Name$   GridOportunidadesAprovadas��5   �   ���#eff2f7   DataGridStyle1#���   6(     DataGridCellStyle1   	CellStyle# �  6Q     DataGridColumnHeaderStyle1   ColumnHeaderStyle# �  6�     DataGridRowStyle2   RowStyle# �  6�   $��5��6�      Columns 5      4  .System.Windows.Controls.DataGridTemplateColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ ID��6)      
IsReadOnly$
 True��65      Width5  /System.Windows.Controls.DataGridLengthConverter$ * 6G      CellTemplate 5      �� 5      .R�5      �� 	 �� Orientation$	 
Horizontal=�6)   .+�5   "   �� $��25��6)   $��25��64   
 �� CornerRadius$
 50��6@   $��0 0 10 0q�6R   ���#f18047._�5   &   �� $��Center=�6D   $��Center=�6_   
�������$��0 0 0 1q�6�   ��60   �� *ID+6�   5   #   5      5      5      0  *System.Windows.Controls.DataGridTextColumn  5      $ Título da Vaga��6%   $
 True��6=   $	 200 6O   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6[   �� *
TituloVaga+  5      $ 
Requisitos��6%   $
 True��69   $	 190 6K    6W   �� *
Requisitos+  5      $ Empresa��6%   $
 True��66   $	 170 6H    6T   �� *NomeFantasia+  5      $ Status��6%   $
 True��65   $	 120 6G    6S   �� *
StatusVaga+  5      -   5        colunaAcoes��$ Ações��5   >   $
 True��6M   $	 100 6_    5      �� 5       .R�5!      �� $	 
Horizontal=�6)   .+�5"   "   ��  ��Name$ 	btnEditar��6)   -   5          gridEditButton#��[ 5"   <   .��5#   &   .  (MahApps.Metro.IconPacks.PackIconMaterial     Kind$ PencilOutline=�6<     gridButtonIcon#��[ 6Q   5$   #   �� 5%   "   $ 
btnRemover��6)   -   5          gridRemoveButton#��[ 5%   =   $��5 0 0 0q�6g   .��5&   &     $ DeleteOutline=�6<   #��[ 6Q   5'   #   �� 5(   "   $ 	btnFechar��6)   -   5        #��[ 5(   <   $��8 0 0 0q�6f   .��5)   &     $ Close=�6<   #��[ 6I   5*   #   5+      5,      5.      50      51      52      