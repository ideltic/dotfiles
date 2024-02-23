#! /usr/bin/env bash

# i stole all of this btw

display_progress_bar() {
local total_steps=$1
    local progress=0
    local terminal_width=$(tput cols)

    # Deduct 10 to leave space for percentage display and brackets
    let bar_width=terminal_width-20

    while [ $progress -le $total_steps ]; do
        let filled_slots=progress*bar_width/total_steps
        bar=""

        # Generate the filled portion of the bar
        for ((i=0; i<$filled_slots; i++)); do
            bar="${bar}#"
        done

        # Generate the unfilled portion of the bar
        for ((i=filled_slots; i<bar_width; i++)); do
            bar="${bar}-"
        done

        # Calculate the percentage of completion
        let percentage=progress*100/total_steps

        # Display the bar and percentage
        echo -ne "\r[${bar}] ${percentage}% "

        # Simulate some work
        sleep 1

        # Increment the progress
        let progress++
    done

    echo # Move to the next line after completion
}

display_progress_bar 4