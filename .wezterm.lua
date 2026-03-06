local wezterm = require 'wezterm'

return {
  -- WezTerm 실행 시 기본 쉘
  default_prog = { "wsl.exe", "-d", "Ubuntu20WSL1", "-u", "utylee", "--cd", "~" },
  window_close_confirmation = "NeverPrompt",
  skip_close_confirmation_for_processes_named = {
	  "bash",
	  "zsh",
	  "fish",
	  "tmux",
  },
  warn_about_missing_glyphs = false,
  -- UI 최소화
  -- enable_tab_bar = false,            -- WezTerm 탭바 완전 제거
  window_decorations = "RESIZE",     -- OS 타이틀바 제거(드래그는 안 됨, 리사이즈만)
  use_fancy_tab_bar = false,
  mouse_bindings = {
	  {
		event = { Drag = { streak = 1, button = "Left" } },
		mods = "ALT",
		action = wezterm.action.StartWindowDrag,
	  },
	},

  keys = {
	{ key = "1", mods = "ALT|CTRL", action = wezterm.action.ActivateTab(0) },
	  { key = "2", mods = "ALT|CTRL", action = wezterm.action.ActivateTab(1) },
	  { key = "3", mods = "ALT|CTRL", action = wezterm.action.ActivateTab(2) },
	  { key = "4", mods = "ALT|CTRL", action = wezterm.action.ActivateTab(3) },
	  { key = "5", mods = "ALT|CTRL", action = wezterm.action.ActivateTab(4) },
	{
		key = "E",
		mods = "CTRL|SHIFT",
		action = wezterm.action.PromptInputLine {
		  description = "Rename Tab",
		  action = wezterm.action_callback(function(window, pane, line)
			if line then
			  window:active_tab():set_title(line)
			end
		  end),
		},
	  },
	{
      key = "W",
      mods = "CTRL|SHIFT",
      action = wezterm.action.CloseCurrentTab { confirm = false },
    },

    -- Ubuntu24 WSL2
    {
      key = "@",
      mods = "CTRL|SHIFT",
      action = wezterm.action.SpawnCommandInNewTab {
        args = { "wsl.exe", "-d", "Ubuntu24WSL2", "-u", "utylee", "--cd", "~" },
      },
    },

    -- PowerShell
    {
      key = "#",
      mods = "CTRL|SHIFT",
      action = wezterm.action.SpawnCommandInNewTab {
        args = { "powershell.exe" },
      },
    },

    -- CMD
    {
      key = "$",
      mods = "CTRL|SHIFT",
      action = wezterm.action.SpawnCommandInNewTab {
        args = { "cmd.exe" },
      },
    },

  },

  -- font = wezterm.font_with_fallback({
	  -- { family = "FiraCode Nerd Font Mono", weight = "Light" },
	  -- { family = "Symbols Nerd Font Mono" },
  -- }),
  -- font = wezterm.font_with_fallback({
	  -- { family = "JetBrains Mono", weight = "ExtraLight" },
	  -- { family = "Symbols Nerd Font Mono" },
  -- }),
  font = wezterm.font_with_fallback({
	  { family = "FiraCode Nerd Font Mono", weight = "Light" },
	  -- { family = "FiraCode Nerd Font Mono", weight = "Regular" },
	  -- { family = "JetBrains Mono", weight = "ExtraLight" },
    -- { family = "Cascadia Mono NF", weight = "Light" },
	{ family = "Noto Sans KR", weight = "Light" },
    { family = "Symbols Nerd Font Mono" },
  }),
  -- font = wezterm.font_with_fallback({
  --   { family = "Iosevka Term", weight = "Light" },
  --   { family = "Symbols Nerd Font Mono" },
  -- }),
  -- font = wezterm.font_with_fallback({
  --   { family = "Maple Mono NL NF", weight = "Light" },
  --   { family = "Symbols Nerd Font Mono" },
  -- }),
  font_rules = {
	  {
		intensity = "Bold",
		font = wezterm.font_with_fallback({
		  { family = "FiraCode Nerd Font Mono", weight = "Regular" },
		  -- { family = "FiraCode Nerd Font Mono", weight = "Light" },
		  -- { family = "Cascadia Mono NF", weight = "Light" },
		  { family = "Noto Sans KR", weight = "Light" },
		  { family = "Symbols Nerd Font Mono" },
		}),
	  },
	},

  -- font_rasterizer = "FreeType",
	-- freetype_load_target = "Normal",
	-- freetype_load_target = "Light",
	-- freetype_render_target = "VerticalLcd",
	-- freetype_render_target = "HorizontalLcd",
	-- freetype_interpreter_version = 100,
	-- harfbuzz_features = { "calt=0", "clig=0", "liga=0" },
 
  bold_brightens_ansi_colors = false,

  initial_cols = 92,
  initial_rows = 36,

  -- window_padding = {
	  -- left = 0,
	  -- right = 0,
	  -- top = 0,
	  -- bottom = 0,
	-- },
	--
	
	-- wezterm.on('gui-startup', function(cmd)
	--   local tab, pane, mux_window = mux.spawn_window(cmd or {})
	--   local gui_window = mux_window:gui_window()
	--   if gui_window then
	-- 	gui_window:set_position(420, 60)
	-- 	gui_window:set_inner_size(1000, 700)
	--   end
	-- end),

  wezterm.on("gui-startup", function(cmd)
	  local _, _, window = wezterm.mux.spawn_window(cmd or {})
	  window:gui_window():set_position(420, 60)
	  window:gui_window():set_inner_size(1150, 915)
	end),

  -- window_position = { x = 93, y = 38 },

  font_size = 12,
  color_scheme = "Selenized Dark (Gogh)",
  front_end = "WebGpu",
  -- enable_tab_bar = false,

}
