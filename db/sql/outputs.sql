create table algorithm_center.ads_tag_manager_evaluate_algorithm_scores_tb(
	id serial  PRIMARY KEY,
	person_id varchar(32) not NULL,
	times timestamp not NULL,
	scores numeric(8,3),
	msg varchar(3200)
);
COMMENT ON TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_scores_tb IS '������Ա�����㷨����-������Ա���۵÷ֱ�';

COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_scores_tb.id IS '����ID';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_scores_tb.person_id IS '��Աid��Ĭ��''';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_scores_tb.times IS '����ʱ��';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_scores_tb.scores IS '���۵÷�';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_scores_tb.msg IS 'message��Ϣ';
