# futatabisan
Experiment on DEM to contour/hillshade conversion, Futatabisan in Hyogo Prefecture

![futatabisan](https://optgeo.github.io/futatabisan/img/screenshot.jpg)

# サイト
https://optgeo.github.io/futatabisan

# ソースデータ
- 兵庫県の[全県土分の高精度３次元データ](https://web.pref.hyogo.lg.jp/press/20200110_4566.html)のうち、[兵庫県_全域数値地形図](https://www.geospatial.jp/ckan/dataset/2010-2018-hyogo-geo-potal)の[兵庫県_全域DSM（2010年度～2018年度）](https://www.geospatial.jp/ckan/dataset/2010-2018-hyogo-geo-dsm)の[05OF79](https://www.geospatial.jp/ckan/dataset/00f12151-ef5f-4949-b7c4-0898a7b074be/resource/7803d63c-a702-427b-99b4-7c6156496dbd/download/05of79.zip)を使用した。

# 技術諸元
兵庫県の[平面直角座標系](https://www.gsi.go.jp/sokuchikijun/jpc.html)は5系であり、EPSGコードは 6668 + 5 = 6673 つまり EPSG:6673 になる。

# 実際の変換
実際の変換コマンドは Rakefile を参照のこと。

# See also
- https://github.com/unvt/pm/issues/20
- [再度山 (Wikipedia)](https://ja.wikipedia.org/wiki/%E5%86%8D%E5%BA%A6%E5%B1%B1)
