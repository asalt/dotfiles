#!/bin/bash
# ---------------------------------------------------------------------------
# findcolumn.sh - Find the index number for a given column

# Copyright 2016, Alex,,, <alex@alex-All-Series>

# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License at <http://www.gnu.org/licenses/> for
# more details.

# Usage: findcolumn.sh [-h|--help] [-d|--delimiter]

# Revision history:
# 2016-10-20 Created by new_script.sh ver. 3.3
# ---------------------------------------------------------------------------

PROGNAME=${0##*/}
VERSION="0.1"

clean_up() { # Perform pre-exit housekeeping
  return
}

error_exit() {
  echo -e "${PROGNAME}: ${1:-"Unknown Error"}" >&2
  clean_up
  exit 1
}

graceful_exit() {
  clean_up
  exit
}

signal_exit() { # Handle trapped signals
  case $1 in
    INT)
      error_exit "Program interrupted by user" ;;
    TERM)
      echo -e "\n$PROGNAME: Program terminated" >&2
      graceful_exit ;;
    *)
      error_exit "$PROGNAME: Terminating on unknown signal" ;;
  esac
}

usage() {
    echo -e "Usage: $PROGNAME [-h|--help] [-d|--delimiter] [FILE] [COLUMN]"
}

help_message() {
  cat <<- _EOF_
  $PROGNAME ver. $VERSION
  Find the index number for a given column

  $(usage)

  Options:
  -h, --help  Display this help message and exit.
  -d, --delimiter  DELIMITER

_EOF_
  return
}

# Trap signals
trap "signal_exit TERM" TERM HUP
trap "signal_exit INT"  INT



DELIM=','
# Parse command-line
while [[ -n $1 ]]; do
  case $1 in
    -h | --help)
      help_message; graceful_exit ;;
    -d | --delimiter)
        shift; DELIM="$1" ;;
    -* | --*)
      usage
      error_exit "Unknown option $1" ;;
    *)
        FILE="$1"
        shift
        COLUMN="$1"
        # echo "Argument $1 to process..." ;;
  esac
  shift
done

# echo $FILE
# echo $COLUMN
# Main logic
OUT=$(
head -n 1 $FILE | awk -F $DELIM -v col=$COLUMN '
{for (i = 1; i <= NF; ++i)
    if ($i == col)
        print i, $i;
exit
}
'
)

if [[ $OUT = *[!\ ]* ]]; then
    echo $OUT
else
    echo "No result found!"
fi

graceful_exit
