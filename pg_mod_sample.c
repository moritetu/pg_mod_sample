/*
 * Extension template for PostgreSQL
 *
 * refer to https://www.postgresql.jp/document/9.5/html/xfunc-c.html
 */
#include "postgres.h"
#include "fmgr.h"

#ifdef PG_MODULE_MAGIC
PG_MODULE_MAGIC;
#endif

PG_FUNCTION_INFO_V1(pg_mod_sample);

Datum pg_mod_sample(PG_FUNCTION_ARGS)
{
	int32  arg = PG_GETARG_INT32(0);

	PG_RETURN_INT32(arg > 0 ? - arg: arg);
}
