create table algorithm_center.ads_tag_manager_evaluate_algorithm_scores_tb(
	id serial  PRIMARY KEY,
	person_id varchar(32) not NULL,
	times timestamp not NULL,
	pigfarm_type varchar(32) not NULL,
	efficiency_score decimal(8,3),
	quality_score decimal(8,3),
	environmental_protection_score decimal(8,3),
	comprehensive_score decimal(8,3),
	plan_management_score decimal(8,3),
	plan_score decimal(8,3),
	cost_score decimal(8,3),
	hard_deduction decimal(8,3)
);
COMMENT ON TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_scores_tb IS '管理人员评价算法输入-管理人员评价得分表';

COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_scores_tb.id IS '自增ID';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_scores_tb.person_id IS '人员id；默认''';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_scores_tb.times IS '计算时间';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_scores_tb.pigfarm_type IS '人员所在猪场类别；0：母猪场，1：肉猪场，2：后备猪场，3：公猪场，-1：未知';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_scores_tb.efficiency_score IS '效率类得分';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_scores_tb.quality_score IS '品质类得分';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_scores_tb.environmental_protection_score IS '环保类得分';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_scores_tb.comprehensive_score IS '综合类得分';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_scores_tb.plan_management_score IS '计划管理类得分';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_scores_tb.plan_score IS '计划类得分';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_scores_tb.cost_score IS '成本类得分';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_scores_tb.hard_deduction IS '硬扣分';



create table algorithm_center.ads_tag_manager_evaluate_algorithm_exce_tb(
	id serial  PRIMARY KEY,
	person_id varchar(32) not NULL,
	times timestamp not NULL,
	exce_fields varchar(32)
);
COMMENT ON TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_exce_tb IS '管理人员评价算法输入-管理人员评价异常数据表';

COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_exce_tb.id IS '自增ID';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_exce_tb.person_id IS '人员id；默认''';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_exce_tb.times IS '计算时间';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_scores_tb.exce_fields IS '异常字段集合';