if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/PR0FESS0R-99/LuciferMoringstar-Robot.git /Filter
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Filter
fi
cd /Filter
pip3 install -U -r requirements.txt
echo "Starting LuciferMoringstar RoBot...."
python3 main.py
