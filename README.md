# bekiコマンド
ロボットシステム学授業用  
[![test](https://github.com/mooto2525/robosys2024/actions/workflows/test.yml/badge.svg)](https://github.com/mooto2525/robosys2024/actions/workflows/test.yml)
  
標準入力から行ごとに数字を読み取り、べき乗を計算して表示する。
  
## 必要なソフトウェア

- Python
  - テスト済みバージョン: 3.7~3.11


## テスト環境

- Ubuntu 22.04 LTS
  
## 使用準備(for Linux)  
以下の手順で行ってください  

Gitをインストール(Gitをインストールしていない方のみ)  
```sudo apt-get install git```  
  
リポジトリをクローン  
```git clone https://github.com/mooto2525/robosys2024.git```  
  
ディレクトリに移動  
```cd robosys2024```  
  
移動できたか確認  
```ls```  
```LICENSE  README.md  beki  test  test.bash  test.yml```  
と表示されればok  
  
実行権限を付与  
```chmod +x beki```  

## 使用方法  
- 入力例1  
```seq 3 | ./beki```
  - 実行結果
```64```  
- 入力例2  
```echo 10 | ./beki```  
  - 実行結果
```1024```  
## ライセンス
  
- このソフトウェアパッケージは、３条項BSDライセンスの下、再頒布及び使用が許可されます
- このパッケージのコードの一部は、下記のスライド（CC-BY-SA 4.0 by Ryuichi Ueda）のものを、本人の許可を得て自身の著作としたものです。
  - [ryuichiueda/slides_marp/robosys2024](https://github.com/ryuichiueda/slides_marp/tree/master/robosys2024)
- © 2024 Ryusei Fujimura
