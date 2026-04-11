{ pkgs, ... }:

{
  i18n.inputMethod = {
    type = "fcitx5";
    enable = true;
    fcitx5.addons = with pkgs; [
      fcitx5-rime
      qt6Packages.fcitx5-configtool
      fcitx5-gtk
    ];
  };

  # Rime configuration with Xiaohe (小鹤双拼) input method
  home.file = {
    ".config/fcitx5/rime/default.custom.yaml".text = ''
      patch:
        schema_list:
          - schema: double_pinyin_flypy  # 小鹤双拼
          - schema: luna_pinyin          # 朙月拼音 (全拼备用)
        menu:
          page_size: 9
        switcher:
          caption: [ 输入法 ]
          hotkeys:
            - "Control+grave"
        ascii_composer:
          switch_key:
            Shift_L: inline_ascii
            Shift_R: commit_code
    '';

    # Xiaohe double pinyin schema custom settings
    ".config/fcitx5/rime/double_pinyin_flypy.custom.yaml".text = ''
      patch:
        translator/dictionary: luna_pinyin
        translator/preedit_format: {}
        schema/dependencies:
          - stroke  # 五笔画作为反查
    '';
  };
}
