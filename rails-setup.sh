 # #UPDATES
      echo "==> >>>> get updates"
   
      ##install nodesjs
      echo "==> >>>> INSTALL NODE"
      curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
      sudo apt-get install -y nodejs

      curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
      echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
      echo "==> >>> INSTALL YARN and do updates"
      sudo apt install yarn
      sudo apt-get update && sudo apt-get install yarn

      echo "==>> >>>> Installing  Ruby"
      sudo apt-get install curl -y

      # #********* get gpg key
      curl -sSL https://rvm.io/pkuczynski.asc | gpg --import -
      \curl -sSL https://get.rvm.io | bash -s stable --rails
      source /home/vagrant/.rvm/scripts/rvm

      echo "Rails Setup ===> >>> completed "
