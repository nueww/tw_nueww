#!/bin/bash

SCRIPT="${BASH_SOURCE[0]}";
if [ -h "$SCRIPT" ] ; then
	SCRIPT="$(readlink -f "$SCRIPT")";
fi;
DIR="$( cd "$( dirname "$SCRIPT" )" && pwd )";

mysqldump --password=nueww nueww_01 --ignore-table=nueww_01.be_sessions --ignore-table=nueww_01.cache_md5params --ignore-table=nueww_01.cache_treelist --ignore-table=nueww_01.cf_cache_hash --ignore-table=nueww_01.cf_cache_hash_tags --ignore-table=nueww_01.cf_cache_imagesizes --ignore-table=nueww_01.cf_cache_imagesizes_tags --ignore-table=nueww_01.cf_cache_pages --ignore-table=nueww_01.cf_cache_pages_tags --ignore-table=nueww_01.cf_cache_pagesection --ignore-table=nueww_01.cf_cache_pagesection_tags --ignore-table=nueww_01.cf_cache_rootline --ignore-table=nueww_01.cf_cache_rootline_tags --ignore-table=nueww_01.cf_extbase_datamapfactory_datamap --ignore-table=nueww_01.cf_extbase_datamapfactory_datamap_tags --ignore-table=nueww_01.cf_extbase_object --ignore-table=nueww_01.cf_extbase_object_tags --ignore-table=nueww_01.cf_extbase_reflection --ignore-table=nueww_01.cf_extbase_reflection_tags --ignore-table=nueww_01.cf_fluidcontent --ignore-table=nueww_01.cf_fluidcontent_tags --ignore-table=nueww_01.cf_flux --ignore-table=nueww_01.cf_flux_tags --ignore-table=nueww_01.cf_vhs_main --ignore-table=nueww_01.cf_vhs_main_tags --ignore-table=nueww_01.cf_vhs_markdown --ignore-table=nueww_01.cf_vhs_markdown_tags --ignore-table=nueww_01.fe_sessions --ignore-table=nueww_01.sys_be_shortcuts --ignore-table=nueww_01.sys_history --ignore-table=nueww_01.sys_lockedrecords --ignore-table=nueww_01.sys_log --ignore-table=nueww_01.sys_news > "$DIR/nueww_01.sql";
