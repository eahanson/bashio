#!/usr/bin/env bash

cecho() {
  string=""

  while (( "$#" )); do
    case "$1" in
      --reset)
        string="${string}\033[0m"
        shift
        ;;

      --*)
        color="\033["

        if [[ $1 == *"-bold"* ]]; then
          color="${color}1;"
        else
          color="${color}0;"
        fi

        if [[ $1 == *"-bright"* ]]; then
          color="${color}9"
        else
          color="${color}3"
        fi

        case "$1" in
          *-cyan*)
            color="${color}6"
            ;;

          *-green*)
            color="${color}2"
            ;;

          *-red*)
            color="${color}1"
            ;;

          *-white*)
            color="${color}7"
            ;;

          *-yellow*)
            color="${color}3"
            ;;
        esac

        color="${color}m"

        string="${string}${color}"
        shift
        ;;

      *)
        string="${string}${1} "
        shift
        ;;
    esac
  done

  echo -e "${string}\033[0m"
}

