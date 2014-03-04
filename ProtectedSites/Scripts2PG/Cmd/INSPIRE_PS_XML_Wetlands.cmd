fme.exe ..\FME\postgres2XML.fmw                                               ^
        --XML_DIR              ..\XML_uit\Wetlands                            ^
        --FT_TYPE              98                                             ^
        --LOG_FILE             ..\Log\postgres2XML_PS_Wetlands.log

fme.exe ..\FME\postgres2XML_compleet.fmw                                      ^
        --DestDataset_TEXTLINE ..\XML_uit\Wetlands\PS_Wetlands.xml            ^
        --FT_TYPE              98                                             ^
        --LOG_FILE             ..\Log\postgres2XML_PS_Wetlands_compleet.log


