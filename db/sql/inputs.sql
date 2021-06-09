create table algorithm_center.ads_tag_manager_evaluate_algorithm_person_infos_tb(
	id serial  PRIMARY KEY,
	person_id varchar(32) not NULL,
	pigfarm_id varchar(32) not NULL,
	pigfarm_type varchar(32) not NULL,
	num_pigs_disposed_jurisdiction decimal(8,3),
	num_pigs_first_day_jurisdiction decimal(8,3),
	postion varchar(32) not NULL
);
COMMENT ON TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_person_infos_tb IS '������Ա�����㷨����-��Ա��Ϣ��';

COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_person_infos_tb.id IS '����ID';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_person_infos_tb.person_id IS '��Աid��Ĭ��''';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_person_infos_tb.pigfarm_id IS '��Ա������id';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_person_infos_tb.pigfarm_type IS '��Ա���������0��ĸ����1��������2��������3��������-1��δ֪';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_person_infos_tb.num_pigs_disposed_jurisdiction IS '��Ͻ�ڱ��·�������ʼ���������´��������ֻ����';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_person_infos_tb.num_pigs_first_day_jurisdiction IS '��Ͻ�౾�·�����һ�����ֻ��������Ĭ��null';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_person_infos_tb.postion IS '��Ա��ְλ��0��������1���߳���-1��δ֪';



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
	num_malformation_monthly decimal(8,3),
	num_woping_monthly decimal(8,3),
	num_heads_weak_offspring decimal(8,3),
	weight_piglets_born_monthly decimal(8,3),
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
	allocation_company_person_1000_sows decimal(8,3),
	allocation_product_person_1000_sows numeric(8,3),
	attendance decimal(8,3),
	discharge_piggery_monthly decimal(8,3),
	ave_monthly_feed_sows decimal(8,3),
	ave_monthly_feeding_quantity_sale decimal(8,3),
	bradrakey_positions numeric(8,3),
	num_talents_key_positions numeric(8,3),
	gestational_age_ratio decimal(8,3),
	num_actual_monthly_mating_heads decimal(8,3),
	monthly_theoretical_num_mating_heads decimal(8,3),
	monthly_planned_num_breeding_heads decimal(8,3),
	theoretical_num_weaned_piglets_per_month decimal(8,3),
	monthly_planned_weaning_piglets decimal(8,3),
	cumulative_deviation_bags decimal(8,3),
	planned_bags_pig_essence decimal(8,3)
);
COMMENT ON TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb IS '������Ա�����㷨����-ĸ��ָ���';

COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb.id IS '����ID';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb.person_id IS '��Աid��Ĭ��''';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb.batch_breeding_reserve_pig_num IS '�������ֺ���ͷ��';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb.batch_imported_reserve_pig_num IS '������������ͷ��';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb.seed_num IS '����ͷ��';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb.reserve_pig_sows_with_backfat_standard_num IS 'ÿ�º������ֱ�����ϱ�׼��ĸ��ͷ��';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb.reserve_pig_sows_num IS '�º���������ͷ��';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb.weight_pig_with_backfat_standard_num IS '����̥�����ʱ����׼��ͷ��';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb.weight_pig_num IS '������̥ĸ��ͷ��';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb.optimum_standard_num_backfat IS '�¶���ĸ�����ʱ����׼��ͷ��';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb.num_sows_weaned_per_month IS '�¶���ĸ����ͷ��';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb.num_sows_with_positive_pregnancy_test IS '���м��Ϊ���Ե�ĸ��ͷ��';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb.corresponding_num_sows IS '��Ӧ����ĸ��ͷ��';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb.corresponding_num_sows_early_delivery IS '��Ӧǰ�ڷ���ĸ��ͷ��';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb.num_sows_bred_early_stage IS 'ǰ������ĸ��ͷ��';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb.piglets_monthly IS '�����ܲ�����ͷ��';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb.num_births_monthly IS '���·�������';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb.num_live_piglets_monthly IS '���²�������ͷ��';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb.num_healthy_piglets_born_monthly IS '���²�������ͷ��';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb.num_congenital_sick_weak_offspring_monthly IS '���������Բ�̬����ͷ��';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb.num_stillbirths_monthly IS '���²���̥ͷ��';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb.num_malformation_monthly IS '�����������ͷ��';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb.num_woping_monthly IS '���²�ľ����ͷ��';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb.num_heads_weak_offspring IS '0.5 kg��������ͷ��';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb.weight_piglets_born_monthly IS '���³�������������';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb.num_dead_piglets_corresponding_batch IS '��Ӧ��������������';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb.weight_weaned_piglets_monthly IS '���¶�����������';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb.num_weaned_piglets_monthly IS '���¶�����������';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb.num_estrous_and_weaned_with7d_weaning_batch_monthly IS '���¸ö�������7����ʵ�ʷ������ֶ�������';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb.num_weaned_pigs_monthly IS '���¸�����ʵ�ʶ���������';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb.ave_num_sows_monthly IS '����ƽ���ջ�ĸ��ͷ��';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb.ave_monthly_sows_production IS '�¾�����ĸ��������';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb.num_sows_died_per_month IS '����������ĸ����ͷ��';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb.num_sows_eliminated_per_month IS '����̭����ĸ����ͷ��';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb.proportion_design_capacity_on_hand IS '��Ʋ��ܴ����ı���';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb.staffing_1000_sows IS 'ǧͷĸ��ȫ����Ա����';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb.num_sows_on_hand_above_90kg_monthly IS '��������ĸ�����+����90kg���Ϻ�ĸ�����ͷ��';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb.allocation_company_person_1000_sows IS 'ǧͷĸ��˾��Ա����';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb.allocation_product_person_1000_sows IS 'ǧͷĸ��������Ա����';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb.attendance IS 'ȫ������';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb.discharge_piggery_monthly IS '��������������';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb.ave_monthly_feed_sows IS 'ĸ���¾�������';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb.ave_monthly_feeding_quantity_sale IS '�������������¾�������';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb.bradrakey_positions IS '�ؼ���λ�˲���ʧ��';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb.num_talents_key_positions IS '�ؼ���λ�˲�����';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb.gestational_age_ratio IS '̥���';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb.num_actual_monthly_mating_heads IS 'ʵ��������ͷ��';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb.monthly_theoretical_num_mating_heads IS '����������ͷ��';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb.monthly_planned_num_breeding_heads IS '�¼ƻ�����ͷ��';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb.theoretical_num_weaned_piglets_per_month IS '�����۶���������';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb.monthly_planned_weaning_piglets IS '�¼ƻ�����������';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb.cumulative_deviation_bags IS '�ۼ�ƫ�����';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb.planned_bags_pig_essence IS '���ƻ�����';

CREATE INDEX index_sow_id ON algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb(person_id);

ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb ALTER COLUMN batch_breeding_reserve_pig_num set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb ALTER COLUMN batch_imported_reserve_pig_num set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb ALTER COLUMN seed_num set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb ALTER COLUMN reserve_pig_sows_with_backfat_standard_num set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb ALTER COLUMN reserve_pig_sows_num set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb ALTER COLUMN weight_pig_with_backfat_standard_num set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb ALTER COLUMN weight_pig_num set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb ALTER COLUMN optimum_standard_num_backfat set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb ALTER COLUMN num_sows_weaned_per_month set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb ALTER COLUMN num_sows_with_positive_pregnancy_test set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb ALTER COLUMN corresponding_num_sows set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb ALTER COLUMN corresponding_num_sows_early_delivery set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb ALTER COLUMN num_sows_bred_early_stage set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb ALTER COLUMN piglets_monthly set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb ALTER COLUMN num_births_monthly set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb ALTER COLUMN num_live_piglets_monthly set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb ALTER COLUMN num_healthy_piglets_born_monthly set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb ALTER COLUMN num_congenital_sick_weak_offspring_monthly set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb ALTER COLUMN num_stillbirths_monthly set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb ALTER COLUMN num_malformation_monthly set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb ALTER COLUMN num_woping_monthly set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb ALTER COLUMN num_heads_weak_offspring set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb ALTER COLUMN weight_piglets_born_monthly set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb ALTER COLUMN num_dead_piglets_corresponding_batch set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb ALTER COLUMN weight_weaned_piglets_monthly set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb ALTER COLUMN num_weaned_piglets_monthly set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb ALTER COLUMN num_estrous_and_weaned_with7d_weaning_batch_monthly set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb ALTER COLUMN num_weaned_pigs_monthly set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb ALTER COLUMN ave_num_sows_monthly set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb ALTER COLUMN ave_monthly_sows_production set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb ALTER COLUMN num_sows_died_per_month set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb ALTER COLUMN num_sows_eliminated_per_month set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb ALTER COLUMN proportion_design_capacity_on_hand set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb ALTER COLUMN staffing_1000_sows set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb ALTER COLUMN num_sows_on_hand_above_90kg_monthly set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb ALTER COLUMN allocation_company_person_1000_sows set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb ALTER COLUMN allocation_product_person_1000_sows set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb ALTER COLUMN attendance set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb ALTER COLUMN discharge_piggery_monthly set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb ALTER COLUMN ave_monthly_feed_sows set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb ALTER COLUMN ave_monthly_feeding_quantity_sale set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb ALTER COLUMN bradrakey_positions set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb ALTER COLUMN num_talents_key_positions set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb ALTER COLUMN gestational_age_ratio set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb ALTER COLUMN num_actual_monthly_mating_heads set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb ALTER COLUMN monthly_theoretical_num_mating_heads set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb ALTER COLUMN monthly_planned_num_breeding_heads set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb ALTER COLUMN theoretical_num_weaned_piglets_per_month set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb ALTER COLUMN monthly_planned_weaning_piglets set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb ALTER COLUMN cumulative_deviation_bags set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_sow_farm_index_tb ALTER COLUMN planned_bags_pig_essence set default -1;

