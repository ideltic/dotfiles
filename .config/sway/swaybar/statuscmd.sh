while true
do
    time=$(date +'%l:%M%P |')
    VOL="$(pamixer --get-volume)"
    battery=$(upower --show-info $(upower --enumerate | grep 'BAT') | grep -E "percentage" | awk '{print $2}')
    playing="$(playerctl metadata --format '{{artist}} - {{ title}}')"

    echo "$playing | VOL: $VOL% | $battery |$time"
done