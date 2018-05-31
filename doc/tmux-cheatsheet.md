# Tmux Cheatsheet

Prefix : `Ctrl+a`

|         |                               |
| ------- | ----------------------------- |
| `C-a a` | Send Prefix                   |
| `C-a s` | Switch to session using `fzf` |
| `C-a P` | Run `gopass` password manager |

Vi-style copy mode:

|         |                           |
| ------- | ------------------------- |
| `v` | Begin selection               |
| `V` | Select line                   |
| `r` | Toggle rectangle selection    |
| `y` | Copy to system clipboards     |
| `Y` | Copy then paste paste to pane |

Other copy-paste:

|         |                             |
| ------- | --------------------------- |
| `C-a p` | Paste                       |
| `C-a y` | Copy text from command line |
| `C-a Y` | Copy PWD                    |

Pane splitting:

|          |                                    |
| -------  | ---------------------------------- |
| `C-a -`  | Split pane horizontally            |
| `C-a \|` | Split pane vertically              |
| `C-a \`  | Split pane vertically full height  |
| `C-a _`  | Split pane horizontally full width |

Pane navigation (works seamlessly with vim windows):

|       |                      |
| ----- | ------------------   |
| `C-h` | Select pane on left  |
| `C-j` | Select pane below    |
| `C-k` | Select pane above    |
| `C-l` | Select pane on right |

Resizing panes:

|         |                                          |
| ------- | ---------------------------------------- |
| `C-a H` | Resize current pane 5 cells to the left  |
| `C-a J` | Resize current pane 5 cells up           |
| `C-a K` | Resize current pane 5 cells down         |
| `C-a L` | Resize current pane 5 cells to the right |

Windows

|         |                                   |
| ------- | --------------------------------- |
| `C-a c` | New window                        |
| `C-a >` | Move window one position to right |
| `C-a <` | Move window one position to left  |

Session management:

|            |                                                         |
| ---------  | ------------------------------------------------------- |
| `C-a C`    | Create new session prompting for name                   |
| `C-a X`    | Kill current session and attach to previous session     |
| `C-a S`    | Switch to last session                                  |
| `C-a !`    | Promote window to new session                           |
| `C-a @`    | Promote pane to new session                             |
| `C-a m`    | Mark pane                                               |
| `C-a t -`  | Join marked pane horizontally to current session/window |
| `C-a t \|` | Join marked pane vertically to current session/window   |
| `C-a t f`  | Join marked pane full screen to current session/window  |
