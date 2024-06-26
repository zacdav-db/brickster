#' Databricks SQL Connector (Python)
#'
#' @description  Access the Databricks SQL connector from Python via
#' `{reticulate}`.
#'
#' @details This requires that the connector has been installed via
#' [install_db_sql_connector()].
#'
#' For more documentation of the methods, refer to the
#' [python documentation](https://github.com/databricks/databricks-sql-python).
#'
#' @export
#' @keywords internal
py_db_sql_connector <- NULL

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

  py_db_sql_connector <<- reticulate::import("databricks.sql", delay_load = TRUE)

  venv <- determine_brickster_venv()
  reticulate::use_virtualenv(virtualenv = venv, required = FALSE)

}
