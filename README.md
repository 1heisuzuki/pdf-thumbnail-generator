# 何？
複数ページのPDFをサムネイルにするスクリプト

# 使い方
## macにImageMagickをインストール
brew などお好みで
`brew install imagemagick`

## generate.sh と同じディレクトリに処理したいPDFを置く
下記の例の場合， `input.pdf` が入力PDFです
```
.
├── README.md
├── generate.sh
└── input.pdf
```

## 実行
`sh generate.sh [入力PDFファイル名] [横の枚数] [縦の枚数]`  
  
例: `sh generate.sh input.pdf 5 5`  
結果:  
![](README_material/sample_marged.jpg)


# 参考サイト
- pdfをページごとにpngファイルに変換 | rakkyooの備忘録  
[http://rakkyoo.net/?p=1384](http://rakkyoo.net/?p=1384)
- 複数の画像をタイル状に結合して１枚にするスクリプト | 星印のメモ  
[http://hosimemo.com/?p=146](http://hosimemo.com/?p=146)
- mac にImageMagickをインストールし、convertコマンドで画像を縮小する。 [https://qiita.com/sowd/items/832594dd22d99aebc8a2](https://qiita.com/sowd/items/832594dd22d99aebc8a2)