.onLoad <- function(libname, pkgname) {
  if (requireNamespace("knitr", quietly = TRUE)) {
    knitr::knit_engines$set(
      databricks_r = db_engine_r,
      db_r = db_engine_r,
      databricks_py = db_engine_py,
      db_py = db_engine_py,
      databricks_scala = db_engine_scala,
      db_scala = db_engine_scala,
      databricks_sql = db_engine_sql,
      db_sql = db_engine_sql,
      databricks_sh = db_engine_sh,
      db_sh = db_engine_sh
    )
  }
}