create table algorithm_center.ads_tag_manager_evaluate_algorithm_pork_farm_index_tb(
	id serial  PRIMARY KEY,
	person_id varchar(32) not NULL,
	num_dead_growing_pigs_monthly numeric(8,3),
	ave_daily_feed_growing_pigs_monthly numeric(8,3),
	monthly_batch_sales numeric(8,3),
	num_seedlings_corresponding_batch numeric(8,3),
	num_defective_pigs_batch numeric(8,3),
	ave_weight_actual_slaughter numeric(8,3),
	ave_weight_seedlings_corresponding_batch numeric(8,3),
	feed_consumption_monthly_slaughter_pigs numeric(8,3),
	weight_gaof_monthly_pigs numeric(8,3),
	monthly_ave_num_generation_pigs numeric(8,3),
	num_people_pig_raising_section_branch_company numeric(8,3),
	monthly_ave_num_self_raised_pigs numeric(8,3),
	num_people_self_feeding_section_pig_branch numeric(8,3),
	amount_pigs_sold_monthly numeric(8,3),
	daily_ave_num_company_maintenance_section_monthly numeric(8,3),
	amount_self_raised_pigs_sold_monthly numeric(8,3),
	daily_ave_num_company_self_support_section_monthly numeric(8,3),
	num_dead_growing_pigs_monthly_of_weak_pigfarm numeric(8,3),
	ave_daily_feed_growing_pigs_monthly_of_weak_pigfarm numeric(8,3),
	monthly_batch_sales_of_weak_pigfarm numeric(8,3),
	num_seedlings_corresponding_batch_of_weak_pigfarm numeric(8,3),
	num_defective_pigs_batch_of_weak_pigfarm numeric(8,3),
	ave_weight_actual_slaughter_of_weak_pigfarm numeric(8,3),
	ave_weight_seedlings_corresponding_batch_of_weak_pigfarm numeric(8,3),
	feed_consumption_monthly_slaughter_pigs_of_weak_pigfarm numeric(8,3),
	weight_gaof_monthly_pigs_of_weak_pigfarm numeric(8,3),
	actual_num_seedlings_monthly numeric(8,3),
	num_pigs_weaned_sow_farm numeric(8,3),
	amount_barracks_development_monthly numeric(8,3),
	monthly_planned_development numeric(8,3),
	amount_shed_completed_monthly numeric(8,3),
	amount_completed_monthly_plan numeric(8,3),
	weight_superior_products_monthly numeric(8,3),
	num_top_quality_products_sold_monthly numeric(8,3),
	sales_amount_superior_products_monthly numeric(8,3),
	weight_defective_products_sold_monthly numeric(8,3),
	num_defective_products_sold_monthly numeric(8,3),
	sales_amount_defective_products_monthly numeric(8,3),
	num_weak_piglets_monthly numeric(8,3),
	num_signs_monthly numeric(8,3)
);
COMMENT ON TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_pork_farm_index_tb IS '������Ա�����㷨����-����ָ���';

COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_pork_farm_index_tb.id IS '����ID';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_pork_farm_index_tb.person_id IS '��Աid��Ĭ��''';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_pork_farm_index_tb.num_dead_growing_pigs_monthly IS '����������������';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_pork_farm_index_tb.ave_daily_feed_growing_pigs_monthly IS '���������վ�������';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_pork_farm_index_tb.monthly_batch_sales IS '�����γ���ͷ��';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_pork_farm_index_tb.num_seedlings_corresponding_batch IS '��Ӧ���ν���ͷ��';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_pork_farm_index_tb.num_defective_pigs_batch IS '����������д�ͷ��';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_pork_farm_index_tb.ave_weight_actual_slaughter IS 'ʵ�ʳ�������';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_pork_farm_index_tb.ave_weight_seedlings_corresponding_batch IS '��Ӧ���ν������';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_pork_farm_index_tb.feed_consumption_monthly_slaughter_pigs IS '�³�����ȫ�̺�����';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_pork_farm_index_tb.weight_gaof_monthly_pigs IS '�³�����������';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_pork_farm_index_tb.monthly_ave_num_generation_pigs IS '��ƽ��������������';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_pork_farm_index_tb.num_people_pig_raising_section_branch_company IS '����ֹ�˾���������������';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_pork_farm_index_tb.monthly_ave_num_self_raised_pigs IS '��ƽ��������������';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_pork_farm_index_tb.num_people_self_feeding_section_pig_branch IS '����ֹ�˾���������������';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_pork_farm_index_tb.amount_pigs_sold_monthly IS '�������۴�����������';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_pork_farm_index_tb.daily_ave_num_company_maintenance_section_monthly IS '��˾������鵱���վ�����';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_pork_farm_index_tb.amount_self_raised_pigs_sold_monthly IS '��������������������';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_pork_farm_index_tb.daily_ave_num_company_self_support_section_monthly IS '��˾������鵱���վ�����';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_pork_farm_index_tb.num_dead_growing_pigs_monthly_of_weak_pigfarm IS '����������������-��С��';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_pork_farm_index_tb.ave_daily_feed_growing_pigs_monthly_of_weak_pigfarm IS '���������վ�������-��С��';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_pork_farm_index_tb.monthly_batch_sales_of_weak_pigfarm IS '�����γ���ͷ��-��С��';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_pork_farm_index_tb.num_seedlings_corresponding_batch_of_weak_pigfarm IS '��Ӧ���ν���ͷ��-��С��';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_pork_farm_index_tb.num_defective_pigs_batch_of_weak_pigfarm IS '����������д�ͷ��-��С��';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_pork_farm_index_tb.ave_weight_actual_slaughter_of_weak_pigfarm IS 'ʵ�ʳ�������-��С��';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_pork_farm_index_tb.ave_weight_seedlings_corresponding_batch_of_weak_pigfarm IS '��Ӧ���ν������-��С��';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_pork_farm_index_tb.feed_consumption_monthly_slaughter_pigs_of_weak_pigfarm IS '�³�����ȫ�̺�����-��С��';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_pork_farm_index_tb.weight_gaof_monthly_pigs_of_weak_pigfarm IS '�³�����������-��С��';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_pork_farm_index_tb.actual_num_seedlings_monthly IS '����ʵ�ʽ�����';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_pork_farm_index_tb.num_pigs_weaned_sow_farm IS 'ĸ����ʵ�ʶ���������ͷ��';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_pork_farm_index_tb.amount_barracks_development_monthly IS '�������Ὺ������';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_pork_farm_index_tb.monthly_planned_development IS '�¼ƻ����Ὺ������';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_pork_farm_index_tb.amount_shed_completed_monthly IS '���������깤����';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_pork_farm_index_tb.amount_completed_monthly_plan IS '�¼ƻ������깤����';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_pork_farm_index_tb.weight_superior_products_monthly IS '��Ʒ���³���������';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_pork_farm_index_tb.num_top_quality_products_sold_monthly IS '��Ʒ���³�����ͷ��';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_pork_farm_index_tb.sales_amount_superior_products_monthly IS '��Ʒ���������ܽ��';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_pork_farm_index_tb.weight_defective_products_sold_monthly IS '��Ʒ���³���������';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_pork_farm_index_tb.num_defective_products_sold_monthly IS '��Ʒ���³�����ͷ��';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_pork_farm_index_tb.sales_amount_defective_products_monthly IS '��Ʒ���������ܽ��';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_pork_farm_index_tb.num_weak_piglets_monthly IS '���½���С��ͷ��';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_pork_farm_index_tb.num_signs_monthly IS '�����ܽ���ͷ��';

