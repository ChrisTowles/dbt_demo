# DBT Demo

Some basic DBT demo using a local postgres database.

> Note:
> I thought to use DBT for an ETL pipeline, but I found that it is not a good fit. DBT is good a generating sql scripts. It is better to use a tool like Airflow or Prefect so going back to my airflow playground project.

## Python Setup

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
