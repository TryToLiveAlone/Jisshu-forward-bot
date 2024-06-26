echo "Cloning Repo...."
if [ -z $BRANCH ]
then
  echo "Cloning main branch...."
  git clone https://github.com/TryToLiveAlon/Jisshu-forward-bot TryToLiveAlon/fwdbot 
else
  echo "Cloning $BRANCH branch...."
  git clone https://github.com/TryToLiveAlon/Jisshu-forward-bot -b $BRANCH /fwdbot
fi
cd TryToLiveAlon/fwdbot 
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 main.py
