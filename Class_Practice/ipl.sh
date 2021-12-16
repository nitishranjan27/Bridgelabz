echo "Please Select Your Fav Team"
echo "RR RCB CSK MI SRH PBKS DC KKR"

read teamName

position=0
win=0
lose=0
nrr=""
points=0
matchesPlayed=14
cskPlayers=("Dhoni" "Jadeja" "Raina")
rcbPlayers=("Virat" "Abd" "Siraj")

declare -A miPlayers
miPlayers[captain]="Rohit"
miPlayers[bowler]="Jaspreet"
miPlayers[batsman]="Chris"

function captain() {
         echo $1 "Is a CAPTAIN Of" $2
}
function bowler() {
         echo $1 "Is a BOWLER Of" $2
}
function batsman() {
         echo $1 "Is a BATSMAN Of" $2
}
function rolesAndResponsibility() {
         if [ $1 == 'csk' ]
         then
                for player in ${cskPlayers[@]}
                do
                         if [ $player == 'Dhoni' ]
                         then
                             captain $player $1
                         elif [ $player == 'Jadeja' ]
                         then
                             bowler $player $1
                         else
                             batsman $player $1
                         fi
                done
         elif [ $1 == 'rcb' ]
         then
                for player in ${rcbPlayers[@]}
                do
                         if [ $player == 'Virat' ]
                         then
                             captain $player $1
                         elif [ $player == 'Siraj' ]
                         then
                             bowler $player $1
                         else
                             batsman $player $1
                         fi
                done
          elif [ $1 == 'mi' ]
          then
                for player in ${miPlayers[@]}
                do
                         if [ $player == 'Rohit' ]
                         then
                             captain $player $1
                         elif [ $player == 'Jaspreet' ]
                         then
                             bowler $player $1
                         else
                             batsman $player $1
                         fi
                done
         else
             echo "Other Teams"
         fi

}
function playoff() {
          if (( $1 > 0 && $1 <= 4 ))
          then
             echo $2 Is Eligible For Semi-Finals
          else
             echo $2 Is Not Eligible For Semi-Finals
          fi

}

function ipl() {
      lose=$((matchesPlayed-$1))
      points=$(($1*2))
      echo "IPL POINTS TABLE"
      echo "Team Name : $teamName"
      echo "Place Secured : $2"
      echo "Matches faced : $matchesPlayed"
      echo "Won : $1 , Lost : $lose"
      echo "Run-Rate : $3"
      echo "Points : $points"
      playoff $2 $teamName
      rolesAndResponsibility $teamName
}
case $teamName in
   rcb)
      position=3
      win=9
      nrr="-0.140"
      ipl $win $position $nrr
      ;;
   csk)
      position=2
      win=9
      nrr="+0.455"
      ipl $win $position $nrr
      ;;
   mi)
      position=5
      win=7
      nrr="+0.116"
      ipl $win $position $nrr
      ;;
   *)
     echo "Something Went Wrong :("
     ;;
esac