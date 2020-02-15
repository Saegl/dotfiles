new() {
  cp "$HOME/dotfiles/temp.cpp" "$1";
  vim "$1"
}

mycpp() {
  if [ "$2" = "-r" ]
  then
    ARGS = '2>/dev/null'
  fi
  if [ ".$1.out" -nt "$1" ]
  then
    echo 'Run>>'
    ./.$1.out "$ARGS"
  else
    echo "Compiling..."
    g++ -std=c++11 -O2 -Wall $1 -o ".$1.out"

    if [ $? -gt 0 ]
    then
      echo "Compilation error<<"
    else
      echo "Compilation success>>"
      ./.$1.out "$ARGS"
    fi
  fi
}

