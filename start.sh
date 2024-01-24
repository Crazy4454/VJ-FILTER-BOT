if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Crazy4454/Crazy-FILTER-BOT.git /Crazy-FILTER-BOT 
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Crazy-FILTER-BOT 
fi
cd /Crazy-FILTER-BOT 
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
