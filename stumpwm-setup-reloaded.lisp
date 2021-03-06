;; lisp package manager loading
(load "~/quicklisp/setup.lisp")
;; loading the fset library that extends the default common-lisp data structure
(ql:quickload :fset)
;; load the common-lisp way the library
(in-package :fset-user)

(isetq stumpwm-setup
  (map (:zenity
        '((ssh-add-list         "List the keys the user-agent holds"      "ssh-add -L"           "K")
          (cat-etc-environment  "Display the content of /etc/environment" "cat /etc/environment" "E")
          (cat-etc-hosts        "Display the content of /etc/hosts"       "cat /etc/hosts"       "H")
          (sbin-ifconfig        "/sbin/ifconfig"                          "/sbin/ifconfig"       "I")
          (acpi-cmd             "Display battery"                         "/usr/bin/acpi -b"     "B")))
       (:ror-touchpad-off
        '((terminal             "gnome-terminal --hide-menubar" "Gnome-terminal" "x")
          (myemacs              "emacsclient -c"                "Emacs24"        "e")
          (conkeror             "conkeror"                      "Conkeror"       "c")))
       (:ror-touchpad-on
        '((firefox              "firefox"                         "Firefox"                     "f")
          (chromium-browser     "google-chrome --no-proxy-server" "Google-chrome"               "b")
          (gnome-control-center "gnome-control-center"            "Gnome-Control-Center"        ",")
          (video-player         "totem"                           "Totem"                       ".")
          (evince               "evince"                          "Evince"                      "C-e")
          (eog                  "eog"                             "Eog"                         "C-i")
          (pinta                "pinta"                           "Pinta"                       "d")
          (gimp                 "gimp"                            "Gimp"                        "C-d")
          (skype                "/usr/bin/skype"                  "Skype"                       "C-c")
          (audacious            "/usr/bin/audacious"              "Audacious"                   "C-a")
          (jconsole             "/usr/bin/jconsole"               "sun-tools-jconsole-JConsole" "C-j")
          (jvisualvm            "/usr/bin/jvisualvm"              "java-lang-Thread"            "j")))
       (:ror-instance-touchpad-on
        '((xephyr               "~/bin/xephyr/xephyr.sh"    "Xephyr"                 "C-x")
          (wireshark            "gksudo wireshark"          "wireshark"              "C-w")
          (nautilus             "nautilus"                  "nautilus"               "n")
          (thunar               "thunar"                    "thunar"                 "N")
          (yEd                  "yed.sh"                    "sun-awt-X11-XFramePeer" "y")
          (filezilla            "/usr/bin/filezilla"        "filezilla"              "C-f")
          (virtualbox           "virtualbox"                "Qt-subapplication"      "C-v")
          (unetbootin           "unetbootin"                "unetbootin"             "u")
          (transmission         "/usr/bin/transmission-gtk" "transmission-gtk"       "/")
          (gparted              "gksudo /usr/sbin/gparted"  "gpartedbin"             "G")
          (file-progress        ""                          "file_progress"          "F")))
       (:run-shell-command
        '((suspend              "Suspend"                                                       "gksudo pm-suspend"                                    "C-S")
          (hibernate            "Hibernate"                                                     "gksudo pm-hibernate"                                  "C-H")
          (ssh-add-identities   "Add the identities present in ~/.ssh-agent-identities script." "~/bin/ssh/ssh-add.sh"                                 "A")
          (switch-to-proxy      "Switch to proxy."                                              "gksudo ~/bin/proxy/proxy.sh on && killall nm-applet"  "p")
          (switch-to-no-proxy   "Switch to no proxy."                                           "gksudo ~/bin/proxy/proxy.sh off && killall nm-applet" "P")
          (dec-brightness       "Brightness decrement"                                          "~/bin/brightness/dec-brightness.sh 5"                 "F5")
          (inc-brightness       "Brightness increment"                                          "~/bin/brightness/inc-brightness.sh 5"                 "F6")
          (min-brightness       "Minimum screen brightness"                                     "~/bin/brightness/min-brightness.sh"                   "m")
          (half-brightness      "Half screen brightness"                                        "~/bin/brightness/half-brightness.sh"                  "C-M")
          (max-brightness       "Maximum screen brightness"                                     "~/bin/brightness/max-brightness.sh"                   "M")
          (wifi-off             "wifi off"                                                      "~/bin/wifi/wifi-off.sh"                               "C-o")
          (wifi-on              "wifi on"                                                       "~/bin/wifi/wifi-on.sh"                                "O")
          (relaunch-panel       "Relaunch panel"                                                "~/bin/panel/relaunch-panel.sh"                        "C-p")))
       (:shell-command
        '((top                  "Display a single 'top' frame."             "top -b -n 1 -c -d 1"                                                  "^")
          (screenshot           "Take a screenshot for the current window." "/usr/bin/scrot -u $HOME/Pictures/screenshot_$(date +%F_%H-%M-%S).png" "C-s")))))

;; (defmacro category (data kind)
;;   "Deal with the category `kind"
;;   (let ((valsym (gensym)))
;;     `(let ((,valsym (fset:lookup ,data ,kind))
;;            (mapcro zenity-cmd ,@valsym)))))

;; (macroexpand-1 '(category *stumpwm-setup* :zenity))
