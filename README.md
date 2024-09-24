Welcome to your new dbt project!

### Using the starter project

Try running the following commands:
- dbt run
- dbt test


### Resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [dbt community](http://community.getbdt.com/) to learn from other analytics engineers
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices


## Pythong Setup

Setup Python with pyenv

```bash
pyenv install 3.12
pyenv virtualenv 3.12 dbt_demo
```

set pyenv to use the new environment

```bash
pyenv local dbt_demo
pyenv shell dbt_demo
```

show which python is being used

```bash
pyenv which python
```

Install the latest pip and dependencies for scripts

```bash
pip install --upgrade pip
pip install -r pip.requirements.txt
```

Now you can run `dbt` commands:

```bash
dbt --version
```

## Bring up the postgres database

Expected to have docker installed.

```bash
docker compose up -d
```

## Test dbt project connection

```bash
# check with dbt using profile set in this repo.
dbt debug --profiles-dir  ./dbt_profile

```


## Run dbt project

```bash
# check with dbt using profile set in this repo.
dbt run --profiles-dir  ./dbt_profile

```