# complete-dbt-bootcamp-zero-to-hero
Materials from the The Complete dbt (Data Build Tool) Bootcamp Udemy course

- [PROJECT DOCUMENTATION](https://marianysilva.github.io/complete-dbt-bootcamp-zero-to-hero/)

- [COURSE WEBSITE](https://www.udemy.com/course/complete-dbt-data-build-tool-bootcamp-zero-to-hero-learn-dbt/?referralCode=659B6722C93EF4096D11)

The structure of the course is designed to have a top-down approach. It starts with the theory - all you need to know is to put dbt (Data Build Tool) in context and to have an understanding of how it fits into the modern data stack. We start with the big picture, then we go deeper and deeper. Once you learned about the pieces, we are going to shift to the technicalities - a practical section -, which will focus on putting together the dbt “puzzle”. The practical section will cover each and every single dbt feature present today through the construction of a complete, real-world project; Airbnb. This presents an opportunity for us to show you which features should be used at what stage in a given project, and you will see how dbt is used in the industry.

**THEORETICAL SECTION:**

Among several other topics, the theoretical section puts special emphasis on transferring knowledge in the following areas;

 * Data-Maturity Model
 * Well-functioning Data Architectures
 * Data Warehouses, Data Lakes, and Data Lakehouses
 * ETL and ELT procedures and Data Transformations
 * Fundamentals of dbt (Data Build Tool)
 * Analytics Engineering
 * Normalization
 * Slowly Changing Dimensions
 * CTEs

Once we understood the theoretical layer and how dbt fits into the picture, we are going to start building out a dbt project from scratch, just how you would do this in the real world.

**PRACTICAL SECTION:**

The practical section will go through a real-world Airbnb project where you will master the ins and outs of dbt! We put special focus on getting everyone up and ready before the technical deep dive, hence we will start off by setting up our Development Environment:

 * MAC Development Environment Setup
 * WINDOWS Development Environment Setup
 * IDE dbt Extension Installation
 * Creation and Activation of Virtual Environments
 * Setting up Snowflake
 
Once we are ready - among several other technical topics, the following features will be covered;

 * dbt Models
 * dbt Materializations
 * dbt Tests
 * dbt Documentation
 * dbt Sources, Seeds, Snapshots
 * dbt Hooks and Operations
 * Jinja and Macros
 * Analyses, Exposures 
 * dbt Seeds
 * Data Visualization (Preset)

Once the theory and the practical stages are finished, we are going to dive into the best practices and more advanced topics. The course is continuously updated, whenever dbt publishes an update we adjust the course accordingly, so you always be up to date!

**DEVELOPMENT ENVIRONMENT:**

    PYTHON VERSION

    At the time of recording this lesson (Jan 2024), dbt is compatible with Python 3.7, 3.8, 3.9, 3.10, and 3.11, but the supported Python version depends both on the dbt version and on the dbt-snowflake version you install. So make sure to install Python 3.11.

    DBT SNOWFLAKE VERSION

    The dbt-snowflake version must be 1.7.1

    SNOWFLAKE

    Start your 30-DAY free Trial using standard Snowflake edition with AWS cloud provider

**SETUP (MacOS)**

- Install [Python](https://www.python.org/) recommended version
```
brew install python@3.11 virtualenv
```

- Create Python Virtual Environment
```
virtualenv venv --python=python3.11
```

- Activate Virtual Environment
```
. venv/bin/activate
```

- Install dbt-snowflake recommended version
```
pip install dbt-snowflake==1.7.1
```

- Go to dbtlearn Project folder
```
cd dbtlearn
```

- Install Project Packages
```
dbt deps
```

- Run DBT cli commands
```
dbt -h
```

**PROJECT DOCUMENTATIONS**

To access the project documentation, you will need to generate the documentation and start the server.

```
dbt docs generate
dbt docs serve
```

You will be redirected to the documentation Overview page (http://localhost:8080/)

**RELATED DOCUMENTATIONS**

- [Udemy - The Complete dbt (Data Build Tool) Bootcamp: Zero to Hero](https://www.udemy.com/course/complete-dbt-data-build-tool-bootcamp-zero-to-hero-learn-dbt/?referralCode=659B6722C93EF4096D11)
- [Python](https://docs.python.org/3.11/)
- [Snowflake](https://docs.snowflake.com/sql-reference)
- [DBT](https://docs.getdbt.com/docs/introduction)
- [DBT Packages](https://hub.getdbt.com/)
- [Jinja](https://docs.getdbt.com/docs/build/jinja-macros)