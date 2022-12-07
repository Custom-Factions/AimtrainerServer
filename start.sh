if [[ !(-f donotautoupdate) ]]; then
  git fetch
  git reset main --hard
fi
./update.sh 0.0
screen -AdmS aimtrainer java -jar paper-1.19.2-305.jar -nogui
screen -r aimtrainer