CREATE INDEX index_pork_id ON algorithm_center.ads_tag_manager_evaluate_algorithm_pork_farm_index_tb(person_id);

ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_pork_farm_index_tb ALTER COLUMN num_dead_growing_pigs_monthly set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_pork_farm_index_tb ALTER COLUMN ave_daily_feed_growing_pigs_monthly set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_pork_farm_index_tb ALTER COLUMN monthly_batch_sales set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_pork_farm_index_tb ALTER COLUMN num_seedlings_corresponding_batch set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_pork_farm_index_tb ALTER COLUMN num_defective_pigs_batch set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_pork_farm_index_tb ALTER COLUMN ave_weight_actual_slaughter set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_pork_farm_index_tb ALTER COLUMN ave_weight_seedlings_corresponding_batch set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_pork_farm_index_tb ALTER COLUMN feed_consumption_monthly_slaughter_pigs set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_pork_farm_index_tb ALTER COLUMN weight_gaof_monthly_pigs set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_pork_farm_index_tb ALTER COLUMN monthly_ave_num_generation_pigs set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_pork_farm_index_tb ALTER COLUMN num_people_pig_raising_section_branch_company set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_pork_farm_index_tb ALTER COLUMN monthly_ave_num_self_raised_pigs set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_pork_farm_index_tb ALTER COLUMN num_people_self_feeding_section_pig_branch set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_pork_farm_index_tb ALTER COLUMN amount_pigs_sold_monthly set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_pork_farm_index_tb ALTER COLUMN daily_ave_num_company_maintenance_section_monthly set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_pork_farm_index_tb ALTER COLUMN amount_self_raised_pigs_sold_monthly set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_pork_farm_index_tb ALTER COLUMN daily_ave_num_company_self_support_section_monthly set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_pork_farm_index_tb ALTER COLUMN num_dead_growing_pigs_monthly_of_weak_pigfarm set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_pork_farm_index_tb ALTER COLUMN ave_daily_feed_growing_pigs_monthly_of_weak_pigfarm set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_pork_farm_index_tb ALTER COLUMN monthly_batch_sales_of_weak_pigfarm set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_pork_farm_index_tb ALTER COLUMN num_seedlings_corresponding_batch_of_weak_pigfarm set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_pork_farm_index_tb ALTER COLUMN num_defective_pigs_batch_of_weak_pigfarm set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_pork_farm_index_tb ALTER COLUMN ave_weight_actual_slaughter_of_weak_pigfarm set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_pork_farm_index_tb ALTER COLUMN ave_weight_seedlings_corresponding_batch_of_weak_pigfarm set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_pork_farm_index_tb ALTER COLUMN feed_consumption_monthly_slaughter_pigs_of_weak_pigfarm set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_pork_farm_index_tb ALTER COLUMN weight_gaof_monthly_pigs_of_weak_pigfarm set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_pork_farm_index_tb ALTER COLUMN actual_num_seedlings_monthly set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_pork_farm_index_tb ALTER COLUMN num_pigs_weaned_sow_farm set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_pork_farm_index_tb ALTER COLUMN amount_barracks_development_monthly set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_pork_farm_index_tb ALTER COLUMN monthly_planned_development set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_pork_farm_index_tb ALTER COLUMN amount_shed_completed_monthly set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_pork_farm_index_tb ALTER COLUMN amount_completed_monthly_plan set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_pork_farm_index_tb ALTER COLUMN weight_superior_products_monthly set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_pork_farm_index_tb ALTER COLUMN num_top_quality_products_sold_monthly set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_pork_farm_index_tb ALTER COLUMN sales_amount_superior_products_monthly set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_pork_farm_index_tb ALTER COLUMN weight_defective_products_sold_monthly set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_pork_farm_index_tb ALTER COLUMN num_defective_products_sold_monthly set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_pork_farm_index_tb ALTER COLUMN sales_amount_defective_products_monthly set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_pork_farm_index_tb ALTER COLUMN num_weak_piglets_monthly set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_pork_farm_index_tb ALTER COLUMN num_signs_monthly set default -1;




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
	ave_feed_day decimal(8,3),
	num_entries decimal(8,3),
	weight_month decimal(8,3),
	num_sales_monthly decimal(8,3),
	num_reserve_pigs_with_estrus_record_corresponding_batch decimal(8,3),
	num_reserve_pigs_aged_ge_160d_end_month decimal(8,3),
	effective_area_enclosure decimal(8,3),
	reserve_pigs_at_end_month decimal(8,3)
);
COMMENT ON TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_reserve_farm_index_tb IS '������Ա�����㷨����-����ָ���';

COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_reserve_farm_index_tb.id IS '����ID';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_reserve_farm_index_tb.person_id IS '��Աid��Ĭ��''';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_reserve_farm_index_tb.num_deaths_per_month IS '������ͷ��';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_reserve_farm_index_tb.monthly_reserve_pig_production IS '�º���������';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_reserve_farm_index_tb.num_deaths_batches IS '��������ͷ��';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_reserve_farm_index_tb.num_7kg_weaned_pigs_corresponding_batch IS '��Ӧ���ν�7kg������ͷ��';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_reserve_farm_index_tb.actual_num_seed_selection_introducer_retaining IS '���ַ�ʵ��ѡ��ͷ��-����';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_reserve_farm_index_tb.num_7kg_weaned_sows_corresponding_batch_retaining IS '��Ӧ���ν�7kg����Сĸ��ͷ��-����';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_reserve_farm_index_tb.actual_num_seed_selected_introducer_export IS '���ַ�ʵ��ѡ��ͷ��-����';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_reserve_farm_index_tb.num_7kg_weaned_sows_corresponding_batch_export IS '��Ӧ���ν�7kg����Сĸ��ͷ��-����';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_reserve_farm_index_tb.weight_gain IS '������';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_reserve_farm_index_tb.ave_feed_day IS 'ƽ����������';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_reserve_farm_index_tb.num_entries IS '����ͷ��';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_reserve_farm_index_tb.weight_month IS '���³���������';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_reserve_farm_index_tb.num_sales_monthly IS '���³�����ͷ��';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_reserve_farm_index_tb.num_reserve_pigs_with_estrus_record_corresponding_batch IS '��Ӧ�����г����ڼ�¼�ĺ�����ͷ��';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_reserve_farm_index_tb.num_reserve_pigs_aged_ge_160d_end_month IS '��ĩ>=160���������ͷ��';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_reserve_farm_index_tb.effective_area_enclosure IS '������Ч����ܺ�';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_reserve_farm_index_tb.reserve_pigs_at_end_month IS '��ĩ�������';

CREATE INDEX index_reserve_id ON algorithm_center.ads_tag_manager_evaluate_algorithm_reserve_farm_index_tb(person_id);

ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_reserve_farm_index_tb ALTER COLUMN  num_deaths_per_month set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_reserve_farm_index_tb ALTER COLUMN  monthly_reserve_pig_production set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_reserve_farm_index_tb ALTER COLUMN  num_deaths_batches set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_reserve_farm_index_tb ALTER COLUMN  num_7kg_weaned_pigs_corresponding_batch set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_reserve_farm_index_tb ALTER COLUMN  actual_num_seed_selection_introducer_retaining set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_reserve_farm_index_tb ALTER COLUMN  num_7kg_weaned_sows_corresponding_batch_retaining set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_reserve_farm_index_tb ALTER COLUMN  actual_num_seed_selected_introducer_export set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_reserve_farm_index_tb ALTER COLUMN  num_7kg_weaned_sows_corresponding_batch_export set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_reserve_farm_index_tb ALTER COLUMN  weight_gain set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_reserve_farm_index_tb ALTER COLUMN  ave_feed_day set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_reserve_farm_index_tb ALTER COLUMN  num_entries set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_reserve_farm_index_tb ALTER COLUMN  weight_month set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_reserve_farm_index_tb ALTER COLUMN  num_sales_monthly set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_reserve_farm_index_tb ALTER COLUMN  num_reserve_pigs_with_estrus_record_corresponding_batch set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_reserve_farm_index_tb ALTER COLUMN  num_reserve_pigs_aged_ge_160d_end_month set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_reserve_farm_index_tb ALTER COLUMN  effective_area_enclosure set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_reserve_farm_index_tb ALTER COLUMN  reserve_pigs_at_end_month set default -1;



