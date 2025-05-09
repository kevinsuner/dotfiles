local wezterm = require('wezterm')
local config = wezterm.config_builder()
local act = wezterm.action

config.color_scheme = 'Gruvbox Dark (Gogh)'
config.font = wezterm.font('JetBrains Mono', { weight = 'Bold' })

config.keys = {
  -- Window
  { key = '=', mods = 'CTRL', action = act.IncreaseFontSize },
  { key = '-', mods = 'CTRL', action = act.DecreaseFontSize },
  { key = '0', mods = 'CTRL', action = act.ResetFontSize },
  { key = 'Enter', mods = 'ALT', action = act.ToggleFullScreen },

  -- Tabs
  { key = 't', mods = 'CTRL', action = act.SpawnTab 'DefaultDomain' },
  { key = 'k', mods = 'CTRL', action = act.CloseCurrentTab{ confirm = true } },
  { key = '1', mods = 'ALT', action = act.ActivateTab(0) },
  { key = '2', mods = 'ALT', action = act.ActivateTab(1) },
  { key = '3', mods = 'ALT', action = act.ActivateTab(2) },
  { key = '4', mods = 'ALT', action = act.ActivateTab(3) },
  { key = '5', mods = 'ALT', action = act.ActivateTab(4) },

  -- Clipboard
  { key = 'c', mods = 'CTRL|SHIFT', action = act.CopyTo 'Clipboard' },
  { key = 'v', mods = 'CTRL|SHIFT', action = act.PasteFrom 'Clipboard' },

  -- Modes
  { key = 'Enter', mods = 'CTRL|SHIFT', action = act.ActivateCopyMode },
}

return config
