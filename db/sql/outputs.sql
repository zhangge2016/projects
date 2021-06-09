create table algorithm_center.ads_tag_manager_evaluate_algorithm_scores_tb(
	id serial  PRIMARY KEY,
	person_id varchar(32) not NULL,
	times timestamp not NULL,
	scores numeric(8,3),
	msg varchar(3200)
);
COMMENT ON TABLE algorithm_center.ads_tag_manager_evaluate_algorithm_scores_tb IS '管理人员评价算法输入-管理人员评价得分表';

COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_scores_tb.id IS '自增ID';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_scores_tb.person_id IS '人员id；默认''';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_scores_tb.times IS '计算时间';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_scores_tb.scores IS '评价得分';
COMMENT ON COLUMN algorithm_center.ads_tag_manager_evaluate_algorithm_scores_tb.msg IS 'message信息';