create table algorithm_center.ads_tag_manager_evaluate_algorithm_boar_farm_index_tb(
	id serial  PRIMARY KEY,
	person_id varchar(32) not NULL,
	elimination_num_of_reserve_boars numeric(8,3),
	ave_monthly_reserve_boar_production numeric(8,3),
	num_of_dead_reserve_boars numeric(8,3),
	num_of_dead_production_boars numeric(8,3),
	ave_monthly_production_of_boars numeric(8,3),
	elimination_num_of_production_boars numeric(8,3),
	effective_num_of_boars numeric(8,3),
	available_times numeric(8,3),
	monthly_total_semen_collection_times numeric(8,3),
	total_semen_collection_times numeric(8,3),
	ave_num_of_productive_boars_per_month numeric(8,3),
	total_monthly_pig_sperm_production_capacity numeric(8,3),
	ave_monthly_of_boars numeric(8,3),
	on_the_job_num_in_the_station numeric(8,3),
	monthly_bags numeric(8,3),
	num_effective_dilutions_per_month numeric(8,3),
	sperm_count numeric(8,3),
	semen_volume numeric(8,3),
	num_sperm_linear_motion numeric(8,3),
	abnormal_sperm_count numeric(8,3),
	num_qualified_samples_finished_product_delivery_pig_sperm numeric(8,3),
	sample_quantity_finished_product_delivery_pig_sperm_test numeric(8,3),
	production_costs numeric(8,3),
	monthly_production numeric(8,3),
	drug_cost numeric(8,3),
	ave_monthly_boar_production numeric(8,3),
	material_cost numeric(8,3),
	monthly_ave_num_boars_stock numeric(8,3),
	actual_num_introduced_plants_per_month numeric(8,3),
	monthly_planned_num_introduced_plants numeric(8,3)
);
COMMENT ON TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_boar_farm_index_tb IS '������Ա�����㷨����-����ָ���';

COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_boar_farm_index_tb.id IS '����ID';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_boar_farm_index_tb.person_id IS '��Աid��Ĭ��''';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_boar_farm_index_tb.elimination_num_of_reserve_boars IS '�󱸹�����̭ͷ��';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_boar_farm_index_tb.ave_monthly_reserve_boar_production IS '�¾��󱸹���������';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_boar_farm_index_tb.num_of_dead_reserve_boars IS '�󱸹�������ͷ��';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_boar_farm_index_tb.num_of_dead_production_boars IS '������������ͷ��';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_boar_farm_index_tb.ave_monthly_production_of_boars IS '�¾���������������';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_boar_farm_index_tb.elimination_num_of_production_boars IS '����������̭ͷ��';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_boar_farm_index_tb.effective_num_of_boars IS '��Ч��������';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_boar_farm_index_tb.available_times IS '���ô���';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_boar_farm_index_tb.monthly_total_semen_collection_times IS '���ܲɾ�����';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_boar_farm_index_tb.total_semen_collection_times IS '�ܲɾ�����';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_boar_farm_index_tb.ave_num_of_productive_boars_per_month IS '�¾��������������';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_boar_farm_index_tb.total_monthly_pig_sperm_production_capacity IS '������������';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_boar_farm_index_tb.ave_monthly_of_boars IS '�¾�����������';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_boar_farm_index_tb.on_the_job_num_in_the_station IS 'վ����ְ����';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_boar_farm_index_tb.monthly_bags IS '�³����ܴ���';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_boar_farm_index_tb.num_effective_dilutions_per_month IS '����Ч�ɾ�ϡ�ʹ���';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_boar_farm_index_tb.sperm_count IS '�ܾ�����';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_boar_farm_index_tb.semen_volume IS '�ܾ�Һ��';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_boar_farm_index_tb.num_sperm_linear_motion IS '��ֱ���˶�������';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_boar_farm_index_tb.abnormal_sperm_count IS '�ܻ��ξ�����';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_boar_farm_index_tb.num_qualified_samples_finished_product_delivery_pig_sperm IS '��Ʒ���������ϸ���Ʒ����';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_boar_farm_index_tb.sample_quantity_finished_product_delivery_pig_sperm_test IS '��Ʒ�������������Ʒ����';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_boar_farm_index_tb.production_costs IS '�����ɱ�';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_boar_farm_index_tb.monthly_production IS '����������';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_boar_farm_index_tb.drug_cost IS '��ҩ��';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_boar_farm_index_tb.ave_monthly_boar_production IS '�¾�����������';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_boar_farm_index_tb.material_cost IS '���ϳɱ�';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_boar_farm_index_tb.monthly_ave_num_boars_stock IS '�¾��������ͷ��';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_boar_farm_index_tb.actual_num_introduced_plants_per_month IS '��ʵ������ͷ��';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_boar_farm_index_tb.monthly_planned_num_introduced_plants IS '�¼ƻ�����ͷ��';

CREATE INDEX index_boar_id ON algorithm_center.ads_tag_manager_evaluate_algorithm_boar_farm_index_tb(person_id);

ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_boar_farm_index_tb ALTER COLUMN elimination_num_of_reserve_boars set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_boar_farm_index_tb ALTER COLUMN ave_monthly_reserve_boar_production set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_boar_farm_index_tb ALTER COLUMN num_of_dead_reserve_boars set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_boar_farm_index_tb ALTER COLUMN num_of_dead_production_boars set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_boar_farm_index_tb ALTER COLUMN ave_monthly_production_of_boars set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_boar_farm_index_tb ALTER COLUMN elimination_num_of_production_boars set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_boar_farm_index_tb ALTER COLUMN effective_num_of_boars set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_boar_farm_index_tb ALTER COLUMN available_times set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_boar_farm_index_tb ALTER COLUMN monthly_total_semen_collection_times set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_boar_farm_index_tb ALTER COLUMN total_semen_collection_times set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_boar_farm_index_tb ALTER COLUMN ave_num_of_productive_boars_per_month set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_boar_farm_index_tb ALTER COLUMN total_monthly_pig_sperm_production_capacity set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_boar_farm_index_tb ALTER COLUMN ave_monthly_of_boars set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_boar_farm_index_tb ALTER COLUMN on_the_job_num_in_the_station set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_boar_farm_index_tb ALTER COLUMN monthly_bags set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_boar_farm_index_tb ALTER COLUMN num_effective_dilutions_per_month set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_boar_farm_index_tb ALTER COLUMN sperm_count set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_boar_farm_index_tb ALTER COLUMN semen_volume set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_boar_farm_index_tb ALTER COLUMN num_sperm_linear_motion set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_boar_farm_index_tb ALTER COLUMN abnormal_sperm_count set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_boar_farm_index_tb ALTER COLUMN num_qualified_samples_finished_product_delivery_pig_sperm set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_boar_farm_index_tb ALTER COLUMN sample_quantity_finished_product_delivery_pig_sperm_test set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_boar_farm_index_tb ALTER COLUMN production_costs set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_boar_farm_index_tb ALTER COLUMN monthly_production set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_boar_farm_index_tb ALTER COLUMN drug_cost set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_boar_farm_index_tb ALTER COLUMN ave_monthly_boar_production set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_boar_farm_index_tb ALTER COLUMN material_cost set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_boar_farm_index_tb ALTER COLUMN monthly_ave_num_boars_stock set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_boar_farm_index_tb ALTER COLUMN actual_num_introduced_plants_per_month set default -1;
ALTER TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_boar_farm_index_tb ALTER COLUMN monthly_planned_num_introduced_plants set default -1;
