set-option -g default-shell /bin/zsh
set-option -g status-left '#H:[#P]'
set-option -g status-interval 1
set-option -g status-right '#(wifi) #(battery --tmux) [%Y-%m-%d(%a) %H:%M]'

set -g prefix C-q
unbind C-b
set -sg escape-time 1
set -g base-index 1
setw -g pane-base-index 1
bind r source-file ~/.tmux.conf \; display "Reloaded!"
bind C-a send-prefix
bind | split-window -h
bind - split-window -v
bind h select-pane -L
bind j select-pane -D
bind k select-pane -U
bind l select-pane -R
bind -r C-h select-window -t :-
bind -r C-l select-window -t :+
bind -r H resize-pane -L 5
bind -r J resize-pane -D 5
bind -r K resize-pane -U 5
bind -r L resize-pane -R 5

setw -g mouse on
set -g default-terminal "screen-256color"
set-option -g status-style bg=white,fg=black
set-option -g status-style bright,dim
setw -g window-status-current-style bright
setw -g window-status-current-style reverse
set-window-option -g window-status-style fg=cyan #new style
set-window-option -g window-status-style bg=default #new style
set-window-option -g window-status-style dim #new style
set -g status-left-length 40
set -g status-left "#[fg=green]Session: #S #[fg=yellow]#I #[fg=cyan]#P"
set -g status-right "#[fg=cyan][%Y-%m-%d(%a) %H:%M]"
set -g status-interval 60
set -g status-justify centre
setw -g monitor-activity on
set -g visual-activity on
set -g status-position top
setw -g mode-keys vi
set-option -g default-command "reattach-to-user-namespace -l zsh"
bind-key -T copy-mode-vi v send-keys -X begin-selection
bind-key -T copy-mode-vi y send-keys copy-pipe-and-cancel "reattach-to-user-namespace pbcopy"
unbind -T copy-mode-vi Enter
bind-key -T copy-mode-vi Enter send-keys -X copy-pipe-and-cancel "reattach-to-user-namespace pbcopy"
