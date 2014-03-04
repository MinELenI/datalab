fme ..\FME\BRK_INSPIRE_AU_1_percelen_ffs.fmw  --UITVOER_DIRECTORY  "..\ffs\Percelen"                       ^
                                              --LOG_FILE           "..\log\BRK_INSPIRE_AU_1_percelen.log"

fme ..\FME\BRK_INSPIRE_AU_2_secties_ffs.fmw   --UITVOER_DIRECTORY  "..\ffs\Secties"                        ^
                                              --SourceDataset_PATH "..\ffs\Percelen"                       ^
                                              --LOG_FILE           "..\log\BRK_INSPIRE_AU_2_secties.log"

fme ..\FME\BRK_INSPIRE_AU_3_kadgem_ffs.fmw    --SourceDataset_FFS  "..\ffs\Secties\*.ffs"                  ^
                                              --DestDataset_FFS    "..\ffs\Gemeenten\KadGem.ffs"           ^
                                              --LOG_FILE           "..\log\BRK_INSPIRE_AU_3_kadgem.log"

fme ..\FME\BRK_INSPIRE_AU_4_burggem_ffs.fmw   --SourceDataset_FFS        "..\Ffs\Gemeenten\kadgem.ffs"     ^
                                              --SourceDataset_XLS_ADO    "..\Data\XD720_2013.xls"          ^
                                              --SourceDataset_TEXTLINE   "..\Data\FINGIS_BURG_PROV.txt"    ^
                                              --DestDataset_FFS_BurgGem  "..\Ffs\Gemeenten\burggem.ffs"    ^
                                              --DestDataset_FFS_Prov     "..\Ffs\Gemeenten\provincie.ffs"  ^
                                              --LOG_FILE                 "..\log\BRK_INSPIRE_AU_4_burggem_prov.log"
