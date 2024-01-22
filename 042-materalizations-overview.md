## Materializations

### View
When using the `view` materialization, your model is rebuilt as a view on each run, via a `create view as` statement.
* **Pros:** No additional data is stored, views on top of source data will always have the latest records in them.
* **Cons:** Views that perform a significant transformation, or are stacked on top of other views, are slow to query.
* **Advice:**
    * Generally start with views for your models, and only change to another materialization when you notice performance problems.
    * Views are best suited for models that do not do significant transformation, e.g. renaming, or recasting columns.

### Table
When using the `table` materialization, your model is rebuilt as a <Term id="table" /> on each run, via a `create table as` statement.
* **Pros:** Tables are fast to query
* **Cons:**
    * Tables can take a long time to rebuild, especially for complex transformations
    * New records in underlying source data are not automatically added to the table
* **Advice:**
  * Use the table materialization for any models being queried by BI tools, to give your end user a faster experience
  * Also use the table materialization for any slower transformations that are used by many downstream models

### Incremental
`incremental` models allow dbt to insert or update records into a table since the last time that model was run.
* **Pros:** You can significantly reduce the build time by just transforming new records
* **Cons:** Incremental models require extra configuration and are an advanced usage of dbt. Read more about using incremental models [here](/docs/build/incremental-models).
* **Advice:**
    * Incremental models are best for event-style data
    * Use incremental models when your `dbt run`s are becoming too slow (i.e. don't start with incremental models)

### Ephemeral
`ephemeral` models are not directly built into the database. Instead, dbt will interpolate the code from this model into dependent models as a common <Term id="table" /> expression.
* **Pros:**
    * You can still write reusable logic
  - Ephemeral models can help keep your <Term id="data-warehouse" /> clean by reducing clutter (also consider splitting your models across multiple schemas by [using custom schemas](/docs/build/custom-schemas)).
* **Cons:**
    * You cannot select directly from this model.
    * Operations (e.g. macros called via `dbt run-operation` cannot `ref()` ephemeral nodes)
    * Overuse of ephemeral materialization can also make queries harder to debug.
* **Advice:**  Use the ephemeral materialization for:
    * very light-weight transformations that are early on in your DAG
    * are only used in one or two downstream models, and
    * do not need to be queried directly

### Materialized View

The `materialized view` materialization allows the creation and maintenance of materialized views in the target database.
Materialized views are a combination of a view and a table, and serve use cases similar to incremental models.

* **Pros:**
  * Materialized views combine the query performance of a table with the data freshness of a view
  * Materialized views operate much like incremental materializations, however they are usually
able to be refreshed without manual interference on a regular cadence (depending on the database), forgoing the regular dbt batch refresh
required with incremental materializations
  * `dbt run` on materialized views corresponds to a code deployment, just like views
* **Cons:**
  * Due to the fact that materialized views are more complex database objects, database platforms tend to have
fewer configuration options available; see your database platform's docs for more details
  * Materialized views may not be supported by every database platform
* **Advice:**
  * Consider materialized views for use cases where incremental models are sufficient, but you would like the data platform to manage the incremental logic and refresh.

SOURCE: https://docs.getdbt.com/docs/build/materializations