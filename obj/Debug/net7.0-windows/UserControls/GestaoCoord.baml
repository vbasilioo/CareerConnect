   M S B A M L   `   `   `  ����  CC!    CC.UserControls.GestaoCoord   5      W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   c _MahApps.Metro.IconPacks.Core, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137ag cMahApps.Metro.IconPacks.Material, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137a:Icon-http://metro.mahapps.com/winfx/xaml/iconpacks   5   	   ���#eff2f7.��5
      �   � RowDefinitions  5   
   �� 5      $
��Auto �6   �� 5      $��* �6   �� 5      $
��Auto �6   �� 5      $��* �6   .+�5   
   �� $��Vagas Pendentes��6   $��22(�6*   $��	10 20 0 0q�68   $��0��6K   �� 5   
   $��1��6   $
��Auto=�6$   .��5      &   System.Windows.Controls.DataGrid  -   5          Name$ GridOportunidades��5   �   $��1��6      DataGridStyle1#���   6$     DataGridCellStyle1   	CellStyle# �  6M     DataGridColumnHeaderStyle1   ColumnHeaderStyle# �  6~     DataGridRowStyle2   RowStyle# �  6�      Columns 5      4  .System.Windows.Controls.DataGridTemplateColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ ID��6-      
IsReadOnly$
 True��69      Width5  /System.Windows.Controls.DataGridLengthConverter$ * 6K   	   CellTemplate	 5      �� 5      .R�5   "   �� 
 �� Orientation$
 
Horizontal=�6-   .+�5   &   �� $��25��6-   $��25��68    �� CornerRadius$ 50��6D   $��0 0 10 0q�6V   ���#f18047._�5   *   �� $��Center=�6H   $��Center=�6c   
�������$��0 0 0 1q�6�   ��64   �� *ID+6�   5   '   5    #   5!      5#      0  *System.Windows.Controls.DataGridTextColumn  5$      $ Título da Vaga��6)   $
 True��6A   $	 290 6S   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6`   �� *
TituloVaga+  5%      $ Descrição da Vaga��6)   $
 True��6D   $	 180 6V    6b   �� *DescricaoVaga+  5&      $ Salário��6)   $
 True��6:   $	 100 6L    6X   �� *SalarioVaga+  5'      $ 
Requisitos��6)   $
 True��6=   $	 200 6O    6[   �� *
Requisitos+  5(      $ Empresa��6)   $
 True��6:   $	 200 6L    6X   �� *NomeFantasia+  5)      $
 CNPJ��6)   $
 True��67   $	 200 6I    6U   �� *CNPJ+  5*      $ Status��6)   $
 True��69   $	 100 6K    6W   �� *
StatusVaga+  5,      $ Ações��6-   $
 True��6<   $	 100 6N   	 5-      �� 5.      .R�5/   "   �� $
 
Horizontal=�6-   .+�50   &   ��  ��Name$ 
btnAprovar��6-   -   5          aproveButton#��[ 50   A   .��51   *   .  (MahApps.Metro.IconPacks.PackIconMaterial     Kind$ Check=�6@     gridButtonIcon#��[ 6M   52   '   �� 53   &   $ 
btnDeletar��6-   -   5          gridRemoveButton#��[ 53   A   .��54   *     $ DeleteAlertOutline=�6@   #��[ 6Z   55   '   56   #   57      59      5;      5<      �� 5?   
   $��
Candidatos��6   $��22(�6%   $��	10 20 0 0q�63   $��2��6F     5B   
   -   5        $ GridCandidaturas��5B   �   $��3��6   #���   6    # �  6I   # �  6z   # �  6�    5C        5D      $ Autor��6%   $
 True��64   $ * 6F    6P   �� *Autor+  5E      $
 Nome��6%   $
 True��63   $ * 6E    6O   �� *NomeCandidato+  5F      $ Empresa ou Título��6%   $
 True��6@   $ * 6R    6\   �� *
TituloVaga+  5H      $ Ações��6)   $
 True��68   $
 auto 6J   	 5I      �� 5J      .R�5K      �� $
 
Horizontal=�6)   .+�5L   "   �� $ btnAssociar��6)   -   5          detailsButton#��[ 5L   >   .��5M   &     $ CheckCircle=�6<   #��[ 6O   5N   #   �� 5O   "   $ btnDesassociar��6)   -   5        #��[ 5O   A   $��5 0 0 0q�6�   .��5P   &     $ 
AccountOff=�6<   #��[ 6N   5Q   #   5R      5S      5U      5W      5X      5Y      