    1  node -v
    2  nvm install 12
    3  cd /vagrant
    4  open .
    5  ls
    6  vagrant status
    7  git config --global user.name 'Your Name'
    8  git config --global user.name 'Ryan'
    9  git config --global user.email 'rhuynh1106@gmail.com'
   10  ls ~/.ssh
   11  ssh-keygen -t ed25519 -C "rhuynh1106@mgmail.com"
   12  open .
   13  ls
   14  mkdir lightBNB
   15  ls
   16  cd lightBNB
   17  mkdir migrations
   18  touch 01_schema.sql
   19  open .
   20  psql
   21  psql lightbnb
   22  vagrant [lightBNB]> psql lightbnb
   23  psql: FATAL:  database "lightbnb" does not exist
   24  vagrant [lightBNB]> 
   25  CREATE DATABASE lightbnb;
   26  \q
   27  psql lightbnb
   28  psql
   29  psql lightbnb
   30  psql lightBNB
   31  psql
   32  \c lightbnb
   33  brew services start postgresql
   34  sudo service postgresql start
   35  psql
   36  startpostgres
   37  sudo service postgresql start 
   38  sudo service postgresql stop
   39  sudo service postgresql start
   40  psql
   41  psql lightbnb
   42  psql lightBNB
   43  psql
   44  ls
   45  cd ..
   46  psql
   47  CREATE DATABASE lightbnb;
   48  \q
   49  psql -c "CREATE DATABASE lightbnb;"
   50  sudo service postgresql start
   51  sudo service postgresql status
   52  psql
   53  createdb databaseRyan
   54  psql -d databaseRyan
   55  psql
   56  psql databaseRyan
   57  psql
   58  ls
   59  createdb lightBNB
   60  psql lightBNB
   61  npm install pg
   62  ls
   63  cd bootcampx
   64  mkdir bootcamp_app
   65  cd bootcamp_app
   66  touch students.js
   67  npm init -y
   68  git add .
   69  npm install pg
   70  psql -h localhost -p 5432 -U development bootcampx
   71  psql
   72  createdb bootcampx
   73  psql bootcampx
   74  node students.js
   75  node students.js FEB 2
   76  open .
   77  ls
   78  cd ..
   79  ls
   80  cd vampires-master
   81  npm install
   82  npm test
   83  npm test -- test/1*.js  # will run file test/1_addOffspring.js only
   84  npm test
   85  npm test -- test/1*.js
   86  npm test -- test/6*.js  # will run file test/6_vampireWithName.js only
   87  cd traversal
   88  npm test -- test/6*.js  # will run file test/6_vampireWithName.js only
   89  npm test -- test/6_vampireWithName.js
   90  cd ..
   91  npm test -- tests/6_vampireWithName.js
   92  npm test -- test/6*.js  # will run file test/6_vampireWithName.js only
   93  cd ..
   94  ls
   95  cd lightBNB
   96  createdb lightBNB
   97  psql lightBNB
   98  history > your_file_name.sql
