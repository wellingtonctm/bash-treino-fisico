alarm() {
    ( speaker-test --frequency $1 --test sine &>/dev/null ) &
    pid=$!;
    sleep ${2}s;
    kill -9 $pid;
    wait $pid &> /dev/null;
}

contagem() {
    for i in $(seq 1 $1); do
        alarm 800 0.1;
        sleep 1s;
    done;

    alarm 500 0.8;
}

exercicio() {
    contagem 3;
    echo $1;
    sleep ${2};
    alarm 900 0.3
}