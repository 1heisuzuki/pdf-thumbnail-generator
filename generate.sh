#!/bin/bash
 
if [ $# -ne 3 ];then
echo “Usage: $0 入力PDFファイル名 横の枚数 縦の枚数”
exit
fi
 
TARGET=$1

gs \
-dSAFER \
-dBATCH \
-dNOPAUSE \
-sDEVICE=jpeg \
-r72 \
-dTextAlphaBits=4 \
-dGraphicsAlphaBits=4 \
-dMaxStripSize=8192 \
-sOutputFile=temp_%010d.jpg \
${TARGET}

montage -tile $2x$3 -resize 100% -geometry +0+0 temp_*.jpg marged.jpg

rm temp_*.jpg