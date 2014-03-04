fme.exe ..\FME\postgres2XML.fmw                                               ^
        --XML_DIR              ..\XML_uit                                     ^
        --FT_TYPE              99                                             ^
        --LOG_FILE             ..\Log\postgres2XML_PS_N2000.log

fme.exe ..\FME\postgres2XML_compleet.fmw                                      ^
        --DestDataset_TEXTLINE ..\XML_uit\PS_Natura200.xml                    ^
        --FT_TYPE              99                                             ^
        --LOG_FILE             ..\Log\postgres2XML_PS_N2000_compleet.log


