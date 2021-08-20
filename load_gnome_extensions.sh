#!/bin/bash

# some shell extensions can cause issues if loaded incorrect
# eg transparent shell after dash to dock
# this disables them and loads in the order I want

gnome-extensions disable transparent-shell@siroj42.github.io
gnome-extensions disable multi-monitors-add-on@spin83
gnome-extensions disable dash-to-dock@micxgx.gmail.com

gnome-extensions enable multi-monitors-add-on@spin83
gnome-extensions enable transparent-shell@siroj42.github.io
gnome-extensions enable dash-to-dock@micxgx.gmail.com

