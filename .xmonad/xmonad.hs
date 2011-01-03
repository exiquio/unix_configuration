import XMonad
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Hooks.ManageHelpers
import XMonad.Layout.NoBorders
import XMonad.Layout.Tabbed
import XMonad.Util.Run

import System.IO

import qualified Data.Map as M

main = do
	xmproc <- spawnPipe "xmobar ~/.xmobarrc"
	xmonad $ defaultConfig
		{
			terminal = "urxvt",
			workspaces = ["web", "office", "media", "code", "misc", "admin"],
			normalBorderColor = "#000000",
			focusedBorderColor = "#FFFFFF",
			manageHook =
				composeOne
					[
						isFullscreen -?> doFullFloat,
						isDialog -?> doCenterFloat
					]
				<+> composeAll
					[
						className =? "Chromium" --> doShift "web",
						className =? "Amarok" --> doShift "media",
						className =? "Mplayer" --> doShift "media",
						className =? "Mplayer" --> doFloat,
						className =? "Okular" --> doShift "misc",
						className =? "Skype" --> doShift "office",
						className =? "Skype" --> doFloat,
						className =? "Catfish.pyc" --> doFloat,
						className =? "Gimp" --> doShift "misc",
						className =? "Gimp" --> doFloat,
						className =? "Alsamixer-qt4" --> doShift "media",
						className =? "Alsamixer-qt4" --> doFloat,
						className =? "Visual-regexp" --> doShift "misc",
						className =? "Visual-regexp" --> doFloat,
						className =? "Adeskmenu" --> doFloat,
						className =? "Pyvolwheel" --> doFloat,
						className =? "Thunar" --> doFloat,
					]
				<+> manageDocks,
			layoutHook = myLayout,
			logHook = dynamicLogWithPP $ xmobarPP
				{
					ppOutput = hPutStrLn xmproc,
					ppTitle = xmobarColor "green" "" . shorten 50
				},
			keys = \c -> myKeys c `M.union` keys defaultConfig c
		}
		where
			nmaster = 1
			ratio = 1/2
			delta = 3/100
			tiled = Tall nmaster delta ratio
			myTabConfig = defaultTheme {
				inactiveBorderColor = "#000000",
				inactiveTextColor = "#000000",
				inactiveColor = "#FFFFFF",
				activeBorderColor = "#FFFFFF",
				activeTextColor = "#FFFFFF",
				activeColor = "#000000"
			}
			myLayout = avoidStruts $ smartBorders $ tiled
				||| Mirror tiled
				||| Full
				||| tabbed shrinkText myTabConfig
			myKeys (XConfig {modMask = modm}) = M.fromList $
				[
					((modm, xK_s), spawn "catfish"),
					((modm, xK_f), spawn "thunar"),
					((modm, xK_p), spawn "dmenu_run -fn  'xft:Dejavu Sans Mono-7:antialiased=true' -nb '#000000' -nf '#FFFFFF' -sb '#000000' -sf '#FFFFFF' -i"),
					((modm, xK_l), spawn "hslock"),
					((modm, xK_F1), spawn "eject"),
					((modm, xK_F3), spawn "aumix -v -2"),
					((modm, xK_F6), spawn "~/bin/brightness.rb up"),
					((shiftMask, xK_F6), spawn "~/bin/brightness.rb down"),
					((modm, xK_F7), spawn "aumix -v +2"),
					((modm, xK_F8), spawn "amixer set Master toggle"),
					((0, xK_Print), spawn "scrot -e 'mv $f ~/Pictures/Screenshots'")
				]
