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
COMMENT ON TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_scores_tb IS '������Ա�����㷨����-������Ա���۵÷ֱ�';

COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_scores_tb.id IS '����ID';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_scores_tb.person_id IS '��Աid��Ĭ��''';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_scores_tb.times IS '����ʱ��';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_scores_tb.pigfarm_type IS '��Ա���������0��ĸ����1��������2��������3��������-1��δ֪';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_scores_tb.efficiency_score IS 'Ч����÷�';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_scores_tb.quality_score IS 'Ʒ����÷�';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_scores_tb.environmental_protection_score IS '������÷�';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_scores_tb.comprehensive_score IS '�ۺ���÷�';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_scores_tb.plan_management_score IS '�ƻ�������÷�';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_scores_tb.plan_score IS '�ƻ���÷�';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_scores_tb.cost_score IS '�ɱ���÷�';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_scores_tb.hard_deduction IS 'Ӳ�۷�';



create table algorithm_center.ads_tag_manager_evaluate_algorithm_exce_tb(
	id serial  PRIMARY KEY,
	person_id varchar(32) not NULL,
	times timestamp not NULL,
	exce_fields varchar(32)
);
COMMENT ON TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_exce_tb IS '������Ա�����㷨����-������Ա�����쳣���ݱ�';

COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_exce_tb.id IS '����ID';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_exce_tb.person_id IS '��Աid��Ĭ��''';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_exce_tb.times IS '����ʱ��';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_scores_tb.exce_fields IS '�쳣�ֶμ���';