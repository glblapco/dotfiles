import XMonad
import XMonad.Hooks.ManageDocks
import XMonad.Util.Run
import XMonad.Hooks.DynamicLog
import XMonad.Util.CustomKeys
import XMonad.Util.EZConfig
import System.IO
import System.Exit
import Graphics.X11.ExtraTypes.XF86
import XMonad.Hooks.EwmhDesktops

main = do
xmproc <- spawnPipe "polybar xmonadbar"
xmonad $ def
  { terminal = "alacritty"
  , handleEventHook    = fullscreenEventHook
  , manageHook = manageDocks <+> manageHook def
  , layoutHook = avoidStruts  $ layoutHook def
  , modMask = mod4Mask
  , workspaces    = ["1","2","3","4","5","6","7","8","9"]
  }
  `additionalKeys`
  [ ((mod4Mask, xK_d), spawn "exe= `rofi -show run -theme /home/biel/.config/rofi/themes/0xmonad.rasi` && eval \"exec $exe\"")
  , ((mod4Mask .|. shiftMask, xK_q     ), kill)
  , ((mod4Mask .|. shiftMask, xK_c     ), io (exitWith ExitSuccess))
  , ((mod4Mask .|. shiftMask, xK_r     ), restart "xmonad" True)
  , ((0, 0x1008FF11), spawn "pactl set-sink-volume 0 -5%")
  , ((0, 0x1008FF13), spawn "pactl set-sink-volume 0 +5%")
  , ((0, 0x1008FF12), spawn "pactl set-sink-mute 0 toggle")
  ]
