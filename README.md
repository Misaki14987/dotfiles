# dotfiles

NixOS + Hyprland 我不是xnn
| 目錄 | 內容 |
| -------------- | ------------------------------------------------------------------- |
| `home-manager` | `flake.nix` + `home.nix`（packages、fcitx5、starship、fish 等） |
| `hypr` | `hyprland.conf`（鍵位、autostart、截圖、壁紙快捷鍵） |
| `waybar` | `config.jsonc` + `style.css`（膠囊風格，顏色由 wallust 動態生成） |
| `wallust` | `wallust.toml` + `templates/waybar-colors.css`（壁紙→16 色調色板） |
| `kitty` | `kitty.conf`（macOS Terminal 風格） |
| `starship` | `starship.toml`（極簡單行 prompt） |
| `fish` | `config.fish` |
| `scripts` | `~/.local/bin/{set-wallpaper,wallpaper-picker}` |

## 安裝

```sh
git clone <repo> ~/dotfiles
cd ~/dotfiles
stow -t ~ home-manager hypr waybar wallust kitty starship fish scripts

# 應用 home-manager
home-manager switch --flake ~/.config/home-manager
```

如果沒有 stow，也可以手動 `cp -r */.* ~`。

## 主要工具鏈

- **窗口管理**: Hyprland
- **狀態欄**: waybar
- **壁紙**: `awww`（前 swww）+ `wallust`（從壁紙提取 16 色配色）
- **啟動器/選擇器**: wofi
- **截圖**: hyprshot（Print / Shift+Print / Ctrl+Print）
- **終端**: kitty + fish + starship
- **輸入法**: fcitx5 + Rime（小鶴雙拼）

## 快捷鍵速查（Hyprland，`$mainMod = Super`）

| 鍵            | 動作                       |
| ------------- | -------------------------- |
| `Super+Q`     | 終端                       |
| `Super+R`     | 應用啟動器                 |
| `Super+W`     | 壁紙選擇器（會自動換主題） |
| `Super+C`     | 關閉窗口                   |
| `Print`       | 框選截圖                   |
| `Shift+Print` | 窗口截圖                   |
| `Ctrl+Print`  | 全屏截圖                   |
