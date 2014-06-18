import XMonad
import XMonad.Layout.Spacing
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.SetWMName
import XMonad.Util.CustomKeys
import XMonad.Util.Run
import qualified Data.Map as M

-- automatically move apps to a specific page
myManageHook = composeAll
    [ className =? "emacs" --> doShift "1:code"
    , className =? "google-chrome" --> doShift "1:chrome"
    ]

-- status bar (uses dzen2 + conky)
myStatusBar = "conky -c $HOME/.xmonad/conky_dzen | dzen2 -w '920' -x '1000' -ta 'r'"


-- workspaces
myWorkspaces = ["1:code", "2:chrome", "3:whatever", "4:monitor"]

-- screen layout
myLayout = tiled ||| Mirror tiled ||| Full
 where
    -- default tiling algorithm partitions to two panes
    tiled = spacing 5 $ Tall nmaster delta ratio
    -- default number of windows in master pane
    nmaster = 1
    -- Default proportion of screet occuped by master pane
    ratio = 2/3
    -- percent of screen to increment when resizing panes
    delta = 5/100

delkeys :: XConfig l -> [(KeyMask, KeySym)]
delkeys XConfig {modMask = modm} = []

inskeys :: XConfig l -> [((KeyMask, KeySym), X ())]
inskeys conf@(XConfig {modMask = modm}) =
        --take a screenshot of entire display
        [ ((modm, xK_Print ), spawn "scrot screen_%Y-%m-%d-%H-%M-%S.png")

           --take a screenshot of focused window
        , ((modm .|. controlMask, xK_Print ), spawn "scrot window_%Y-%m-%d-%H-%M-%S.png -u")]

main = do
     statusBar <- spawnPipe myStatusBar
     xmonad =<< xmobar defaultConfig {
     modMask = mod4Mask
    , terminal = "urxvt"
    , borderWidth = 2
    , workspaces = myWorkspaces
    , manageHook = myManageHook <+> manageHook defaultConfig
    , layoutHook = myLayout
    , startupHook = setWMName "LG3D"
    -- keybindings
    , keys = customKeys delkeys inskeys
}