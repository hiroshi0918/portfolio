# portfolio

寺嶋 裕（Hiroshi Terashima）のポートフォリオサイト（静的 HTML / CSS / JS）。

想定公開 URL: **https://hiroshi0918.github.io/portfolio/**

## ローカルで開く

アセット・内部リンクは GitHub Pages のプロジェクトサイト用に `/portfolio/` ベースです。

```bash
./serve-local.sh
# → http://localhost:8080/portfolio/
```

または手動で:

```bash
# リポジトリを親ディレクトリから /portfolio/ として配信
cd ..
# ディレクトリ名が portfolio でない場合は symlink を作る
ln -sfn "$(pwd)/portfolio-site" portfolio   # 例: このワークスペース構成の場合
python3 -m http.server 8080
# → http://localhost:8080/portfolio/
```

`index.html` をファイルとして直接開くと CSS/JS が 404 になります。

## GitHub Pages 有効化手順

1. このリポジトリを `https://github.com/hiroshi0918/portfolio` に push（ブランチ `main`）
2. GitHub → **Settings** → **Pages**
3. **Source** を **GitHub Actions** に設定
4. `.github/workflows/pages.yml` が `main` への push で走り、リポジトリルートをデプロイ
5. 数分後に https://hiroshi0918.github.io/portfolio/ で確認

初回は Actions タブで workflow の成功を確認してください。

## 構成

```
.
├── index.html
├── styles.css
├── script.js
├── serve-local.sh
├── .nojekyll
├── assets/
│   ├── brand/monogram.svg
│   ├── projects/
│   │   ├── cocolog/   # App Store スクリーンショット
│   │   └── grow/      # プロダクト画面 + architecture.svg
│   └── talks/
│       └── edinet-lt/ # meetup #9 LT スライド + pptx
├── .github/
│   └── workflows/
│       └── pages.yml
└── README.md
```

## 作品の比重

**ココロパレット（cocolog）** と **Grow** は同等の比重（並びのカード）で掲載しています。補足として `edinet_data_pipeline` のみ小さめに記載。`movies_rank` / `MemoApp` は未掲載。

**Talks**: データラーニングギルド meetup #9「データ分析×失敗談」での LT（EDINET 人的資本データ）を `#talks` に掲載。

## 連絡

公開サイト上の連絡先はメール（`terahiro0918@gmail.com`）と GitHub のみ。住所・電話は掲載しません。
