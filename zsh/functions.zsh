# find text in files
function ft { find . -print | xargs grep -n $1; }
function fti { find . -print | xargs grep -ni $1; }

# find files
function fn {
  if [ $# -eq 2 ]
  then
    fng $1 $2
  elif [ $# -eq 3 ]
  then
    fngg $1 $2 $3
  else
    find . -iname "*$1*"
  fi
}

# todo: solve with a loop
function fng { fn $1 | grep -i $2; }
function fngg { fn $1 | grep -i $2| grep -i $3; }


# find files, case sensitive
function fns { find . -name "*$1*"; }
function fnsg { fns $1 | grep -i $2; }
function fnsgs { fns $1 | grep $2; }
