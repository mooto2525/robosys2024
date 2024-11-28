# bekiコマンド
ロボットシステム学授業用  
[![test](https://github.com/mooto2525/robosys2024/actions/workflows/test.yml/badge.svg)](https://github.com/mooto2525/robosys2024/actions/workflows/test.yml)

## 概要

- このプロジェクトはべき乗を計算するためのものになります
- seqコマンドやechoコマンドなどで並べた数字を行ごとに読み込みべき乗の計算をすることができます
- 整数以外を入力した場合は結果は出力せず、エラーを通知します
- **最初は２のべき乗からスタートし、次の行ではひとつ前の行の計算結果のべき乗を計算します**  
(例) seq 3の場合: 2^1=2, 2^2=4, 4^3=64といった計算結果になります。

## 必要なソフトウェア

- Python
  - テスト済みバージョン: 3.7~3.11


## テスト環境

- Ubuntu 22.04

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

  
### 実行方法の例
``` seq 5 | ./beki ```  

  
## サンプルコード
```#!/usr/bin/python3
# SPDX-FileCopyrightText: 2024 Ryusei Fujimura　　　　　
# SPDX-License-Identifier: BSD-3-Clause
import sys


def tonum(s):
    try:
        return int(s)
    except:
        return float(0)


ans = 2
for line in sys.stdin:
    line = line.rstrip()
    if line.isdecimal() == True:
        ans = ans ** tonum(line)
    else:
        print("整数を入力してください")
        sys.exit()

print(ans)
```

  
- このソフトウェアパッケージは、３条項BSDライセンスの下、再頒布及び使用が許可されます
- ©　2024 Ryusei Fujimura
