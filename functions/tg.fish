function tg
    set -l config ~/.config/ghostty/config
    set -l dark_theme "Dracula"
    set -l light_theme "One Double Light"

    set -l current (grep '^theme' $config | string replace 'theme = ' '')

    if test "$current" = "$dark_theme"
        sed -i '' "s/theme = .*/theme = $light_theme/" $config
        echo "Switched to light theme ($light_theme)"
    else
        sed -i '' "s/theme = .*/theme = $dark_theme/" $config
        echo "Switched to dark theme ($dark_theme)"
    end

    echo "Please restart Ghostty to apply the theme change."
end
