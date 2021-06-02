create table algorithm_center.ads_tag_manager_evaluate_algorithm_person_infos_tb(
	id serial  PRIMARY KEY,
	person_id varchar(32) not NULL,
	pigfarm_id varchar(32) not NULL,
	pigfarm_type varchar(32) not NULL,
	num_pigs_disposed_jurisdiction decimal(8,3),
	num_pigs_first_day_jurisdiction decimal(8,3),
	postion varchar(32) not NULL
);
COMMENT ON TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_person_infos_tb IS '管理人员评价算法输入-人员信息表';

COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_person_infos_tb.id IS '自增ID';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_person_infos_tb.person_id IS '人员id；默认''';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_person_infos_tb.pigfarm_id IS '人员所在猪场id';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_person_infos_tb.pigfarm_type IS '人员所在猪场类别；0：母猪场，1：肉猪场，2：后备猪场，3：公猪场，-1：未知';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_person_infos_tb.num_pigs_disposed_jurisdiction IS '管辖内本月发非瘟开始到结束导致处理掉的猪只总数';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_person_infos_tb.num_pigs_first_day_jurisdiction IS '管辖类本月发病第一天的猪只存栏数；默认null';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_person_infos_tb.postion IS '人员的职位；0：场长，1：线长，-1：未知';



create table algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb(
	id serial  PRIMARY KEY,
	person_id varchar(32) not NULL,
	batch_breeding_reserve_pig_num decimal(8,3),
	batch_imported_reserve_pig_num decimal(8,3),
	seed_num decimal(8,3),
	reserve_pig_sows_with_backfat_standard_num decimal(8,3),
	reserve_pig_sows_num decimal(8,3),
	weight_pig_with_backfat_standard_num decimal(8,3),
	weight_pig_num decimal(8,3),
	optimum_standard_num_backfat decimal(8,3),
	num_sows_weaned_per_month decimal(8,3),
	num_sows_with_positive_pregnancy_test decimal(8,3),
	corresponding_num_sows decimal(8,3),
	corresponding_num_sows_early_delivery decimal(8,3),
	num_sows_bred_early_stage decimal(8,3),
	piglets_monthly decimal(8,3),
	num_births_monthly decimal(8,3),
	num_live_piglets_monthly decimal(8,3),
	num_healthy_piglets_born_monthly decimal(8,3),
	num_congenital_sick_weak_offspring_monthly decimal(8,3),
	num_stillbirths_monthly decimal(8,3),
	num_heads_weak_offspring decimal(8,3),
	weight_piglets_born_monthly decimal(8,3),
	num_babies_born_monthly decimal(8,3),
	num_dead_piglets_corresponding_batch decimal(8,3),
	weight_weaned_piglets_monthly decimal(8,3),
	num_weaned_piglets_monthly decimal(8,3),
	num_estrous_and_weaned_with7d_weaning_batch_monthly decimal(8,3),
	num_weaned_pigs_monthly decimal(8,3),
	ave_num_sows_monthly decimal(8,3),
	ave_monthly_sows_production decimal(8,3),
	num_sows_died_per_month decimal(8,3),
	num_sows_eliminated_per_month decimal(8,3),
	proportion_design_capacity_on_hand decimal(8,3),
	staffing_1000_sows decimal(8,3),
	num_sows_on_hand_above_90kg_monthly decimal(8,3),
	allocation_product_person_1000_sows decimal(8,3),
	attendance decimal(8,3),
	discharge_piggery_monthly decimal(8,3),
	ave_monthly_feed_sows decimal(8,3),
	emissions_sale_area decimal(8,3),
	ave_monthly_feeding_quantity_sale decimal(8,3),
	bradrakey_positions decimal(8,3),
	num_talents_key_positions decimal(8,3),
	gestational_age_ratio decimal(8,3),
	num_actual_monthly_mating_heads decimal(8,3),
	monthly_theoretical_num_mating_heads decimal(8,3),
	monthly_planned_num_breeding_heads decimal(8,3),
	theoretical_num_weaned_piglets_per_month decimal(8,3),
	monthly_planned_weaning_piglets decimal(8,3),
	cumulative_deviation_bags decimal(8,3),
	planned_bags_pig_essence decimal(8,3)
);
COMMENT ON TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb IS '管理人员评价算法输入-母猪场指标表';

COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb.id IS '自增ID';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb.person_id IS '人员id；默认''';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb.batch_breeding_reserve_pig_num IS '批次配种后备猪头数';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb.batch_imported_reserve_pig_num IS '批次引进后备猪头数';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb.seed_num IS '成种头数';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb.reserve_pig_sows_with_backfat_standard_num IS '每月后备猪配种背膘符合标准的母猪头数';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb.reserve_pig_sows_num IS '月后备猪总配种头数';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb.weight_pig_with_backfat_standard_num IS '月重胎猪最适背膘标准内头数';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb.weight_pig_num IS '月上重胎母猪头数';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb.optimum_standard_num_backfat IS '月断奶母猪最适背膘标准内头数';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb.num_sows_weaned_per_month IS '月断奶母猪总头数';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb.num_sows_with_positive_pregnancy_test IS '测孕检测为阳性的母猪头数';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb.corresponding_num_sows IS '对应配种母猪头数';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb.corresponding_num_sows_early_delivery IS '对应前期分娩母猪头数';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb.num_sows_bred_early_stage IS '前期配种母猪头数';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb.piglets_monthly IS '当月总产仔猪头数';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb.num_births_monthly IS '当月分娩窝数';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb.num_live_piglets_monthly IS '当月产活仔猪头数';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb.num_healthy_piglets_born_monthly IS '当月产健仔猪头数';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb.num_congenital_sick_weak_offspring_monthly IS '当月先天性病态弱仔头数';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb.num_stillbirths_monthly IS '当月产死胎头数';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb.num_heads_weak_offspring IS '0.5 kg以下弱仔头数';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb.weight_piglets_born_monthly IS '当月出生活仔猪总重';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb.num_babies_born_monthly IS '当月出生活仔总数';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb.num_dead_piglets_corresponding_batch IS '对应批次死淘仔猪数';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb.weight_weaned_piglets_monthly IS '当月断奶仔猪总重';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb.num_weaned_piglets_monthly IS '当月断奶仔猪总数';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb.num_estrous_and_weaned_with7d_weaning_batch_monthly IS '当月该断奶批次7天内实际发情配种断奶猪数';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb.num_weaned_pigs_monthly IS '当月该批次实际断奶猪总数';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb.ave_num_sows_monthly IS '当月平均空怀母猪头数';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb.ave_monthly_sows_production IS '月均生产母猪饲养量';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb.num_sows_died_per_month IS '月死亡生产母猪总头数';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb.num_sows_eliminated_per_month IS '月淘汰生产母猪总头数';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb.proportion_design_capacity_on_hand IS '设计产能存栏的比例';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb.staffing_1000_sows IS '千头母猪全场人员配置';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb.num_sows_on_hand_above_90kg_monthly IS '当月生产母猪存栏+当月90kg以上后备母猪存栏头数';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb.allocation_product_person_1000_sows IS '千头母猪生产人员配置';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb.attendance IS '全场人数';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb.discharge_piggery_monthly IS '猪场当月总排污量';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb.ave_monthly_feed_sows IS '母猪月均饲养量';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb.emissions_sale_area IS '待售区总排污量';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb.ave_monthly_feeding_quantity_sale IS '待售区生长猪月均饲养量';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb.bradrakey_positions IS '关键岗位人才流失数';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb.num_talents_key_positions IS '关键岗位人才总数';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb.gestational_age_ratio IS '胎龄比';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb.num_actual_monthly_mating_heads IS '实际月配种头数';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb.monthly_theoretical_num_mating_heads IS '月理论配种头数';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb.monthly_planned_num_breeding_heads IS '月计划配种头数';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb.theoretical_num_weaned_piglets_per_month IS '月理论断奶仔猪数';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb.monthly_planned_weaning_piglets IS '月计划断奶仔猪数';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb.cumulative_deviation_bags IS '累计偏差袋数';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb.planned_bags_pig_essence IS '猪精计划袋数';


create table algorithm_center.ads_tag_manager_evaluate_algorithm_pork_farm_index_tb(
	id serial  PRIMARY KEY,
	person_id varchar(32) not NULL,
	num_dead_growing_pigs_monthly  decimal(8,3),
	ave_daily_feed_growing_pigs_monthly  decimal(8,3),
	monthly_batch_sales  decimal(8,3),
	num_seedlings_corresponding_batch  decimal(8,3),
	num_defective_pigs_batch  decimal(8,3),
	feed_consumption_monthly_slaughter_pigs  decimal(8,3),
	weight_gaof_monthly_pigs  decimal(8,3),
	monthly_ave_num_generation_pigs  decimal(8,3),
	num_people_pig_raising_section_branch_company  decimal(8,3),
	monthly_ave_num_self_raised_pigs  decimal(8,3),
	num_people_self_feeding_section_pig_branch  decimal(8,3),
	amount_pigs_sold_monthly  decimal(8,3),
	daily_ave_num_company_maintenance_section_monthly  decimal(8,3),
	amount_self_raised_pigs_sold_monthly  decimal(8,3),
	daily_ave_num_company_self_support_section_monthly  decimal(8,3),
	actual_num_seedlings_monthly  decimal(8,3),
	num_pigs_weaned_sow_farm  decimal(8,3),
	amount_barracks_development_monthly  decimal(8,3),
	monthly_planned_development  decimal(8,3),
	amount_shed_completed_monthly  decimal(8,3),
	amount_completed_monthly_plan  decimal(8,3),
	weight_superior_products_monthly  decimal(8,3),
	num_top_quality_products_sold_monthly  decimal(8,3),
	sales_amount_superior_products_monthly  decimal(8,3),
	weight_defective_products_sold_monthly  decimal(8,3),
	num_defective_products_sold_monthly  decimal(8,3),
	sales_amount_defective_products_monthly  decimal(8,3),
	num_weak_piglets_monthly  decimal(8,3),
	num_signs_monthly  decimal(8,3)
);
COMMENT ON TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_pork_farm_index_tb IS '管理人员评价算法输入-肉猪场指标表';

COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_pork_farm_index_tb.id IS '自增ID';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_pork_farm_index_tb.person_id IS '人员id；默认''';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_pork_farm_index_tb.num_dead_growing_pigs_monthly IS '当月死淘生长猪数';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_pork_farm_index_tb.ave_daily_feed_growing_pigs_monthly IS '生长猪当月日均饲养量';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_pork_farm_index_tb.monthly_batch_sales IS '月批次出栏头数';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_pork_farm_index_tb.num_seedlings_corresponding_batch IS '对应批次进苗头数';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_pork_farm_index_tb.num_defective_pigs_batch IS '批次生长猪残次头数';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_pork_farm_index_tb.feed_consumption_monthly_slaughter_pigs IS '月出栏猪全程耗料量';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_pork_farm_index_tb.weight_gaof_monthly_pigs IS '月出栏猪总增重';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_pork_farm_index_tb.monthly_ave_num_generation_pigs IS '月平均代养肉猪总量';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_pork_farm_index_tb.num_people_pig_raising_section_branch_company IS '肉猪分公司代养版块所有人数';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_pork_farm_index_tb.monthly_ave_num_self_raised_pigs IS '月平均自养肉猪总量';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_pork_farm_index_tb.num_people_self_feeding_section_pig_branch IS '肉猪分公司自养版块所有人数';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_pork_farm_index_tb.amount_pigs_sold_monthly IS '当月销售代养肉猪总量';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_pork_farm_index_tb.daily_ave_num_company_maintenance_section_monthly IS '公司代养版块当月日均人数';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_pork_farm_index_tb.amount_self_raised_pigs_sold_monthly IS '当月销售自养肉猪总量';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_pork_farm_index_tb.daily_ave_num_company_self_support_section_monthly IS '公司自养版块当月日均人数';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_pork_farm_index_tb.actual_num_seedlings_monthly IS '当月实际进苗数';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_pork_farm_index_tb.num_pigs_weaned_sow_farm IS '母猪场月实际断奶肉猪总头数';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_pork_farm_index_tb.amount_barracks_development_monthly IS '当月栏舍开发总量';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_pork_farm_index_tb.monthly_planned_development IS '月计划栏舍开发总量';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_pork_farm_index_tb.amount_shed_completed_monthly IS '当月栏舍完工总量';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_pork_farm_index_tb.amount_completed_monthly_plan IS '月计划栏舍完工总量';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_pork_farm_index_tb.weight_superior_products_monthly IS '优品当月出栏总重量';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_pork_farm_index_tb.num_top_quality_products_sold_monthly IS '优品当月出栏总头数';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_pork_farm_index_tb.sales_amount_superior_products_monthly IS '优品当月销售总金额';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_pork_farm_index_tb.weight_defective_products_sold_monthly IS '次品当月出栏总重量';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_pork_farm_index_tb.num_defective_products_sold_monthly IS '次品当月出栏总头数';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_pork_farm_index_tb.sales_amount_defective_products_monthly IS '次品当月销售总金额';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_pork_farm_index_tb.num_weak_piglets_monthly IS '当月进弱小猪头数';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_pork_farm_index_tb.num_signs_monthly IS '当月总进苗头数';




create table algorithm_center.ads_tag_manager_evaluate_algorithm_reserve_farm_index_tb(
	id serial  PRIMARY KEY,
	person_id varchar(32) not NULL,
	num_deaths_per_month decimal(8,3),
	monthly_reserve_pig_production decimal(8,3),
	num_deaths_batches decimal(8,3),
	num_7kg_weaned_pigs_corresponding_batch decimal(8,3),
	actual_num_seed_selection_introducer_retaining decimal(8,3),
	num_7kg_weaned_sows_corresponding_batch_retaining decimal(8,3),
	actual_num_seed_selected_introducer_export decimal(8,3),
	num_7kg_weaned_sows_corresponding_batch_export decimal(8,3),
	weight_gain decimal(8,3),
	num_entries decimal(8,3),
	weight_month decimal(8,3),
	num_sales_monthly decimal(8,3),
	num_reserve_pigs_with_estrus_record_corresponding_batch decimal(8,3),
	num_reserve_pigs_aged_ge_160d_end_month decimal(8,3),
	effective_area_enclosure decimal(8,3),
	reserve_pigs_at_end_month decimal(8,3)
);
COMMENT ON TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_reserve_farm_index_tb IS '管理人员评价算法输入-后备猪场指标表';

COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_reserve_farm_index_tb.id IS '自增ID';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_reserve_farm_index_tb.person_id IS '人员id；默认''';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_reserve_farm_index_tb.num_deaths_per_month IS '月死亡头数';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_reserve_farm_index_tb.monthly_reserve_pig_production IS '月后备猪饲养量';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_reserve_farm_index_tb.num_deaths_batches IS '批次死亡头数';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_reserve_farm_index_tb.num_7kg_weaned_pigs_corresponding_batch IS '对应批次进7kg断奶猪头数';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_reserve_farm_index_tb.actual_num_seed_selection_introducer_retaining IS '引种方实际选种头数-自留';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_reserve_farm_index_tb.num_7kg_weaned_sows_corresponding_batch_retaining IS '对应批次进7kg断奶小母猪头数-自留';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_reserve_farm_index_tb.actual_num_seed_selected_introducer_export IS '引种方实际选种头数-外销';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_reserve_farm_index_tb.num_7kg_weaned_sows_corresponding_batch_export IS '对应批次进7kg断奶小母猪头数-外销';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_reserve_farm_index_tb.weight_gain IS '总增重';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_reserve_farm_index_tb.num_entries IS '出栏头数';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_reserve_farm_index_tb.weight_month IS '当月出栏总重量';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_reserve_farm_index_tb.num_sales_monthly IS '当月出栏总头数';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_reserve_farm_index_tb.num_reserve_pigs_with_estrus_record_corresponding_batch IS '对应批次有初情期记录的后备猪总头数';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_reserve_farm_index_tb.num_reserve_pigs_aged_ge_160d_end_month IS '月末>=160日龄后备猪总头数';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_reserve_farm_index_tb.effective_area_enclosure IS '栏舍有效面积总和';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_reserve_farm_index_tb.reserve_pigs_at_end_month IS '月末后备猪存栏';




create table algorithm_center.ads_tag_manager_evaluate_algorithm_boar_farm_index_tb(
	id serial  PRIMARY KEY,
	person_id varchar(32) not NULL,
	monthly_bags decimal(8,3),
	num_effective_dilutions_per_month decimal(8,3),
	sperm_count decimal(8,3),
	semen_volume decimal(8,3),
	num_sperm_linear_motion decimal(8,3),
	abnormal_sperm_count decimal(8,3),
	num_qualified_samples_finished_product_delivery_pig_sperm decimal(8,3),
	sample_quantity_finished_product_delivery_pig_sperm_test decimal(8,3),
	production_costs decimal(8,3),
	monthly_production decimal(8,3),
	drug_cost decimal(8,3),
	ave_monthly_boar_production decimal(8,3),
	material_cost decimal(8,3),
	monthly_ave_num_boars_stock decimal(8,3),
	actual_num_introduced_plants_per_month decimal(8,3),
	monthly_planned_num_introduced_plants decimal(8,3)
);
COMMENT ON TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_boar_farm_index_tb IS '管理人员评价算法输入-公猪场指标表';

COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_boar_farm_index_tb.id IS '自增ID';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_boar_farm_index_tb.person_id IS '人员id；默认''';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_boar_farm_index_tb.monthly_bags IS '月出库总袋数';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_boar_farm_index_tb.num_effective_dilutions_per_month IS '月有效采精稀释次数';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_boar_farm_index_tb.sperm_count IS '总精子数';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_boar_farm_index_tb.semen_volume IS '总精液量';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_boar_farm_index_tb.num_sperm_linear_motion IS '总直线运动精子数';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_boar_farm_index_tb.abnormal_sperm_count IS '总畸形精子数';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_boar_farm_index_tb.num_qualified_samples_finished_product_delivery_pig_sperm IS '成品出库猪精检测合格样品数量';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_boar_farm_index_tb.sample_quantity_finished_product_delivery_pig_sperm_test IS '成品出库猪精检测总样品数量';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_boar_farm_index_tb.production_costs IS '生产成本';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_boar_farm_index_tb.monthly_production IS '月生产总量';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_boar_farm_index_tb.drug_cost IS '总药费';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_boar_farm_index_tb.ave_monthly_boar_production IS '月均公猪饲养量';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_boar_farm_index_tb.material_cost IS '用料成本';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_boar_farm_index_tb.monthly_ave_num_boars_stock IS '月均公猪存栏头数';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_boar_farm_index_tb.actual_num_introduced_plants_per_month IS '月实际引种头数';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_boar_farm_index_tb.monthly_planned_num_introduced_plants IS '月计划引种头数';