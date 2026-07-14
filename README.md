# Devtools final project - Drupal + Docker

- Omer Peled
- Yoav Avisar

In this project we were required to run a Drupal site, alongside a database for it, using Docker. We have used Docker Compose to run the containers and associated volumes. We have also added scripts to help easily start up the site & DB, back it up and restore from a backup, and clean up.

## Technologies used

- **Docker** & Docker Compose
- **Git**
- **Drupal** for the site itself
- **Postgres** as the database
- **Bash** for scripts

## Setup guide

1. Clone this repo and enter its directory:

```bash
git clone https://github.com/YoavAvisar/devtools.git
cd devtools
```

2. Setup the containers by running `setup.sh`:

```bash
./setup.sh
```

3. Restore the database backup `drupal_db_backup.sql` using `restore.sh`:

```bash
./restore.sh
```

4. Open the Drupal site at [localhost:8080](http://localhost:8080/), you should see the initial setup page (only the first time you run the container). \
   Proceed with the default options until the database setup screen, then enter the following details:
   - Database type: PostgreSQL
   - Database name: `postgres`
   - Database username: `db-user`
   - Database password: `my-secret-pw`
   - Advanced options → Host: `db`

5. At this point, if you restored the database backup correctly, you should see "Drupal already installed". Click "View your existing site" to go to the site's home page.

### Backup database

If you've added any new pages or modified the site in any way, you can back up the database using:

```bash
./backup.sh
```

Note that this will overwrite the existing `drupal_db_backup.sql` file.

### Cleanup

To clean up the site, database, and all related Docker images and volumes:

```bash
./cleanup.sh
```
