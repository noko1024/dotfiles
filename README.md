# dotfiles

## dotfileの追加
```bash
chezmoi add .dot_file
```

## dotfileの編集
```bash
 chezmoi edit .dot_file
```

## dotfileの変更を適用
```bash
 chezmoi apply
```

## 端末の移行
```bash
chezmoi cd #プロジェクトフォルダへ移動

# 以降は通常通りgitを操作

# ここから別端末で
chezmoi init git@github.com:noko1024/dotfiles.git
chezmoi apply
```

## Reference
[chezmoi User guide](https://www.chezmoi.io/user-guide/command-overview/#daily-commands)
