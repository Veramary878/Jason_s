if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Veramary878/Jason_s.git /Jason_s
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Jason_s
fi
cd /Jason_s
pip3 install -U -r requirements.txt
echo "Starting Jason_s...."
python3 bot.py
