if [ ! -p send-command ]; then
    mkfifo send-command
    echo 'The fifo file "send-command" has been created.'
fi

trap "rm -f send-command; echo 'The fifo file \"send-command\" has been removed.'" EXIT

while true; do
    sh -c "$(cat send-command)"
done

