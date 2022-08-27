<h1> The Watch List</h1>

The Watch List is an app to organize films in category lists adding a little comment. You can use this app to keep track of your favourite films, films pending to be watched, films you wished had never come your way... the choice is yours ;)

<h2>Technical specification</h2>
<strong>Ruby version: </strong>3.0.3p157<br>
<strong>Rails version: </strong>7.0.3.1<br>
<strong>Node version: </strong>16.13.1<br>

<h2>Database</h2>
I recommend SQL for local environment and PostgreSQL for production. <br>

Install PostgreSQL<br>
`sudo apt install -y postgresql postgresql-contrib libpq-dev build-essential`<br>
`sudo -u postgres psql --command "CREATE ROLE \"`whoami`\" LOGIN createdb superuser;"`

<h2>JavaScript package manager</h2>
Install <strong>yarn</strong> using the command: <br>
`npm install --global yarn`<br>
`exec zsh`<br>
 
<h2>Dependencies/libraries</h2>
<strong>Boostrap v5.2, Google Fonts, AOS</strong>

<h2>Database initialization</h2>
<ul>
<li>Create a ENV file in your rails app running the following command:</li>
<li>Register in <strong>TMDB</strong> website (www.themoviedb.org) and obtain your own API key. </li>
<li>In your ENV file type <strong>API_KEY=</strong> followed by your own personal key e.g API_KEY=000AAAA0000A0A0A0A0000A0A0A</li>
<li>Register in <strong>Cloudinary</strong> and obtain your API key for cloud image hosting</li>
<li>In your ENV type <strong>CLOUDINARY_URL=</strong> followed by your own personal key e.g CLOUDINARY_URL=//000000000A00@1111SSSSS</li>
</ul>

<h2>Gems</h2>
 Run command `bundle install` in your terminal.<br>
 
 <h2>How to run locally</h2>
 Use the command `rails s` in your terminal<br>
 Open another window in your terminal and run `yarn build --watch`<br>
 Then open <strong>localhost:3000</strong> in your browswer<br>
 
 <h2>Deployment</h2>
 `curl https://cli-assets.heroku.com/install.sh | sh<br>
  heroku --version` >> It should display your Heroku version<br>
 Register in Heroku (https://id.heroku.com/login) and run in terminal:<br>
 `heroku login`<br>
 `heroku create $YOUR_APP_NAME --region eu`<br>
 Create a new remote reposity with `git remote -v`<br>
 `heroku run rails db:migrate` >> Run pending migrations in production<br>
 `heroku run rails c`         >>  # Run the production console<br>
 `heroku run rails db:seed` >> Populate the DB<br>
 Deploy with `git push heroku master`<br>

<br><br>
Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

# This README would normally document whatever steps are necessary to get the
# application up and running.
