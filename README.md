# bekiコマンド
ロボットシステム学授業用  
[![test](https://github.com/mooto2525/robosys2024/actions/workflows/test.yml/badge.svg)](https://github.com/mooto2525/robosys2024/actions/workflows/test.yml)
  
標準入力から行ごとに数字を読み取り、べき乗を計算して表示する。
  
## 必要なソフトウェア

- Python
  - テスト済みバージョン: 3.7~3.11


## テスト環境

- Ubuntu 22.04.5 LTS
  
## 使用方法(for Linux)
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

ここでbekiを実行

  
### 実行例
```$ seq 3 | ./beki```  
```64```  

    
## ライセンス
  
- このソフトウェアパッケージは、３条項BSDライセンスの下、再頒布及び使用が許可されます
- ©　2024 Ryusei Fujimura
