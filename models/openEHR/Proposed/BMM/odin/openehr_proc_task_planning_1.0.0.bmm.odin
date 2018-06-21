	packages = <
		["ORG.OPENEHR.PROC.TASK_PLANNING"] = <
			name = <"org.openehr.proc.task_planning">
			classes = <"SYSTEM_CALL", "PARAMETER_MAPPING", "PARAMETER_DEF", "QUERY_CALL", "API_CALL", "TASK_LIFECYCLE", "TIME_SPECIFIER", "CLOCK_TIME", "CALENDAR_TIME", "CUSTOMARY_TIME", "TEMPORAL_RELATION", "RESUME_TYPE", "WORK_PLAN", "TASK_PLAN", "TASK_PARTICIPATION", "PLAN_ITEM", "TASK_GROUP", "TASK", "DISPATCHABLE_TASK", "PERFORMABLE_TASK", "PLAN_DATA_CONTEXT", "CONTEXT_VALUE", "CONTEXT_EXPRESSION", "CONTEXT_VARIABLE", "EVENT_VARIABLE", "STATE_VARIABLE", "CONTINUOUS_EVENT_VARIABLE", "TASK_REPEAT", "PLAN_CALENDAR", "PLAN_TIMELINE", "CALENDAR_ENTRY", "TASK_ACTION", "PERFORMABLE_ACTION", "DISPATCHABLE_ACTION", "DEFINED_ACTION", "SYSTEM_REQUEST", "EXTERNAL_REQUEST", "LINKED_PLAN", "HAND_OFF", "SUB_PLAN", "DATASET_SPEC", "EVENT_ACTION", "RESOURCE_PARTICIPATION", "CHOICE_GROUP", "CHOICE_BRANCH", "ADHOC_GROUP", "ADHOC_BRANCH", "OVERRIDE_TYPE", "CONDITION_GROUP", "CONDITION_BRANCH", "DECISION_GROUP", "DECISION_BRANCH", "EVENT_GROUP", "EVENT_BRANCH", "SUBJECT_PRECONDITION", "TASK_COSTING", "EXECUTION_TYPE", "TASK_WAIT", "TIMELINE_MOMENT", "MANUAL_NOTIFICATION", "SYSTEM_NOTIFICATION", "TASK_TRANSITION", "PLAN_EVENT", "TIMER_EVENT", "CALENDAR_EVENT", "DELAY_EVENT", "STATE_TRIGGER", "REMINDER", "TIMER_WAIT", "EVENT_WAIT", "RESUME_ACTION", "CALLBACK_WAIT", "CALLBACK_NOTIFICATION", "TASK_PLAN_EXECUTION_HISTORY">
		>
	>
	rm_publisher = <"openehr">
	schema_name = <"proc_task_planning">
	rm_release = <"1.0.0">
	schema_revision = <"1.1.0.1">
	schema_lifecycle_state = <"development">
	schema_author = <"Thomas Beale <thomas.beale@openehr.org>">
	schema_description = <"openEHR Release 1.1.0 Task Management schema">
	bmm_version = <"2.3">
	includes = <
		["1"] = <
			id = <"openehr_rm_ehr_1.0.4">
		>
		["2"] = <
			id = <"openehr_rm_demographic_1.0.4">
		>
	>
	primitive_types = <
		["Any"] = <
			name = <"Any">
			source_schema_id = <"openehr_base_1.1.0">
			is_abstract = <True>
			uid = <649>
		>
		["Ordered"] = <
			documentation = <"Ancestor of types with total order relation defined, i.e. '<' and '='.">
			name = <"Ordered">
			ancestors = <"Any", ...>
			source_schema_id = <"openehr_base_1.1.0">
			is_abstract = <True>
			uid = <650>
		>
		["Numeric"] = <
			documentation = <"Ancestor of numeric types.">
			name = <"Numeric">
			ancestors = <"Any", ...>
			source_schema_id = <"openehr_base_1.1.0">
			is_abstract = <True>
			uid = <651>
		>
		["Ordered_Numeric"] = <
			documentation = <"Ancestor of ordered numeric types.">
			name = <"Ordered_Numeric">
			ancestors = <"Numeric", "Ordered">
			source_schema_id = <"openehr_base_1.1.0">
			is_abstract = <True>
			uid = <652>
		>
		["Byte"] = <
			name = <"Byte">
			ancestors = <"Any", ...>
			source_schema_id = <"openehr_base_1.1.0">
			uid = <653>
		>
		["Octet"] = <
			name = <"Octet">
			ancestors = <"Any", ...>
			source_schema_id = <"openehr_base_1.1.0">
			uid = <654>
		>
		["Boolean"] = <
			name = <"Boolean">
			ancestors = <"Any", ...>
			source_schema_id = <"openehr_base_1.1.0">
			uid = <655>
		>
		["Integer"] = <
			name = <"Integer">
			ancestors = <"Ordered_Numeric", ...>
			source_schema_id = <"openehr_base_1.1.0">
			uid = <656>
		>
		["Integer64"] = <
			name = <"Integer64">
			ancestors = <"Ordered_Numeric", ...>
			source_schema_id = <"openehr_base_1.1.0">
			uid = <657>
		>
		["Real"] = <
			name = <"Real">
			ancestors = <"Ordered_Numeric", ...>
			source_schema_id = <"openehr_base_1.1.0">
			uid = <658>
		>
		["Double"] = <
			name = <"Double">
			ancestors = <"Ordered_Numeric", ...>
			source_schema_id = <"openehr_base_1.1.0">
			uid = <659>
		>
		["Character"] = <
			name = <"Character">
			ancestors = <"Any", ...>
			source_schema_id = <"openehr_base_1.1.0">
			uid = <660>
		>
		["String"] = <
			name = <"String">
			ancestors = <"Any", ...>
			source_schema_id = <"openehr_base_1.1.0">
			uid = <661>
		>
		["Uri"] = <
			name = <"Uri">
			ancestors = <"String", ...>
			source_schema_id = <"openehr_base_1.1.0">
			uid = <662>
		>
		["List"] = <
			name = <"List">
			generic_parameter_defs = <
				["T"] = <
					name = <"T">
				>
			>
			ancestors = <"Aggregate", ...>
			source_schema_id = <"openehr_base_1.1.0">
			uid = <663>
		>
		["Array"] = <
			name = <"Array">
			generic_parameter_defs = <
				["T"] = <
					name = <"T">
				>
			>
			ancestors = <"Aggregate", ...>
			source_schema_id = <"openehr_base_1.1.0">
			uid = <664>
		>
		["Set"] = <
			name = <"Set">
			generic_parameter_defs = <
				["T"] = <
					name = <"T">
				>
			>
			ancestors = <"Aggregate", ...>
			source_schema_id = <"openehr_base_1.1.0">
			uid = <665>
		>
		["Interval"] = <
			documentation = <"Type defining an interval of any ordered type.">
			name = <"Interval">
			generic_parameter_defs = <
				["T"] = <
					name = <"T">
					conforms_to_type = <"Ordered">
				>
			>
			ancestors = <"Any", ...>
			properties = <
				["lower"] = (P_BMM_SINGLE_PROPERTY_OPEN) <
					name = <"lower">
					type = <"T">
				>
				["upper"] = (P_BMM_SINGLE_PROPERTY_OPEN) <
					name = <"upper">
					type = <"T">
				>
				["lower_unbounded"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"lower_unbounded">
					type = <"Boolean">
				>
				["upper_unbounded"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"upper_unbounded">
					type = <"Boolean">
				>
				["lower_included"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"lower_included">
					type = <"Boolean">
				>
				["upper_included"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"upper_included">
					type = <"Boolean">
				>
			>
			source_schema_id = <"openehr_base_1.1.0">
			uid = <666>
		>
		["Hash"] = <
			documentation = <"Type defining Hash table / hash map structure, whose type parameters V and K represent a value type and an Ordered key type respectively.">
			name = <"Hash">
			generic_parameter_defs = <
				["V"] = <
					name = <"V">
				>
				["K"] = <
					name = <"K">
					conforms_to_type = <"Ordered">
				>
			>
			ancestors = <"Any", ...>
			source_schema_id = <"openehr_base_1.1.0">
			uid = <667>
		>
		["Aggregate"] = <
			name = <"Aggregate">
			generic_parameter_defs = <
				["T"] = <
					name = <"T">
				>
			>
			ancestors = <"Any", ...>
			source_schema_id = <"openehr_base_1.1.0">
			is_abstract = <True>
			uid = <668>
		>
		["IDate"] = <
			documentation = <"Standard interface for Date concept.">
			name = <"IDate">
			ancestors = <"Any", ...>
			source_schema_id = <"openehr_base_1.1.0">
			is_abstract = <True>
			uid = <669>
		>
		["ITime"] = <
			documentation = <"Standard interface for Time concept.">
			name = <"ITime">
			ancestors = <"Any", ...>
			source_schema_id = <"openehr_base_1.1.0">
			is_abstract = <True>
			uid = <670>
		>
		["IDate_time"] = <
			documentation = <"Standard interface for Date_time concept.">
			name = <"IDate_time">
			ancestors = <"Any", ...>
			source_schema_id = <"openehr_base_1.1.0">
			is_abstract = <True>
			uid = <671>
		>
		["IDuration"] = <
			documentation = <"Standard interface for Duration concept.">
			name = <"IDuration">
			ancestors = <"Any", ...>
			source_schema_id = <"openehr_base_1.1.0">
			is_abstract = <True>
			uid = <672>
		>
		["Date"] = <
			documentation = <"Primitive System Date type.">
			name = <"Date">
			ancestors = <"IDate", ...>
			properties = <
				["value"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"value">
					type = <"Integer">
				>
			>
			source_schema_id = <"openehr_base_1.1.0">
			uid = <673>
		>
		["Time"] = <
			documentation = <"Primitive system Time type.">
			name = <"Time">
			ancestors = <"ITime", ...>
			properties = <
				["value"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"value">
					type = <"Integer">
				>
			>
			source_schema_id = <"openehr_base_1.1.0">
			uid = <674>
		>
		["Date_time"] = <
			documentation = <"Primitive system Date Time type.">
			name = <"Date_time">
			ancestors = <"IDate_time", ...>
			properties = <
				["value"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"value">
					type = <"Integer">
				>
			>
			source_schema_id = <"openehr_base_1.1.0">
			uid = <675>
		>
		["Duration"] = <
			documentation = <"Primitive system Duration type.">
			name = <"Duration">
			ancestors = <"IDuration", ...>
			properties = <
				["value"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"value">
					type = <"Integer">
				>
			>
			source_schema_id = <"openehr_base_1.1.0">
			uid = <676>
		>
		["ISO8601_TYPE"] = <
			documentation = <"Parent of ISO8601 types.">
			name = <"ISO8601_TYPE">
			ancestors = <"Any", ...>
			properties = <
				["value"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"value">
					type = <"String">
				>
			>
			source_schema_id = <"openehr_base_1.1.0">
			uid = <677>
		>
		["ISO8601_DATE"] = <
			documentation = <"Date type based on IS8601 representation.">
			name = <"ISO8601_DATE">
			ancestors = <"IDate", "ISO8601_TYPE">
			source_schema_id = <"openehr_base_1.1.0">
			uid = <678>
		>
		["ISO8601_TIME"] = <
			documentation = <"Time type based on IS8601 representation.">
			name = <"ISO8601_TIME">
			ancestors = <"ITime", "ISO8601_TYPE">
			source_schema_id = <"openehr_base_1.1.0">
			uid = <679>
		>
		["ISO8601_DATE_TIME"] = <
			documentation = <"Date Time type based on IS8601 representation.">
			name = <"ISO8601_DATE_TIME">
			ancestors = <"IDate_time", "ISO8601_TYPE">
			source_schema_id = <"openehr_base_1.1.0">
			uid = <680>
		>
		["ISO8601_DURATION"] = <
			documentation = <"Duration type based on IS8601 representation.">
			name = <"ISO8601_DURATION">
			ancestors = <"IDuration", "ISO8601_TYPE">
			source_schema_id = <"openehr_base_1.1.0">
			uid = <681>
		>
		["Terminology_term"] = <
			name = <"Terminology_term">
			ancestors = <"Any", ...>
			properties = <
				["text"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"text">
					type = <"String">
					is_mandatory = <True>
				>
				["concept"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"concept">
					type = <"Terminology_code">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_base_1.1.0">
			uid = <682>
		>
		["Terminology_code"] = <
			name = <"Terminology_code">
			ancestors = <"Any", ...>
			properties = <
				["terminology_id"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"terminology_id">
					type = <"String">
					is_mandatory = <True>
				>
				["terminology_version"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"terminology_version">
					type = <"String">
				>
				["code_string"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"code_string">
					type = <"String">
					is_mandatory = <True>
				>
				["uri"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"uri">
					type = <"Uri">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_base_1.1.0">
			uid = <683>
		>
	>
	class_definitions = <
		["RESUME_TYPE"] = (P_BMM_ENUMERATION_INTEGER) <
			name = <"RESUME_TYPE">
			ancestors = <"Integer", ...>
			source_schema_id = <"openehr_proc_task_planning_1.0.0">
			item_names = <"resume_specified", "retry_current_group", "new_thread">
			uid = <713>
		>
		["TEMPORAL_RELATION"] = (P_BMM_ENUMERATION_INTEGER) <
			name = <"TEMPORAL_RELATION">
			ancestors = <"Integer", ...>
			source_schema_id = <"openehr_proc_task_planning_1.0.0">
			item_names = <"before", "with", "after">
			uid = <714>
		>
		["TASK_LIFECYCLE"] = (P_BMM_ENUMERATION_INTEGER) <
			name = <"TASK_LIFECYCLE">
			ancestors = <"Integer", ...>
			source_schema_id = <"openehr_proc_task_planning_1.0.0">
			item_names = <"planned", "available", "cancelled", "aborted", "abandoned", "underway", "suspended", "resumed", "completed">
			uid = <715>
		>
		["SYSTEM_CALL"] = <
			name = <"SYSTEM_CALL">
			properties = <
				["call_name"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"call_name">
					type = <"String">
					is_mandatory = <True>
				>
				["system_id"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"system_id">
					type = <"String">
					is_mandatory = <True>
				>
				["parameter_map"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"parameter_map">
					type_def = <
						type = <"PARAMETER_MAPPING">
						container_type = <"List">
					>
				>
				["bound_parameters"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"bound_parameters">
					type_def = <
						type = <"PARAMETER_DEF">
						container_type = <"List">
					>
				>
			>
			source_schema_id = <"openehr_proc_task_planning_1.0.0">
			is_abstract = <True>
			uid = <716>
		>
		["PARAMETER_DEF"] = <
			name = <"PARAMETER_DEF">
			properties = <
				["name"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"name">
					type = <"String">
					is_mandatory = <True>
				>
				["type"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"type">
					type = <"EXPR_TYPE_DEF">
					is_mandatory = <True>
				>
				["value"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"value">
					type = <"Any">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_proc_task_planning_1.0.0">
			uid = <717>
		>
		["PARAMETER_MAPPING"] = <
			name = <"PARAMETER_MAPPING">
			properties = <
				["name"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"name">
					type = <"String">
					is_mandatory = <True>
				>
				["context_name"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"context_name">
					type = <"String">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_proc_task_planning_1.0.0">
			uid = <718>
		>
		["QUERY_CALL"] = <
			name = <"QUERY_CALL">
			ancestors = <"SYSTEM_CALL", ...>
			properties = <
				["query_id"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"query_id">
					type = <"String">
				>
				["query_text"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"query_text">
					type = <"String">
				>
			>
			source_schema_id = <"openehr_proc_task_planning_1.0.0">
			uid = <719>
		>
		["API_CALL"] = <
			name = <"API_CALL">
			ancestors = <"SYSTEM_CALL", ...>
			source_schema_id = <"openehr_proc_task_planning_1.0.0">
			uid = <720>
		>
		["PLAN_DATA_CONTEXT"] = <
			name = <"PLAN_DATA_CONTEXT">
			properties = <
				["expressions"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"expressions">
					type_def = <
						type = <"CONTEXT_EXPRESSION">
						container_type = <"List">
					>
				>
				["variables"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"variables">
					type_def = <
						type = <"CONTEXT_VARIABLE">
						container_type = <"List">
					>
				>
			>
			source_schema_id = <"openehr_proc_task_planning_1.0.0">
			uid = <721>
		>
		["CONTEXT_VALUE"] = <
			name = <"CONTEXT_VALUE">
			generic_parameter_defs = <
				["T"] = <
					name = <"T">
					conforms_to_type = <"EXPR_TYPE_DEF">
				>
			>
			properties = <
				["name"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"name">
					type = <"String">
					is_mandatory = <True>
				>
				["type"] = (P_BMM_SINGLE_PROPERTY_OPEN) <
					name = <"type">
					type = <"T">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_proc_task_planning_1.0.0">
			is_abstract = <True>
			uid = <722>
		>
		["CONTEXT_VARIABLE"] = <
			name = <"CONTEXT_VARIABLE">
			generic_parameter_defs = <
				["T"] = <
					name = <"T">
					conforms_to_type = <"EXPR_TYPE_DEF">
				>
			>
			ancestors = <"CONTEXT_VALUE", ...>
			properties = <
				["populating_request"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"populating_request">
					type = <"SYSTEM_CALL">
				>
			>
			source_schema_id = <"openehr_proc_task_planning_1.0.0">
			is_abstract = <True>
			uid = <723>
		>
		["CONTEXT_EXPRESSION"] = <
			name = <"CONTEXT_EXPRESSION">
			generic_parameter_defs = <
				["T"] = <
					name = <"T">
					conforms_to_type = <"EXPR_TYPE_DEF">
				>
			>
			ancestors = <"CONTEXT_VALUE", ...>
			properties = <
				["expression"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"expression">
					type = <"String">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_proc_task_planning_1.0.0">
			uid = <724>
		>
		["STATE_VARIABLE"] = <
			name = <"STATE_VARIABLE">
			generic_parameter_defs = <
				["T"] = <
					name = <"T">
					conforms_to_type = <"EXPR_TYPE_DEF">
				>
			>
			ancestors = <"CONTEXT_VARIABLE", ...>
			properties = <
				["required_currency"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"required_currency">
					type = <"IDuration">
				>
			>
			source_schema_id = <"openehr_proc_task_planning_1.0.0">
			uid = <725>
		>
		["EVENT_VARIABLE"] = <
			name = <"EVENT_VARIABLE">
			generic_parameter_defs = <
				["T"] = <
					name = <"T">
					conforms_to_type = <"EXPR_TYPE_DEF">
				>
			>
			ancestors = <"CONTEXT_VARIABLE", ...>
			source_schema_id = <"openehr_proc_task_planning_1.0.0">
			uid = <726>
		>
		["CONTINUOUS_EVENT_VARIABLE"] = <
			name = <"CONTINUOUS_EVENT_VARIABLE">
			generic_parameter_defs = <
				["T"] = <
					name = <"T">
					conforms_to_type = <"EXPR_TYPE_DEF">
				>
			>
			ancestors = <"EVENT_VARIABLE", ...>
			properties = <
				["update_variation"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"update_variation">
					type = <"Real">
				>
			>
			source_schema_id = <"openehr_proc_task_planning_1.0.0">
			uid = <727>
		>
		["WORK_PLAN"] = <
			name = <"WORK_PLAN">
			ancestors = <"CONTENT_ITEM", ...>
			properties = <
				["description"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"description">
					type = <"DV_TEXT">
					is_mandatory = <True>
				>
				["care_plan"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"care_plan">
					type = <"LOCATABLE_REF">
				>
				["care_pathway"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"care_pathway">
					type = <"DV_IDENTIFIER">
				>
				["order_list"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"order_list">
					cardinality = <|>=0|>
					type_def = <
						type = <"LOCATABLE_REF">
						container_type = <"List">
					>
				>
				["calendar"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"calendar">
					type = <"PLAN_CALENDAR">
					is_mandatory = <True>
				>
				["plan_timeline"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"plan_timeline">
					type = <"PLAN_TIMELINE">
					is_mandatory = <True>
				>
				["plans"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"plans">
					cardinality = <|>=1|>
					type_def = <
						type = <"UID_BASED_ID">
						container_type = <"List">
					>
				>
				["event_wait_states"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"event_wait_states">
					type_def = <
						type = <"EVENT_WAIT">
						container_type = <"List">
					>
				>
				["top_level_plans"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"top_level_plans">
					cardinality = <|>=1|>
					type_def = <
						type = <"UID_BASED_ID">
						container_type = <"List">
					>
				>
				["context"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"context">
					type = <"PLAN_DATA_CONTEXT">
				>
			>
			source_schema_id = <"openehr_proc_task_planning_1.0.0">
			uid = <728>
		>
		["TASK_PLAN"] = <
			name = <"TASK_PLAN">
			ancestors = <"CONTENT_ITEM", ...>
			properties = <
				["subject"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"subject">
					type = <"PARTY_PROXY">
				>
				["description"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"description">
					type = <"DV_TEXT">
					is_mandatory = <True>
				>
				["guideline"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"guideline">
					type = <"DV_IDENTIFIER">
				>
				["best_practice_ref"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"best_practice_ref">
					type = <"DV_URI">
				>
				["definition"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"definition">
					type = <"TASK_GROUP">
					is_mandatory = <True>
				>
				["principal_performer"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"principal_performer">
					type = <"TASK_PARTICIPATION">
				>
				["order_set_type"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"order_set_type">
					type = <"DV_IDENTIFIER">
				>
				["order_set_id"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"order_set_id">
					type = <"DV_IDENTIFIER">
				>
				["due_time"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"due_time">
					type = <"IDuration">
				>
				["expiry_time"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"expiry_time">
					type = <"IDuration">
				>
				["indications"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"indications">
					cardinality = <|>=0|>
					type_def = <
						type = <"DV_TEXT">
						container_type = <"List">
					>
				>
				["execution_history"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"execution_history">
					type = <"TASK_PLAN_EXECUTION_HISTORY">
					is_im_runtime = <True>
				>
			>
			source_schema_id = <"openehr_proc_task_planning_1.0.0">
			uid = <729>
		>
		["PLAN_CALENDAR"] = <
			name = <"PLAN_CALENDAR">
			properties = <
				["entries"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"entries">
					cardinality = <|>=0|>
					type_def = <
						type = <"CALENDAR_ENTRY">
						container_type = <"List">
					>
				>
			>
			source_schema_id = <"openehr_proc_task_planning_1.0.0">
			uid = <730>
		>
		["CALENDAR_ENTRY"] = <
			name = <"CALENDAR_ENTRY">
			source_schema_id = <"openehr_proc_task_planning_1.0.0">
			uid = <731>
		>
		["PLAN_TIMELINE"] = <
			name = <"PLAN_TIMELINE">
			properties = <
				["planned_items"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"planned_items">
					cardinality = <|>=0|>
					type_def = <
						type = <"PLAN_ITEM">
						container_type = <"List">
					>
				>
				["timers"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"timers">
					cardinality = <|>=0|>
					type_def = <
						type = <"TIMER_WAIT">
						container_type = <"List">
					>
				>
			>
			source_schema_id = <"openehr_proc_task_planning_1.0.0">
			uid = <732>
		>
		["TASK_PARTICIPATION"] = <
			name = <"TASK_PARTICIPATION">
			properties = <
				["function"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"function">
					type = <"DV_TEXT">
				>
				["role"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"role">
					cardinality = <|>=0|>
					type_def = <
						type = <"DV_TEXT">
						container_type = <"List">
					>
				>
				["mode"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"mode">
					type = <"DV_CODED_TEXT">
				>
				["performer"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"performer">
					type = <"PARTY_PROXY">
				>
				["optionality"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"optionality">
					type = <"VALIDITY_KIND">
				>
			>
			source_schema_id = <"openehr_proc_task_planning_1.0.0">
			uid = <733>
		>
		["PLAN_ITEM"] = <
			name = <"PLAN_ITEM">
			ancestors = <"LOCATABLE", ...>
			properties = <
				["description"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"description">
					type = <"DV_TEXT">
					is_mandatory = <True>
				>
				["repeat_spec"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"repeat_spec">
					type = <"TASK_REPEAT">
				>
				["other_details"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"other_details">
					type = <"ITEM_STRUCTURE">
				>
				["wait_spec"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"wait_spec">
					type = <"TASK_WAIT">
				>
				["review_dataset"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"review_dataset">
					cardinality = <|>=0|>
					type_def = <
						type = <"DATASET_SPEC">
						container_type = <"List">
					>
				>
			>
			source_schema_id = <"openehr_proc_task_planning_1.0.0">
			is_abstract = <True>
			uid = <734>
		>
		["TASK_REPEAT"] = <
			name = <"TASK_REPEAT">
			properties = <
				["repeats"] = (P_BMM_GENERIC_PROPERTY) <
					name = <"repeats">
					type_def = <
						root_type = <"Interval">
						generic_parameters = <"Integer", ...>
					>
				>
				["terminate_condition"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"terminate_condition">
					type = <"PLAN_EVENT">
				>
			>
			source_schema_id = <"openehr_proc_task_planning_1.0.0">
			uid = <735>
		>
		["TASK_GROUP"] = <
			name = <"TASK_GROUP">
			ancestors = <"PLAN_ITEM", ...>
			properties = <
				["execution_type"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"execution_type">
					type = <"EXECUTION_TYPE">
				>
				["members"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"members">
					cardinality = <|>=0|>
					type_def = <
						type = <"PLAN_ITEM">
						container_type = <"List">
					>
				>
				["training_level"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"training_level">
					type = <"Integer">
				>
			>
			source_schema_id = <"openehr_proc_task_planning_1.0.0">
			uid = <736>
		>
		["EXECUTION_TYPE"] = (P_BMM_ENUMERATION_INTEGER) <
			name = <"EXECUTION_TYPE">
			ancestors = <"Integer", ...>
			source_schema_id = <"openehr_proc_task_planning_1.0.0">
			item_names = <"sequential", "parallel">
			uid = <737>
		>
		["TASK"] = <
			name = <"TASK">
			generic_parameter_defs = <
				["T"] = <
					name = <"T">
					conforms_to_type = <"TASK_ACTION">
				>
			>
			ancestors = <"PLAN_ITEM", ...>
			properties = <
				["action"] = (P_BMM_SINGLE_PROPERTY_OPEN) <
					name = <"action">
					type = <"T">
				>
			>
			source_schema_id = <"openehr_proc_task_planning_1.0.0">
			is_abstract = <True>
			uid = <738>
		>
		["DISPATCHABLE_TASK"] = <
			name = <"DISPATCHABLE_TASK">
			generic_parameter_defs = <
				["T"] = <
					name = <"T">
					conforms_to_type = <"DISPATCHABLE_ACTION">
				>
			>
			ancestors = <"TASK", ...>
			properties = <
				["wait"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"wait">
					type = <"Boolean">
					is_mandatory = <True>
				>
				["callback"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"callback">
					type = <"CALLBACK_WAIT">
				>
			>
			source_schema_id = <"openehr_proc_task_planning_1.0.0">
			uid = <739>
		>
		["PERFORMABLE_TASK"] = <
			name = <"PERFORMABLE_TASK">
			generic_parameter_defs = <
				["T"] = <
					name = <"T">
					conforms_to_type = <"PERFORMABLE_ACTION">
				>
			>
			ancestors = <"TASK", ...>
			properties = <
				["capture_dataset"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"capture_dataset">
					cardinality = <|>=0|>
					type_def = <
						type = <"DATASET_SPEC">
						container_type = <"List">
					>
				>
			>
			source_schema_id = <"openehr_proc_task_planning_1.0.0">
			uid = <740>
		>
		["TASK_ACTION"] = <
			name = <"TASK_ACTION">
			ancestors = <"LOCATABLE", ...>
			properties = <
				["subject_preconditions"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"subject_preconditions">
					cardinality = <|>=0|>
					type_def = <
						type = <"SUBJECT_PRECONDITION">
						container_type = <"List">
					>
				>
				["costing_data"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"costing_data">
					type = <"TASK_COSTING">
				>
				["instruction_activity"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"instruction_activity">
					type = <"LOCATABLE_REF">
				>
			>
			source_schema_id = <"openehr_proc_task_planning_1.0.0">
			is_abstract = <True>
			uid = <741>
		>
		["DISPATCHABLE_ACTION"] = <
			name = <"DISPATCHABLE_ACTION">
			ancestors = <"TASK_ACTION", ...>
			source_schema_id = <"openehr_proc_task_planning_1.0.0">
			is_abstract = <True>
			uid = <742>
		>
		["PERFORMABLE_ACTION"] = <
			name = <"PERFORMABLE_ACTION">
			ancestors = <"TASK_ACTION", ...>
			properties = <
				["other_participations"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"other_participation">
					cardinality = <|>=0|>
					type_def = <
						type = <"TASK_PARTICIPATION">
						container_type = <"List">
					>
				>
				["resources"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"resources">
					cardinality = <|>=0|>
					type_def = <
						type = <"RESOURCE_PARTICIPATION">
						container_type = <"List">
					>
				>
			>
			source_schema_id = <"openehr_proc_task_planning_1.0.0">
			is_abstract = <True>
			uid = <743>
		>
		["RESOURCE_PARTICIPATION"] = <
			name = <"RESOURCE_PARTICIPATION">
			properties = <
				["resource_type"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"resource_type">
					type = <"DV_TEXT">
					is_mandatory = <True>
				>
				["external_ref"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"external_ref">
					type = <"LOCATABLE_REF">
				>
			>
			source_schema_id = <"openehr_proc_task_planning_1.0.0">
			uid = <744>
		>
		["SUBJECT_PRECONDITION"] = <
			name = <"SUBJECT_PRECONDITION">
			properties = <
				["description"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"description">
					type = <"DV_TEXT">
					is_mandatory = <True>
				>
				["expression"] = (P_BMM_GENERIC_PROPERTY) <
					name = <"expression">
					type_def = <
						root_type = <"CONTEXT_EXPRESSION">
						generic_parameters = <"TYPE_DEF_BOOLEAN", ...>
					>
				>
			>
			source_schema_id = <"openehr_proc_task_planning_1.0.0">
			uid = <745>
		>
		["EXTERNAL_REQUEST"] = <
			name = <"EXTERNAL_REQUEST">
			ancestors = <"DISPATCHABLE_ACTION", ...>
			properties = <
				["organisation_name"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"organisation_name">
					type = <"PARTY_PROXY">
					is_mandatory = <True>
				>
				["request_id"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"request_id">
					type = <"String">
					is_mandatory = <True>
				>
				["other_details"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"other_details">
					type = <"ITEM_STRUCTURE">
				>
			>
			source_schema_id = <"openehr_proc_task_planning_1.0.0">
			uid = <746>
		>
		["DEFINED_ACTION"] = <
			name = <"DEFINED_ACTION">
			ancestors = <"PERFORMABLE_ACTION", ...>
			properties = <
				["prototype"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"prototype">
					cardinality = <|>=0|>
					type_def = <
						type = <"ENTRY">
						container_type = <"List">
					>
				>
				["optionality"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"optionality">
					type = <"VALIDITY_KIND">
				>
			>
			source_schema_id = <"openehr_proc_task_planning_1.0.0">
			uid = <747>
		>
		["SYSTEM_REQUEST"] = <
			name = <"SYSTEM_REQUEST">
			ancestors = <"DISPATCHABLE_ACTION", ...>
			properties = <
				["system_call"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"system_call">
					type = <"SYSTEM_CALL">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_proc_task_planning_1.0.0">
			uid = <748>
		>
		["DATASET_SPEC"] = <
			name = <"DATASET_SPEC">
			ancestors = <"LOCATABLE", ...>
			properties = <
				["other_details"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"other_details">
					type = <"ITEM_STRUCTURE">
				>
				["form_id"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"form_id">
					type = <"String">
				>
				["template_id"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"template_id">
					type = <"String">
				>
			>
			source_schema_id = <"openehr_proc_task_planning_1.0.0">
			uid = <749>
		>
		["LINKED_PLAN"] = <
			name = <"LINKED_PLAN">
			properties = <
				["target"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"target">
					type = <"UID_BASED_ID">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_proc_task_planning_1.0.0">
			is_abstract = <True>
			uid = <750>
		>
		["HAND_OFF"] = <
			name = <"HAND_OFF">
			ancestors = <"LINKED_PLAN", "DISPATCHABLE_ACTION">
			source_schema_id = <"openehr_proc_task_planning_1.0.0">
			uid = <751>
		>
		["SUB_PLAN"] = <
			name = <"SUB_PLAN">
			ancestors = <"LINKED_PLAN", "PERFORMABLE_ACTION">
			source_schema_id = <"openehr_proc_task_planning_1.0.0">
			uid = <752>
		>
		["TASK_COSTING"] = <
			name = <"TASK_COSTING">
			source_schema_id = <"openehr_proc_task_planning_1.0.0">
			uid = <753>
		>
		["CHOICE_GROUP"] = <
			name = <"CHOICE_GROUP">
			ancestors = <"TASK_GROUP", ...>
			properties = <
				["override_type"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"override_type">
					type = <"OVERRIDE_TYPE">
				>
				["members"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"members">
					cardinality = <|>=0|>
					type_def = <
						type = <"CHOICE_BRANCH">
						container_type = <"List">
					>
				>
			>
			source_schema_id = <"openehr_proc_task_planning_1.0.0">
			uid = <754>
		>
		["OVERRIDE_TYPE"] = (P_BMM_ENUMERATION_INTEGER) <
			name = <"OVERRIDE_TYPE">
			ancestors = <"Integer", ...>
			source_schema_id = <"openehr_proc_task_planning_1.0.0">
			item_names = <"allowed", "allowed_with_reason", "prohibited">
			uid = <755>
		>
		["CHOICE_BRANCH"] = <
			name = <"CHOICE_BRANCH">
			ancestors = <"TASK_GROUP", ...>
			source_schema_id = <"openehr_proc_task_planning_1.0.0">
			uid = <756>
		>
		["ADHOC_GROUP"] = <
			name = <"ADHOC_GROUP">
			ancestors = <"CHOICE_GROUP", ...>
			source_schema_id = <"openehr_proc_task_planning_1.0.0">
			uid = <757>
		>
		["ADHOC_BRANCH"] = <
			name = <"ADHOC_BRANCH">
			ancestors = <"CHOICE_BRANCH", ...>
			source_schema_id = <"openehr_proc_task_planning_1.0.0">
			uid = <758>
		>
		["CONDITION_GROUP"] = <
			name = <"CONDITION_GROUP">
			ancestors = <"CHOICE_GROUP", ...>
			properties = <
				["members"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"members">
					cardinality = <|>=0|>
					type_def = <
						type = <"CONDITION_BRANCH">
						container_type = <"List">
					>
				>
			>
			source_schema_id = <"openehr_proc_task_planning_1.0.0">
			uid = <759>
		>
		["CONDITION_BRANCH"] = <
			name = <"CONDITION_BRANCH">
			ancestors = <"CHOICE_BRANCH", ...>
			properties = <
				["test"] = (P_BMM_GENERIC_PROPERTY) <
					name = <"test">
					type_def = <
						root_type = <"CONTEXT_EXPRESSION">
						generic_parameters = <"TYPE_DEF_BOOLEAN", ...>
					>
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_proc_task_planning_1.0.0">
			uid = <760>
		>
		["DECISION_GROUP"] = <
			name = <"DECISION_GROUP">
			ancestors = <"CHOICE_GROUP", ...>
			properties = <
				["test"] = (P_BMM_GENERIC_PROPERTY) <
					name = <"test">
					type_def = <
						root_type = <"CONTEXT_EXPRESSION">
						generic_parameters = <"EXPR_TYPE_DEF", ...>
					>
					is_mandatory = <True>
				>
				["members"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"members">
					cardinality = <|>=0|>
					type_def = <
						type = <"DECISION_BRANCH">
						container_type = <"List">
					>
				>
			>
			source_schema_id = <"openehr_proc_task_planning_1.0.0">
			uid = <761>
		>
		["DECISION_BRANCH"] = <
			name = <"DECISION_BRANCH">
			ancestors = <"CHOICE_BRANCH", ...>
			properties = <
				["value_constraint"] = (P_BMM_GENERIC_PROPERTY) <
					name = <"value_constraint">
					type_def = <
						root_type = <"CONTEXT_EXPRESSION">
						generic_parameters = <"TYPE_DEF_BOOLEAN", ...>
					>
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_proc_task_planning_1.0.0">
			uid = <762>
		>
		["EVENT_GROUP"] = <
			name = <"EVENT_GROUP">
			ancestors = <"CHOICE_GROUP", ...>
			properties = <
				["timeout"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"timeout">
					type = <"TIMER_WAIT">
				>
				["members"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"members">
					cardinality = <|>=0|>
					type_def = <
						type = <"EVENT_BRANCH">
						container_type = <"List">
					>
				>
			>
			source_schema_id = <"openehr_proc_task_planning_1.0.0">
			uid = <763>
		>
		["EVENT_BRANCH"] = <
			name = <"EVENT_BRANCH">
			ancestors = <"CHOICE_BRANCH", ...>
			source_schema_id = <"openehr_proc_task_planning_1.0.0">
			uid = <764>
		>
		["TASK_WAIT"] = <
			name = <"TASK_WAIT">
			properties = <
				["wait_spec"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"wait_spec">
					type = <"TEMPORAL_RELATION">
				>
				["timeout"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"timeout">
					type = <"TIMER_WAIT">
				>
				["start_window"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"start_window">
					type = <"REMINDER">
				>
				["events"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"events">
					cardinality = <|>=0|>
					type_def = <
						type = <"PLAN_EVENT">
						container_type = <"List">
					>
				>
				["event_relation"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"event_relation">
					type = <"TEMPORAL_RELATION">
				>
			>
			source_schema_id = <"openehr_proc_task_planning_1.0.0">
			uid = <765>
		>
		["PLAN_EVENT"] = <
			name = <"PLAN_EVENT">
			ancestors = <"LOCATABLE", ...>
			properties = <
				["other_details"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"other_details">
					type = <"ITEM_STRUCTURE">
				>
			>
			source_schema_id = <"openehr_proc_task_planning_1.0.0">
			is_abstract = <True>
			uid = <766>
		>
		["TIMELINE_MOMENT"] = <
			name = <"TIMELINE_MOMENT">
			ancestors = <"PLAN_EVENT", ...>
			properties = <
				["timeline_offset"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"timeline_offset">
					type = <"IDuration">
				>
				["fixed_time"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"fixed_time">
					type = <"TIME_SPECIFIER">
				>
			>
			source_schema_id = <"openehr_proc_task_planning_1.0.0">
			uid = <767>
		>
		["SYSTEM_NOTIFICATION"] = <
			name = <"SYSTEM_NOTIFICATION">
			ancestors = <"PLAN_EVENT", ...>
			properties = <
				["system_id"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"system_id">
					type = <"String">
					is_mandatory = <True>
				>
				["notification_type"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"notification_type">
					type = <"String">
				>
				["reference_id"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"reference_id">
					type = <"String">
				>
			>
			source_schema_id = <"openehr_proc_task_planning_1.0.0">
			uid = <768>
		>
		["CALLBACK_NOTIFICATION"] = <
			name = <"CALLBACK_NOTIFICATION">
			ancestors = <"PLAN_EVENT", ...>
			properties = <
				["task_id"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"task_id">
					type = <"UID_BASED_ID">
					is_mandatory = <True>
				>
				["request_id"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"request_id">
					type = <"String">
				>
			>
			source_schema_id = <"openehr_proc_task_planning_1.0.0">
			uid = <769>
		>
		["MANUAL_NOTIFICATION"] = <
			name = <"MANUAL_NOTIFICATION">
			ancestors = <"PLAN_EVENT", ...>
			properties = <
				["description"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"description">
					type = <"String">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_proc_task_planning_1.0.0">
			uid = <770>
		>
		["TASK_TRANSITION"] = <
			name = <"TASK_TRANSITION">
			ancestors = <"PLAN_EVENT", ...>
			properties = <
				["task_id"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"task_id">
					type = <"UID_BASED_ID">
					is_mandatory = <True>
				>
				["transitions"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"transitions">
					cardinality = <|>=1|>
					type_def = <
						type = <"TASK_LIFECYCLE">
						container_type = <"List">
					>
				>
			>
			source_schema_id = <"openehr_proc_task_planning_1.0.0">
			uid = <771>
		>
		["EVENT_WAIT"] = <
			name = <"EVENT_WAIT">
			generic_parameter_defs = <
				["T"] = <
					name = <"T">
					conforms_to_type = <"PLAN_EVENT">
				>
			>
			properties = <
				["event"] = (P_BMM_SINGLE_PROPERTY_OPEN) <
					name = <"event">
					type = <"T">
					is_mandatory = <True>
				>
				["timeout"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"timeout">
					type = <"TIMER_WAIT">
				>
				["success_action"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"success_action">
					type = <"EVENT_ACTION">
				>
			>
			source_schema_id = <"openehr_proc_task_planning_1.0.0">
			uid = <772>
		>
		["DELAY_EVENT"] = <
			name = <"DELAY_EVENT">
			ancestors = <"PLAN_EVENT", ...>
			properties = <
				["delay"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"delay">
					type = <"IDuration">
					is_mandatory = <True>
				>
				["source"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"source">
					type = <"UID_BASED_ID">
				>
			>
			source_schema_id = <"openehr_proc_task_planning_1.0.0">
			uid = <773>
		>
		["STATE_TRIGGER"] = <
			name = <"STATE_TRIGGER">
			ancestors = <"PLAN_EVENT", ...>
			properties = <
				["expression"] = (P_BMM_GENERIC_PROPERTY) <
					name = <"expression">
					type_def = <
						root_type = <"CONTEXT_EXPRESSION">
						generic_parameters = <"TYPE_DEF_BOOLEAN", ...>
					>
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_proc_task_planning_1.0.0">
			uid = <774>
		>
		["TIMER_EVENT"] = <
			name = <"TIMER_EVENT">
			ancestors = <"PLAN_EVENT", ...>
			properties = <
				["duration"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"duration">
					type = <"IDuration">
					is_mandatory = <True>
				>
				["purpose"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"purpose">
					type = <"String">
				>
			>
			source_schema_id = <"openehr_proc_task_planning_1.0.0">
			uid = <775>
		>
		["REMINDER"] = <
			name = <"REMINDER">
			ancestors = <"TIMER_WAIT", ...>
			source_schema_id = <"openehr_proc_task_planning_1.0.0">
			uid = <776>
		>
		["TIMER_WAIT"] = <
			name = <"TIMER_WAIT">
			ancestor_defs = <
				["1"] = <
					root_type = <"EVENT_WAIT">
					generic_parameters = <"TIMER_EVENT", ...>
				>
			>
			source_schema_id = <"openehr_proc_task_planning_1.0.0">
			uid = <777>
		>
		["CALLBACK_WAIT"] = <
			name = <"CALLBACK_WAIT">
			ancestor_defs = <
				["1"] = <
					root_type = <"EVENT_WAIT">
					generic_parameters = <"CALLBACK_NOTIFICATION", ...>
				>
			>
			properties = <
				["fail_action"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"fail_action">
					type = <"EVENT_ACTION">
				>
			>
			source_schema_id = <"openehr_proc_task_planning_1.0.0">
			uid = <778>
		>
		["EVENT_ACTION"] = <
			name = <"EVENT_ACTION">
			properties = <
				["system_call"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"system_call">
					cardinality = <|>=0|>
					type_def = <
						type = <"SYSTEM_CALL">
						container_type = <"List">
					>
				>
				["resume_action"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"resume_action">
					type = <"RESUME_ACTION">
				>
				["message"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"message">
					type = <"DV_TEXT">
				>
			>
			source_schema_id = <"openehr_proc_task_planning_1.0.0">
			uid = <779>
		>
		["CALENDAR_EVENT"] = <
			name = <"CALENDAR_EVENT">
			ancestors = <"PLAN_EVENT", ...>
			properties = <
				["entry_id"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"entry_id">
					type = <"UID_BASED_ID">
				>
				["time"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"time">
					type = <"IDate_time">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_proc_task_planning_1.0.0">
			uid = <780>
		>
		["RESUME_ACTION"] = <
			name = <"RESUME_ACTION">
			properties = <
				["resume_type"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"resume_type">
					type = <"RESUME_TYPE">
					is_mandatory = <True>
				>
				["resume_location"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"resume_location">
					type = <"UID_BASED_ID">
				>
			>
			source_schema_id = <"openehr_proc_task_planning_1.0.0">
			uid = <781>
		>
		["TIME_SPECIFIER"] = <
			name = <"TIME_SPECIFIER">
			source_schema_id = <"openehr_proc_task_planning_1.0.0">
			is_abstract = <True>
			uid = <782>
		>
		["CLOCK_TIME"] = <
			name = <"CLOCK_TIME">
			ancestors = <"TIME_SPECIFIER", ...>
			properties = <
				["time"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"time">
					type = <"ITime">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_proc_task_planning_1.0.0">
			uid = <783>
		>
		["CALENDAR_TIME"] = <
			name = <"CALENDAR_TIME">
			ancestors = <"TIME_SPECIFIER", ...>
			properties = <
				["time"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"time">
					type = <"IDate_time">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_proc_task_planning_1.0.0">
			uid = <784>
		>
		["CUSTOMARY_TIME"] = <
			name = <"CUSTOMARY_TIME">
			ancestors = <"TIME_SPECIFIER", ...>
			properties = <
				["time"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"time">
					type = <"DV_CODED_TEXT">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_proc_task_planning_1.0.0">
			uid = <785>
		>
		["TASK_PLAN_EXECUTION_HISTORY"] = <
			name = <"TASK_PLAN_EXECUTION_HISTORY">
			source_schema_id = <"openehr_proc_task_planning_1.0.0">
			uid = <786>
		>
		["EHR"] = <
			name = <"EHR">
			properties = <
				["system_id"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"system_id">
					type = <"String">
					is_mandatory = <True>
				>
				["ehr_id"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"ehr_id">
					type = <"HIER_OBJECT_ID">
					is_mandatory = <True>
				>
				["time_created"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"time_created">
					type = <"DV_DATE_TIME">
					is_mandatory = <True>
				>
				["ehr_access"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"ehr_access">
					type = <"OBJECT_REF">
					is_mandatory = <True>
				>
				["ehr_status"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"ehr_status">
					type = <"OBJECT_REF">
					is_mandatory = <True>
				>
				["directory"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"directory">
					type = <"OBJECT_REF">
				>
				["compositions"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"compositions">
					cardinality = <|>=0|>
					type_def = <
						type = <"OBJECT_REF">
						container_type = <"List">
					>
					is_mandatory = <True>
				>
				["contributions"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"contributions">
					cardinality = <|>=0|>
					type_def = <
						type = <"OBJECT_REF">
						container_type = <"List">
					>
					is_mandatory = <True>
				>
				["most_recent_composition"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"most_recent_composition">
					type = <"COMPOSITION">
					is_computed = <True>
				>
			>
			source_schema_id = <"openehr_rm_ehr_1.0.4">
			uid = <832>
		>
		["EHR_ACCESS"] = <
			name = <"EHR_ACCESS">
			ancestors = <"LOCATABLE", ...>
			properties = <
				["settings"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"settings">
					type = <"ACCESS_CONTROL_SETTINGS">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_rm_ehr_1.0.4">
			uid = <833>
		>
		["ACCESS_CONTROL_SETTINGS"] = <
			name = <"ACCESS_CONTROL_SETTINGS">
			ancestors = <"Any", ...>
			source_schema_id = <"openehr_rm_ehr_1.0.4">
			is_abstract = <True>
			uid = <834>
		>
		["EHR_STATUS"] = <
			name = <"EHR_STATUS">
			ancestors = <"LOCATABLE", ...>
			properties = <
				["subject"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"subject">
					type = <"PARTY_SELF">
					is_mandatory = <True>
				>
				["is_queryable"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"is_queryable">
					type = <"Boolean">
					is_mandatory = <True>
				>
				["is_modifiable"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"is_modifiable">
					type = <"Boolean">
					is_mandatory = <True>
				>
				["other_details"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"other_details">
					type = <"ITEM_STRUCTURE">
				>
			>
			source_schema_id = <"openehr_rm_ehr_1.0.4">
			uid = <835>
		>
		["COMPOSITION"] = <
			name = <"COMPOSITION">
			ancestors = <"LOCATABLE", ...>
			properties = <
				["language"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"language">
					type = <"CODE_PHRASE">
					is_mandatory = <True>
				>
				["territory"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"territory">
					type = <"CODE_PHRASE">
					is_mandatory = <True>
				>
				["category"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"category">
					type = <"DV_CODED_TEXT">
					is_mandatory = <True>
				>
				["composer"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"composer">
					type = <"PARTY_PROXY">
					is_mandatory = <True>
				>
				["context"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"context">
					type = <"EVENT_CONTEXT">
				>
				["content"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"content">
					cardinality = <|>=0|>
					type_def = <
						type = <"CONTENT_ITEM">
						container_type = <"List">
					>
				>
			>
			source_schema_id = <"openehr_rm_ehr_1.0.4">
			uid = <836>
		>
		["EVENT_CONTEXT"] = <
			name = <"EVENT_CONTEXT">
			ancestors = <"PATHABLE", ...>
			properties = <
				["health_care_facility"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"health_care_facility">
					type = <"PARTY_IDENTIFIED">
				>
				["start_time"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"start_time">
					type = <"DV_DATE_TIME">
					is_mandatory = <True>
				>
				["end_time"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"end_time">
					type = <"DV_DATE_TIME">
				>
				["participations"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"participations">
					cardinality = <|>=0|>
					type_def = <
						type = <"PARTICIPATION">
						container_type = <"List">
					>
				>
				["location"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"location">
					type = <"String">
				>
				["setting"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"setting">
					type = <"DV_CODED_TEXT">
					is_mandatory = <True>
				>
				["other_context"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"other_context">
					type = <"ITEM_STRUCTURE">
				>
			>
			source_schema_id = <"openehr_rm_ehr_1.0.4">
			uid = <837>
		>
		["CONTENT_ITEM"] = <
			name = <"CONTENT_ITEM">
			ancestors = <"LOCATABLE", ...>
			source_schema_id = <"openehr_rm_ehr_1.0.4">
			is_abstract = <True>
			uid = <838>
		>
		["SECTION"] = <
			name = <"SECTION">
			ancestors = <"CONTENT_ITEM", ...>
			properties = <
				["items"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"items">
					cardinality = <|>=0|>
					type_def = <
						type = <"CONTENT_ITEM">
						container_type = <"List">
					>
				>
			>
			source_schema_id = <"openehr_rm_ehr_1.0.4">
			uid = <839>
		>
		["ENTRY"] = <
			name = <"ENTRY">
			ancestors = <"CONTENT_ITEM", ...>
			properties = <
				["language"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"language">
					type = <"CODE_PHRASE">
					is_mandatory = <True>
					is_im_infrastructure = <True>
				>
				["encoding"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"encoding">
					type = <"CODE_PHRASE">
					is_mandatory = <True>
					is_im_infrastructure = <True>
				>
				["subject"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"subject">
					type = <"PARTY_PROXY">
					is_mandatory = <True>
				>
				["provider"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"provider">
					type = <"PARTY_PROXY">
				>
				["other_participations"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"other_participations">
					cardinality = <|>=0|>
					type_def = <
						type = <"PARTICIPATION">
						container_type = <"List">
					>
				>
				["workflow_id"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"workflow_id">
					type = <"OBJECT_REF">
					is_im_runtime = <True>
				>
			>
			source_schema_id = <"openehr_rm_ehr_1.0.4">
			is_abstract = <True>
			uid = <840>
		>
		["ADMIN_ENTRY"] = <
			name = <"ADMIN_ENTRY">
			ancestors = <"ENTRY", ...>
			properties = <
				["data"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"data">
					type = <"ITEM_STRUCTURE">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_rm_ehr_1.0.4">
			uid = <841>
		>
		["CARE_ENTRY"] = <
			documentation = <"Abstract ENTRY subtype corresponding to any type of ENTRY in the clinical care cycle.">
			name = <"CARE_ENTRY">
			ancestors = <"ENTRY", ...>
			properties = <
				["protocol"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"protocol">
					type = <"ITEM_STRUCTURE">
				>
				["guideline_id"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"guideline_id">
					type = <"OBJECT_REF">
					is_im_runtime = <True>
				>
			>
			source_schema_id = <"openehr_rm_ehr_1.0.4">
			is_abstract = <True>
			uid = <842>
		>
		["OBSERVATION"] = <
			documentation = <"ENTRY subtype used to represent observation information in time, as either a single or multiple samples.">
			name = <"OBSERVATION">
			ancestors = <"CARE_ENTRY", ...>
			properties = <
				["data"] = (P_BMM_GENERIC_PROPERTY) <
					documentation = <"Data of the observation, in the form of a HISTORY of EVENTs.">
					name = <"data">
					type_def = <
						root_type = <"HISTORY">
						generic_parameters = <"ITEM_STRUCTURE", ...>
					>
					is_mandatory = <True>
				>
				["state"] = (P_BMM_GENERIC_PROPERTY) <
					name = <"state">
					type_def = <
						root_type = <"HISTORY">
						generic_parameters = <"ITEM_STRUCTURE", ...>
					>
				>
			>
			source_schema_id = <"openehr_rm_ehr_1.0.4">
			uid = <843>
		>
		["EVALUATION"] = <
			name = <"EVALUATION">
			ancestors = <"CARE_ENTRY", ...>
			properties = <
				["data"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"data">
					type = <"ITEM_STRUCTURE">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_rm_ehr_1.0.4">
			uid = <844>
		>
		["INSTRUCTION"] = <
			name = <"INSTRUCTION">
			ancestors = <"CARE_ENTRY", ...>
			properties = <
				["narrative"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"narrative">
					type = <"DV_TEXT">
					is_mandatory = <True>
				>
				["expiry_time"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"expiry_time">
					type = <"DV_DATE_TIME">
				>
				["wf_definition"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"wf_definition">
					type = <"DV_PARSABLE">
					is_im_runtime = <True>
				>
				["activities"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"activities">
					cardinality = <|>=0|>
					type_def = <
						type = <"ACTIVITY">
						container_type = <"List">
					>
				>
			>
			source_schema_id = <"openehr_rm_ehr_1.0.4">
			uid = <845>
		>
		["ACTIVITY"] = <
			name = <"ACTIVITY">
			ancestors = <"LOCATABLE", ...>
			properties = <
				["description"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"description">
					type = <"ITEM_STRUCTURE">
					is_mandatory = <True>
				>
				["timing"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"timing">
					type = <"DV_PARSABLE">
					is_mandatory = <True>
				>
				["action_archetype_id"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"action_archetype_id">
					type = <"String">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_rm_ehr_1.0.4">
			uid = <846>
		>
		["ACTION"] = <
			name = <"ACTION">
			ancestors = <"CARE_ENTRY", ...>
			properties = <
				["time"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"time">
					type = <"DV_DATE_TIME">
					is_mandatory = <True>
					is_im_runtime = <True>
				>
				["description"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"description">
					type = <"ITEM_STRUCTURE">
					is_mandatory = <True>
				>
				["ism_transition"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"ism_transition">
					type = <"ISM_TRANSITION">
					is_mandatory = <True>
				>
				["instruction_details"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"instruction_details">
					type = <"INSTRUCTION_DETAILS">
				>
			>
			source_schema_id = <"openehr_rm_ehr_1.0.4">
			uid = <847>
		>
		["INSTRUCTION_DETAILS"] = <
			name = <"INSTRUCTION_DETAILS">
			ancestors = <"PATHABLE", ...>
			properties = <
				["instruction_id"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"instruction_id">
					type = <"LOCATABLE_REF">
					is_mandatory = <True>
					is_im_runtime = <True>
				>
				["wf_details"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"wf_details">
					type = <"ITEM_STRUCTURE">
					is_im_runtime = <True>
				>
				["activity_id"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"activity_id">
					type = <"String">
					is_mandatory = <True>
					is_im_runtime = <True>
				>
			>
			source_schema_id = <"openehr_rm_ehr_1.0.4">
			uid = <848>
		>
		["ISM_TRANSITION"] = <
			name = <"ISM_TRANSITION">
			ancestors = <"PATHABLE", ...>
			properties = <
				["current_state"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"current_state">
					type = <"DV_CODED_TEXT">
					is_mandatory = <True>
				>
				["transition"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"transition">
					type = <"DV_CODED_TEXT">
				>
				["careflow_step"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"careflow_step">
					type = <"DV_CODED_TEXT">
				>
			>
			source_schema_id = <"openehr_rm_ehr_1.0.4">
			uid = <849>
		>
		["GENERIC_ENTRY"] = <
			name = <"GENERIC_ENTRY">
			ancestors = <"CONTENT_ITEM", ...>
			properties = <
				["data"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"data">
					type = <"ITEM_TREE">
				>
			>
			source_schema_id = <"openehr_rm_ehr_1.0.4">
			uid = <850>
		>
		["DATA_STRUCTURE"] = <
			name = <"DATA_STRUCTURE">
			ancestors = <"LOCATABLE", ...>
			source_schema_id = <"openehr_rm_structures_1.0.4">
			is_abstract = <True>
			uid = <873>
		>
		["ITEM_STRUCTURE"] = <
			name = <"ITEM_STRUCTURE">
			ancestors = <"DATA_STRUCTURE", ...>
			source_schema_id = <"openehr_rm_structures_1.0.4">
			is_abstract = <True>
			uid = <874>
		>
		["ITEM_SINGLE"] = <
			name = <"ITEM_SINGLE">
			ancestors = <"ITEM_STRUCTURE", ...>
			properties = <
				["item"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"item">
					type = <"ELEMENT">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_rm_structures_1.0.4">
			uid = <875>
		>
		["ITEM_LIST"] = <
			name = <"ITEM_LIST">
			ancestors = <"ITEM_STRUCTURE", ...>
			properties = <
				["items"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"items">
					cardinality = <|>=0|>
					type_def = <
						type = <"ELEMENT">
						container_type = <"List">
					>
				>
			>
			source_schema_id = <"openehr_rm_structures_1.0.4">
			uid = <876>
		>
		["ITEM_TABLE"] = <
			name = <"ITEM_TABLE">
			ancestors = <"ITEM_STRUCTURE", ...>
			properties = <
				["rows"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"rows">
					cardinality = <|>=0|>
					type_def = <
						type = <"CLUSTER">
						container_type = <"List">
					>
				>
			>
			source_schema_id = <"openehr_rm_structures_1.0.4">
			uid = <877>
		>
		["ITEM_TREE"] = <
			name = <"ITEM_TREE">
			ancestors = <"ITEM_STRUCTURE", ...>
			properties = <
				["items"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"items">
					cardinality = <|>=0|>
					type_def = <
						type = <"ITEM">
						container_type = <"List">
					>
				>
			>
			source_schema_id = <"openehr_rm_structures_1.0.4">
			uid = <878>
		>
		["ITEM"] = <
			name = <"ITEM">
			ancestors = <"LOCATABLE", ...>
			source_schema_id = <"openehr_rm_structures_1.0.4">
			is_abstract = <True>
			uid = <879>
		>
		["CLUSTER"] = <
			name = <"CLUSTER">
			ancestors = <"ITEM", ...>
			properties = <
				["items"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"items">
					cardinality = <|>=1|>
					type_def = <
						type = <"ITEM">
						container_type = <"List">
					>
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_rm_structures_1.0.4">
			uid = <880>
		>
		["ELEMENT"] = <
			name = <"ELEMENT">
			ancestors = <"ITEM", ...>
			properties = <
				["null_flavour"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"null_flavour">
					type = <"DV_CODED_TEXT">
				>
				["value"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"value">
					type = <"DATA_VALUE">
				>
			>
			source_schema_id = <"openehr_rm_structures_1.0.4">
			uid = <881>
		>
		["HISTORY"] = <
			name = <"HISTORY">
			generic_parameter_defs = <
				["T"] = <
					name = <"T">
					conforms_to_type = <"ITEM_STRUCTURE">
				>
			>
			ancestors = <"DATA_STRUCTURE", ...>
			properties = <
				["origin"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"origin">
					type = <"DV_DATE_TIME">
					is_mandatory = <True>
					is_im_runtime = <True>
				>
				["period"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"period">
					type = <"DV_DURATION">
				>
				["duration"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"duration">
					type = <"DV_DURATION">
				>
				["summary"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"summary">
					type = <"ITEM_STRUCTURE">
				>
				["events"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"events">
					cardinality = <|>=0|>
					type_def = <
						type = <"EVENT">
						container_type = <"List">
					>
				>
			>
			source_schema_id = <"openehr_rm_structures_1.0.4">
			uid = <882>
		>
		["EVENT"] = <
			name = <"EVENT">
			generic_parameter_defs = <
				["T"] = <
					name = <"T">
					conforms_to_type = <"ITEM_STRUCTURE">
				>
			>
			ancestors = <"LOCATABLE", ...>
			properties = <
				["time"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"time">
					type = <"DV_DATE_TIME">
					is_mandatory = <True>
					is_im_runtime = <True>
				>
				["state"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"state">
					type = <"ITEM_STRUCTURE">
				>
				["data"] = (P_BMM_SINGLE_PROPERTY_OPEN) <
					name = <"data">
					type = <"T">
					is_mandatory = <True>
				>
				["offset"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"offset">
					type = <"DV_DURATION">
					is_computed = <True>
				>
			>
			source_schema_id = <"openehr_rm_structures_1.0.4">
			is_abstract = <True>
			uid = <883>
		>
		["POINT_EVENT"] = <
			name = <"POINT_EVENT">
			generic_parameter_defs = <
				["T"] = <
					name = <"T">
				>
			>
			ancestors = <"EVENT", ...>
			source_schema_id = <"openehr_rm_structures_1.0.4">
			uid = <884>
		>
		["INTERVAL_EVENT"] = <
			name = <"INTERVAL_EVENT">
			generic_parameter_defs = <
				["T"] = <
					name = <"T">
				>
			>
			ancestors = <"EVENT", ...>
			properties = <
				["width"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"width">
					type = <"DV_DURATION">
					is_mandatory = <True>
				>
				["sample_count"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"sample_count">
					type = <"Integer">
					is_im_runtime = <True>
				>
				["math_function"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"math_function">
					type = <"DV_CODED_TEXT">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_rm_structures_1.0.4">
			uid = <885>
		>
		["REVISION_HISTORY"] = <
			name = <"REVISION_HISTORY">
			ancestors = <"Any", ...>
			properties = <
				["items"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"items">
					cardinality = <|>=0|>
					type_def = <
						type = <"REVISION_HISTORY_ITEM">
						container_type = <"List">
					>
				>
			>
			source_schema_id = <"openehr_rm_structures_1.0.4">
			uid = <886>
		>
		["REVISION_HISTORY_ITEM"] = <
			name = <"REVISION_HISTORY_ITEM">
			ancestors = <"Any", ...>
			properties = <
				["version_id"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"version_id">
					type = <"OBJECT_VERSION_ID">
					is_mandatory = <True>
				>
				["audits"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"audits">
					cardinality = <|>=1|>
					type_def = <
						type = <"AUDIT_DETAILS">
						container_type = <"List">
					>
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_rm_structures_1.0.4">
			uid = <887>
		>
		["AUDIT_DETAILS"] = <
			name = <"AUDIT_DETAILS">
			ancestors = <"Any", ...>
			properties = <
				["system_id"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"system_id">
					type = <"String">
					is_mandatory = <True>
				>
				["time_committed"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"time_committed">
					type = <"DV_DATE_TIME">
					is_mandatory = <True>
				>
				["change_type"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"change_type">
					type = <"DV_CODED_TEXT">
					is_mandatory = <True>
				>
				["description"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"description">
					type = <"DV_TEXT">
				>
				["committer"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"committer">
					type = <"PARTY_PROXY">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_rm_structures_1.0.4">
			uid = <888>
		>
		["ATTESTATION"] = <
			name = <"ATTESTATION">
			ancestors = <"AUDIT_DETAILS", ...>
			properties = <
				["attested_view"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"attested_view">
					type = <"DV_MULTIMEDIA">
				>
				["proof"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"proof">
					type = <"String">
				>
				["items"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"items">
					cardinality = <|>=0|>
					type_def = <
						type = <"DV_EHR_URI">
						container_type = <"Set">
					>
				>
				["reason"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"reason">
					type = <"DV_TEXT">
				>
				["is_pending"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"is_pending">
					type = <"Boolean">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_rm_structures_1.0.4">
			uid = <889>
		>
		["PARTICIPATION"] = <
			name = <"PARTICIPATION">
			ancestors = <"Any", ...>
			properties = <
				["function"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"function">
					type = <"DV_TEXT">
					is_mandatory = <True>
				>
				["time"] = (P_BMM_GENERIC_PROPERTY) <
					name = <"time">
					type_def = <
						root_type = <"DV_INTERVAL">
						generic_parameters = <"DV_DATE_TIME", ...>
					>
					is_im_runtime = <True>
				>
				["mode"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"mode">
					type = <"DV_CODED_TEXT">
				>
				["performer"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"performer">
					type = <"PARTY_PROXY">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_rm_structures_1.0.4">
			uid = <890>
		>
		["PARTY_PROXY"] = <
			name = <"PARTY_PROXY">
			ancestors = <"Any", ...>
			properties = <
				["external_ref"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"external_ref">
					type = <"PARTY_REF">
					is_im_infrastructure = <True>
				>
			>
			source_schema_id = <"openehr_rm_structures_1.0.4">
			is_abstract = <True>
			uid = <891>
		>
		["PARTY_IDENTIFIED"] = <
			name = <"PARTY_IDENTIFIED">
			ancestors = <"PARTY_PROXY", ...>
			properties = <
				["name"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"name">
					type = <"String">
				>
				["identifiers"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"identifiers">
					cardinality = <|>=0|>
					type_def = <
						type = <"DV_IDENTIFIER">
						container_type = <"List">
					>
					is_im_runtime = <True>
				>
			>
			source_schema_id = <"openehr_rm_structures_1.0.4">
			uid = <892>
		>
		["PARTY_RELATED"] = <
			name = <"PARTY_RELATED">
			ancestors = <"PARTY_IDENTIFIED", ...>
			properties = <
				["relationship"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"relationship">
					type = <"DV_CODED_TEXT">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_rm_structures_1.0.4">
			uid = <893>
		>
		["PARTY_SELF"] = <
			name = <"PARTY_SELF">
			ancestors = <"PARTY_PROXY", ...>
			source_schema_id = <"openehr_rm_structures_1.0.4">
			uid = <894>
		>
		["PATHABLE"] = <
			name = <"PATHABLE">
			ancestors = <"Any", ...>
			source_schema_id = <"openehr_rm_structures_1.0.4">
			is_abstract = <True>
			uid = <895>
		>
		["LOCATABLE"] = <
			name = <"LOCATABLE">
			ancestors = <"PATHABLE", ...>
			properties = <
				["uid"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"uid">
					type = <"UID_BASED_ID">
					is_im_infrastructure = <True>
				>
				["archetype_node_id"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"archetype_node_id">
					type = <"String">
					is_mandatory = <True>
					is_im_infrastructure = <True>
				>
				["name"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"name">
					type = <"DV_TEXT">
					is_mandatory = <True>
				>
				["archetype_details"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"archetype_details">
					type = <"ARCHETYPED">
					is_im_infrastructure = <True>
				>
				["feeder_audit"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"feeder_audit">
					type = <"FEEDER_AUDIT">
					is_im_runtime = <True>
				>
				["links"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"links">
					cardinality = <|>=0|>
					type_def = <
						type = <"LINK">
						container_type = <"List">
					>
				>
			>
			source_schema_id = <"openehr_rm_structures_1.0.4">
			is_abstract = <True>
			uid = <896>
		>
		["LINK"] = <
			name = <"LINK">
			ancestors = <"Any", ...>
			properties = <
				["meaning"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"meaning">
					type = <"DV_TEXT">
					is_mandatory = <True>
				>
				["type"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"type">
					type = <"DV_TEXT">
					is_mandatory = <True>
				>
				["target"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"target">
					type = <"DV_EHR_URI">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_rm_structures_1.0.4">
			uid = <897>
		>
		["ARCHETYPED"] = <
			name = <"ARCHETYPED">
			ancestors = <"Any", ...>
			properties = <
				["archetype_id"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"archetype_id">
					type = <"ARCHETYPE_ID">
					is_mandatory = <True>
					is_im_infrastructure = <True>
				>
				["template_id"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"template_id">
					type = <"TEMPLATE_ID">
					is_im_infrastructure = <True>
				>
				["rm_version"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"rm_version">
					type = <"String">
					is_mandatory = <True>
					is_im_infrastructure = <True>
				>
			>
			source_schema_id = <"openehr_rm_structures_1.0.4">
			uid = <898>
		>
		["FEEDER_AUDIT"] = <
			name = <"FEEDER_AUDIT">
			ancestors = <"Any", ...>
			properties = <
				["originating_system_ids"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"originating_system_ids">
					cardinality = <|>=0|>
					type_def = <
						type = <"DV_IDENTIFIER">
						container_type = <"List">
					>
					is_im_runtime = <True>
				>
				["feeder_system_item_ids"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"feeder_system_item_ids">
					cardinality = <|>=0|>
					type_def = <
						type = <"DV_IDENTIFIER">
						container_type = <"List">
					>
					is_im_runtime = <True>
				>
				["original_content"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"original_content">
					type = <"DV_ENCAPSULATED">
					is_im_runtime = <True>
				>
				["originating_system_audit"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"originating_system_audit">
					type = <"FEEDER_AUDIT_DETAILS">
					is_mandatory = <True>
					is_im_runtime = <True>
				>
				["feeder_system_audit"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"feeder_system_audit">
					type = <"FEEDER_AUDIT_DETAILS">
					is_im_runtime = <True>
				>
			>
			source_schema_id = <"openehr_rm_structures_1.0.4">
			uid = <899>
		>
		["FEEDER_AUDIT_DETAILS"] = <
			name = <"FEEDER_AUDIT_DETAILS">
			ancestors = <"Any", ...>
			properties = <
				["system_id"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"system_id">
					type = <"String">
					is_mandatory = <True>
					is_im_runtime = <True>
				>
				["location"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"location">
					type = <"PARTY_IDENTIFIED">
					is_im_runtime = <True>
				>
				["provider"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"provider">
					type = <"PARTY_IDENTIFIED">
					is_im_runtime = <True>
				>
				["subject"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"subject">
					type = <"PARTY_PROXY">
					is_im_runtime = <True>
				>
				["time"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"time">
					type = <"DV_DATE_TIME">
					is_im_runtime = <True>
				>
				["version_id"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"version_id">
					type = <"String">
					is_im_runtime = <True>
				>
			>
			source_schema_id = <"openehr_rm_structures_1.0.4">
			uid = <900>
		>
		["FOLDER"] = <
			name = <"FOLDER">
			ancestors = <"LOCATABLE", ...>
			properties = <
				["folders"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"folders">
					cardinality = <|>=0|>
					type_def = <
						type = <"FOLDER">
						container_type = <"List">
					>
				>
				["items"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"items">
					cardinality = <|>=0|>
					type_def = <
						type = <"OBJECT_REF">
						container_type = <"List">
					>
				>
			>
			source_schema_id = <"openehr_rm_structures_1.0.4">
			uid = <901>
		>
		["CONTRIBUTION"] = <
			name = <"CONTRIBUTION">
			ancestors = <"Any", ...>
			properties = <
				["uid"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"uid">
					type = <"HIER_OBJECT_ID">
					is_mandatory = <True>
					is_im_infrastructure = <True>
				>
				["audit"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"audit">
					type = <"AUDIT_DETAILS">
					is_mandatory = <True>
					is_im_infrastructure = <True>
				>
				["versions"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"versions">
					cardinality = <|>=0|>
					type_def = <
						type = <"OBJECT_REF">
						container_type = <"Set">
					>
					is_mandatory = <True>
					is_im_infrastructure = <True>
				>
			>
			source_schema_id = <"openehr_rm_structures_1.0.4">
			uid = <902>
		>
		["VERSIONED_OBJECT"] = <
			name = <"VERSIONED_OBJECT">
			generic_parameter_defs = <
				["T"] = <
					name = <"T">
				>
			>
			ancestors = <"Any", ...>
			properties = <
				["uid"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"uid">
					type = <"HIER_OBJECT_ID">
					is_mandatory = <True>
					is_im_infrastructure = <True>
				>
				["owner_id"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"owner_id">
					type = <"OBJECT_REF">
					is_im_infrastructure = <True>
				>
				["time_created"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"time_created">
					type = <"DV_DATE_TIME">
					is_mandatory = <True>
					is_im_infrastructure = <True>
				>
			>
			source_schema_id = <"openehr_rm_structures_1.0.4">
			uid = <903>
		>
		["VERSION"] = <
			name = <"VERSION">
			generic_parameter_defs = <
				["T"] = <
					name = <"T">
				>
			>
			ancestors = <"Any", ...>
			properties = <
				["contribution"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"contribution">
					type = <"OBJECT_REF">
					is_mandatory = <True>
					is_im_infrastructure = <True>
				>
				["commit_audit"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"commit_audit">
					type = <"AUDIT_DETAILS">
					is_mandatory = <True>
					is_im_infrastructure = <True>
				>
				["signature"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"signature">
					type = <"String">
					is_im_infrastructure = <True>
				>
			>
			source_schema_id = <"openehr_rm_structures_1.0.4">
			uid = <904>
		>
		["ORIGINAL_VERSION"] = <
			name = <"ORIGINAL_VERSION">
			generic_parameter_defs = <
				["T"] = <
					name = <"T">
				>
			>
			ancestors = <"VERSION", ...>
			properties = <
				["uid"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"uid">
					type = <"OBJECT_VERSION_ID">
					is_mandatory = <True>
					is_im_infrastructure = <True>
				>
				["preceding_version_uid"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"preceding_version_uid">
					type = <"OBJECT_VERSION_ID">
					is_im_infrastructure = <True>
				>
				["other_input_version_uids"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"other_input_version_uids">
					cardinality = <|>=0|>
					type_def = <
						type = <"OBJECT_VERSION_ID">
						container_type = <"Set">
					>
					is_im_infrastructure = <True>
				>
				["attestations"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"attestations">
					cardinality = <|>=0|>
					type_def = <
						type = <"ATTESTATION">
						container_type = <"List">
					>
				>
				["lifecycle_state"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"lifecycle_state">
					type = <"DV_CODED_TEXT">
					is_mandatory = <True>
				>
				["data"] = (P_BMM_SINGLE_PROPERTY_OPEN) <
					name = <"data">
					type = <"T">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_rm_structures_1.0.4">
			uid = <905>
		>
		["IMPORTED_VERSION"] = <
			name = <"IMPORTED_VERSION">
			generic_parameter_defs = <
				["T"] = <
					name = <"T">
				>
			>
			ancestors = <"VERSION", ...>
			properties = <
				["item"] = (P_BMM_GENERIC_PROPERTY) <
					name = <"item">
					type_def = <
						root_type = <"ORIGINAL_VERSION">
						generic_parameters = <"T", ...>
					>
					is_mandatory = <True>
					is_im_infrastructure = <True>
				>
			>
			source_schema_id = <"openehr_rm_structures_1.0.4">
			uid = <906>
		>
		["DATA_VALUE"] = <
			name = <"DATA_VALUE">
			ancestors = <"Any", ...>
			source_schema_id = <"openehr_rm_data_types_1.0.4">
			is_abstract = <True>
			uid = <787>
		>
		["DV_BOOLEAN"] = <
			name = <"DV_BOOLEAN">
			ancestors = <"DATA_VALUE", ...>
			properties = <
				["value"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"value">
					type = <"Boolean">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_rm_data_types_1.0.4">
			uid = <788>
		>
		["DV_IDENTIFIER"] = <
			name = <"DV_IDENTIFIER">
			ancestors = <"DATA_VALUE", ...>
			properties = <
				["issuer"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"issuer">
					type = <"String">
				>
				["id"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"id">
					type = <"String">
					is_mandatory = <True>
					is_im_runtime = <True>
				>
				["type"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"type">
					type = <"String">
				>
				["assigner"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"assigner">
					type = <"String">
				>
			>
			source_schema_id = <"openehr_rm_data_types_1.0.4">
			uid = <789>
		>
		["DV_STATE"] = <
			name = <"DV_STATE">
			ancestors = <"DATA_VALUE", ...>
			properties = <
				["value"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"value">
					type = <"DV_CODED_TEXT">
					is_mandatory = <True>
				>
				["is_terminal"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"is_terminal">
					type = <"Boolean">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_rm_data_types_1.0.4">
			uid = <790>
		>
		["TERM_MAPPING"] = <
			name = <"TERM_MAPPING">
			properties = <
				["defining_code"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"defining_code">
					type = <"CODE_PHRASE">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_rm_data_types_1.0.4">
			uid = <791>
		>
		["DV_TEXT"] = <
			name = <"DV_TEXT">
			ancestors = <"DATA_VALUE", ...>
			properties = <
				["value"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"value">
					type = <"String">
					is_mandatory = <True>
				>
				["hyperlink"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"hyperlink">
					type = <"DV_URI">
					is_im_runtime = <True>
				>
				["language"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"language">
					type = <"CODE_PHRASE">
					is_im_infrastructure = <True>
				>
				["encoding"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"encoding">
					type = <"CODE_PHRASE">
					is_im_infrastructure = <True>
				>
				["formatting"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"formatting">
					type = <"String">
					is_im_runtime = <True>
				>
				["mappings"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"mappings">
					cardinality = <|>=0|>
					type_def = <
						type = <"TERM_MAPPING">
						container_type = <"Set">
					>
					is_im_runtime = <True>
				>
			>
			source_schema_id = <"openehr_rm_data_types_1.0.4">
			uid = <792>
		>
		["DV_CODED_TEXT"] = <
			name = <"DV_CODED_TEXT">
			ancestors = <"DV_TEXT", ...>
			properties = <
				["defining_code"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"defining_code">
					type = <"CODE_PHRASE">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_rm_data_types_1.0.4">
			uid = <793>
		>
		["CODE_PHRASE"] = <
			name = <"CODE_PHRASE">
			properties = <
				["terminology_id"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"terminology_id">
					type = <"TERMINOLOGY_ID">
					is_mandatory = <True>
				>
				["code_string"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"code_string">
					type = <"String">
				>
			>
			source_schema_id = <"openehr_rm_data_types_1.0.4">
			uid = <794>
		>
		["DV_PARAGRAPH"] = <
			name = <"DV_PARAGRAPH">
			ancestors = <"DATA_VALUE", ...>
			properties = <
				["items"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"items">
					cardinality = <|>=0|>
					type_def = <
						type = <"DV_TEXT">
						container_type = <"List">
					>
				>
			>
			source_schema_id = <"openehr_rm_data_types_1.0.4">
			uid = <795>
		>
		["DV_INTERVAL"] = <
			name = <"DV_INTERVAL">
			generic_parameter_defs = <
				["T"] = <
					name = <"T">
					conforms_to_type = <"DV_ORDERED">
				>
			>
			ancestors = <"Interval", "DATA_VALUE">
			source_schema_id = <"openehr_rm_data_types_1.0.4">
			uid = <796>
		>
		["REFERENCE_RANGE"] = <
			name = <"REFERENCE_RANGE">
			generic_parameter_defs = <
				["T"] = <
					name = <"T">
					conforms_to_type = <"DV_ORDERED">
				>
			>
			ancestors = <"Any", ...>
			properties = <
				["range"] = (P_BMM_GENERIC_PROPERTY) <
					name = <"range">
					type_def = <
						root_type = <"DV_INTERVAL">
						generic_parameters = <"T", ...>
					>
				>
			>
			source_schema_id = <"openehr_rm_data_types_1.0.4">
			uid = <797>
		>
		["DV_ORDERED"] = <
			name = <"DV_ORDERED">
			ancestors = <"Ordered", "DATA_VALUE">
			properties = <
				["normal_status"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"normal_status">
					type = <"CODE_PHRASE">
				>
				["normal_range"] = (P_BMM_GENERIC_PROPERTY) <
					name = <"normal_range">
					type_def = <
						root_type = <"DV_INTERVAL">
						generic_parameters = <"DV_ORDERED", ...>
					>
				>
				["other_reference_ranges"] = (P_BMM_GENERIC_PROPERTY) <
					name = <"other_reference_ranges">
					type_def = <
						root_type = <"REFERENCE_RANGE">
						generic_parameters = <"DV_ORDERED", ...>
					>
				>
			>
			source_schema_id = <"openehr_rm_data_types_1.0.4">
			is_abstract = <True>
			uid = <798>
		>
		["DV_QUANTIFIED"] = <
			name = <"DV_QUANTIFIED">
			ancestors = <"DV_ORDERED", ...>
			properties = <
				["magnitude_status"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"magnitude_status">
					type = <"String">
					is_mandatory = <True>
					is_im_runtime = <True>
				>
			>
			source_schema_id = <"openehr_rm_data_types_1.0.4">
			is_abstract = <True>
			uid = <799>
		>
		["DV_ORDINAL"] = <
			name = <"DV_ORDINAL">
			ancestors = <"DV_ORDERED", ...>
			properties = <
				["value"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"value">
					type = <"Integer">
					is_mandatory = <True>
				>
				["symbol"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"symbol">
					type = <"DV_CODED_TEXT">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_rm_data_types_1.0.4">
			uid = <800>
		>
		["DV_AMOUNT"] = <
			name = <"DV_AMOUNT">
			ancestors = <"DV_QUANTIFIED", ...>
			properties = <
				["accuracy"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"accuracy">
					type = <"Real">
					is_im_runtime = <True>
				>
				["accuracy_is_percent"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"accuracy_is_percent">
					type = <"Boolean">
					is_im_runtime = <True>
				>
			>
			source_schema_id = <"openehr_rm_data_types_1.0.4">
			is_abstract = <True>
			uid = <801>
		>
		["DV_ABSOLUTE_QUANTITY"] = <
			name = <"DV_ABSOLUTE_QUANTITY">
			ancestors = <"DV_QUANTIFIED", ...>
			properties = <
				["accuracy"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"accuracy">
					type = <"DV_AMOUNT">
					is_im_runtime = <True>
				>
			>
			source_schema_id = <"openehr_rm_data_types_1.0.4">
			is_abstract = <True>
			uid = <802>
		>
		["DV_QUANTITY"] = <
			name = <"DV_QUANTITY">
			ancestors = <"DV_AMOUNT", ...>
			properties = <
				["magnitude"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"magnitude">
					type = <"Double">
					is_mandatory = <True>
				>
				["property"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"property">
					type = <"CODE_PHRASE">
					is_mandatory = <True>
				>
				["units"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"units">
					type = <"String">
					is_mandatory = <True>
				>
				["precision"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"precision">
					type = <"Integer">
				>
			>
			source_schema_id = <"openehr_rm_data_types_1.0.4">
			uid = <803>
		>
		["DV_COUNT"] = <
			name = <"DV_COUNT">
			ancestors = <"DV_AMOUNT", ...>
			properties = <
				["magnitude"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"magnitude">
					type = <"Integer64">
				>
			>
			source_schema_id = <"openehr_rm_data_types_1.0.4">
			uid = <804>
		>
		["DV_PROPORTION"] = <
			name = <"DV_PROPORTION">
			ancestors = <"DV_AMOUNT", ...>
			properties = <
				["numerator"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"numerator">
					type = <"Real">
					is_mandatory = <True>
				>
				["denominator"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"denominator">
					type = <"Real">
					is_mandatory = <True>
				>
				["type"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"type">
					type = <"PROPORTION_KIND">
					is_mandatory = <True>
				>
				["precision"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"precision">
					type = <"Integer">
				>
				["is_integral"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"is_integral">
					type = <"Boolean">
					is_computed = <True>
				>
			>
			source_schema_id = <"openehr_rm_data_types_1.0.4">
			uid = <805>
		>
		["PROPORTION_KIND"] = (P_BMM_ENUMERATION_INTEGER) <
			name = <"PROPORTION_KIND">
			ancestors = <"Integer", ...>
			source_schema_id = <"openehr_rm_data_types_1.0.4">
			item_names = <"pk_ratio", "pk_unitary", "pk_percent", "pk_fraction", "pk_integer_fraction">
			uid = <806>
		>
		["DV_TEMPORAL"] = <
			name = <"DV_TEMPORAL">
			ancestors = <"DV_ABSOLUTE_QUANTITY", ...>
			source_schema_id = <"openehr_rm_data_types_1.0.4">
			is_abstract = <True>
			uid = <807>
		>
		["DV_DATE"] = <
			name = <"DV_DATE">
			ancestors = <"DV_TEMPORAL", "ISO8601_DATE">
			properties = <
				["value"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"value">
					type = <"String">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_rm_data_types_1.0.4">
			uid = <808>
		>
		["DV_TIME"] = <
			name = <"DV_TIME">
			ancestors = <"DV_TEMPORAL", "ISO8601_TIME">
			properties = <
				["value"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"value">
					type = <"String">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_rm_data_types_1.0.4">
			uid = <809>
		>
		["DV_DATE_TIME"] = <
			name = <"DV_DATE_TIME">
			ancestors = <"DV_TEMPORAL", "ISO8601_DATE_TIME">
			properties = <
				["value"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"value">
					type = <"String">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_rm_data_types_1.0.4">
			uid = <810>
		>
		["DV_DURATION"] = <
			name = <"DV_DURATION">
			ancestors = <"DV_AMOUNT", "ISO8601_DURATION">
			properties = <
				["value"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"value">
					type = <"String">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_rm_data_types_1.0.4">
			uid = <811>
		>
		["DV_ENCAPSULATED"] = <
			name = <"DV_ENCAPSULATED">
			ancestors = <"DATA_VALUE", ...>
			properties = <
				["charset"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"charset">
					type = <"CODE_PHRASE">
					is_im_runtime = <True>
				>
				["language"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"language">
					type = <"CODE_PHRASE">
					is_im_runtime = <True>
				>
			>
			source_schema_id = <"openehr_rm_data_types_1.0.4">
			is_abstract = <True>
			uid = <812>
		>
		["DV_MULTIMEDIA"] = <
			name = <"DV_MULTIMEDIA">
			ancestors = <"DV_ENCAPSULATED", ...>
			properties = <
				["alternate_text"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"alternate_text">
					type = <"String">
				>
				["uri"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"uri">
					type = <"DV_URI">
				>
				["data"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"data">
					cardinality = <|>=0|>
					type_def = <
						type = <"Octet">
						container_type = <"Array">
					>
				>
				["media_type"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"media_type">
					type = <"CODE_PHRASE">
					is_mandatory = <True>
				>
				["compression_algorithm"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"compression_algorithm">
					type = <"CODE_PHRASE">
				>
				["integrity_check"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"integrity_check">
					cardinality = <|>=0|>
					type_def = <
						type = <"Octet">
						container_type = <"Array">
					>
				>
				["integrity_check_algorithm"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"integrity_check_algorithm">
					type = <"CODE_PHRASE">
				>
				["size"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"size">
					type = <"Integer">
					is_im_runtime = <True>
				>
			>
			source_schema_id = <"openehr_rm_data_types_1.0.4">
			uid = <813>
		>
		["DV_PARSABLE"] = <
			name = <"DV_PARSABLE">
			ancestors = <"DV_ENCAPSULATED", ...>
			properties = <
				["value"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"value">
					type = <"String">
				>
				["formalism"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"formalism">
					type = <"String">
				>
			>
			source_schema_id = <"openehr_rm_data_types_1.0.4">
			uid = <814>
		>
		["DV_URI"] = <
			name = <"DV_URI">
			ancestors = <"DATA_VALUE", ...>
			properties = <
				["value"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"value">
					type = <"String">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_rm_data_types_1.0.4">
			uid = <815>
		>
		["DV_EHR_URI"] = <
			name = <"DV_EHR_URI">
			ancestors = <"DV_URI", ...>
			source_schema_id = <"openehr_rm_data_types_1.0.4">
			uid = <816>
		>
		["DV_TIME_SPECIFICATION"] = <
			name = <"DV_TIME_SPECIFICATION">
			ancestors = <"DATA_VALUE", ...>
			properties = <
				["value"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"value">
					type = <"DV_PARSABLE">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_rm_data_types_1.0.4">
			is_abstract = <True>
			uid = <817>
		>
		["DV_PERIODIC_TIME_SPECIFICATION"] = <
			name = <"DV_PERIODIC_TIME_SPECIFICATION">
			ancestors = <"DV_TIME_SPECIFICATION", ...>
			source_schema_id = <"openehr_rm_data_types_1.0.4">
			uid = <818>
		>
		["DV_GENERAL_TIME_SPECIFICATION"] = <
			name = <"DV_GENERAL_TIME_SPECIFICATION">
			ancestors = <"DV_TIME_SPECIFICATION", ...>
			source_schema_id = <"openehr_rm_data_types_1.0.4">
			uid = <819>
		>
		["OBJECT_REF"] = <
			name = <"OBJECT_REF">
			ancestors = <"Any", ...>
			properties = <
				["id"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"id">
					type = <"OBJECT_ID">
					is_mandatory = <True>
				>
				["namespace"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"namespace">
					type = <"String">
					is_mandatory = <True>
				>
				["type"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"type">
					type = <"String">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_base_1.1.0">
			uid = <684>
		>
		["LOCATABLE_REF"] = <
			name = <"LOCATABLE_REF">
			ancestors = <"OBJECT_REF", ...>
			properties = <
				["path"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"path">
					type = <"String">
					is_im_infrastructure = <True>
				>
			>
			source_schema_id = <"openehr_base_1.1.0">
			uid = <685>
		>
		["PARTY_REF"] = <
			name = <"PARTY_REF">
			ancestors = <"OBJECT_REF", ...>
			source_schema_id = <"openehr_base_1.1.0">
			uid = <686>
		>
		["OBJECT_ID"] = <
			name = <"OBJECT_ID">
			ancestors = <"Any", ...>
			properties = <
				["value"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"value">
					type = <"String">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_base_1.1.0">
			is_abstract = <True>
			uid = <687>
		>
		["TERMINOLOGY_ID"] = <
			name = <"TERMINOLOGY_ID">
			ancestors = <"OBJECT_ID", ...>
			source_schema_id = <"openehr_base_1.1.0">
			uid = <688>
		>
		["UID_BASED_ID"] = <
			name = <"UID_BASED_ID">
			ancestors = <"OBJECT_ID", ...>
			source_schema_id = <"openehr_base_1.1.0">
			is_abstract = <True>
			uid = <689>
		>
		["GENERIC_ID"] = <
			name = <"GENERIC_ID">
			ancestors = <"OBJECT_ID", ...>
			source_schema_id = <"openehr_base_1.1.0">
			uid = <690>
		>
		["ARCHETYPE_ID"] = <
			name = <"ARCHETYPE_ID">
			ancestors = <"OBJECT_ID", ...>
			source_schema_id = <"openehr_base_1.1.0">
			uid = <691>
		>
		["ARCHETYPE_HRID"] = <
			name = <"ARCHETYPE_HRID">
			ancestors = <"OBJECT_ID", ...>
			source_schema_id = <"openehr_base_1.1.0">
			uid = <692>
		>
		["TEMPLATE_ID"] = <
			name = <"TEMPLATE_ID">
			ancestors = <"OBJECT_ID", ...>
			source_schema_id = <"openehr_base_1.1.0">
			uid = <693>
		>
		["OBJECT_VERSION_ID"] = <
			name = <"OBJECT_VERSION_ID">
			ancestors = <"UID_BASED_ID", ...>
			source_schema_id = <"openehr_base_1.1.0">
			uid = <694>
		>
		["HIER_OBJECT_ID"] = <
			name = <"HIER_OBJECT_ID">
			ancestors = <"UID_BASED_ID", ...>
			source_schema_id = <"openehr_base_1.1.0">
			uid = <695>
		>
		["VERSION_TREE_ID"] = <
			name = <"VERSION_TREE_ID">
			ancestors = <"Any", ...>
			source_schema_id = <"openehr_base_1.1.0">
			uid = <696>
		>
		["UID"] = <
			name = <"UID">
			ancestors = <"Any", ...>
			source_schema_id = <"openehr_base_1.1.0">
			is_abstract = <True>
			uid = <697>
		>
		["INTERNET_ID"] = <
			name = <"INTERNET_ID">
			ancestors = <"UID", ...>
			source_schema_id = <"openehr_base_1.1.0">
			uid = <698>
		>
		["UUID"] = <
			name = <"UUID">
			ancestors = <"UID", ...>
			source_schema_id = <"openehr_base_1.1.0">
			uid = <699>
		>
		["ISO_OID"] = <
			name = <"ISO_OID">
			ancestors = <"UID", ...>
			source_schema_id = <"openehr_base_1.1.0">
			uid = <700>
		>
		["VALIDITY_KIND"] = (P_BMM_ENUMERATION_INTEGER) <
			name = <"VALIDITY_KIND">
			ancestors = <"Integer", ...>
			source_schema_id = <"openehr_base_1.1.0">
			item_names = <"mandatory", "optional", "prohibited">
			uid = <701>
		>
		["EXPR_TYPE_DEF"] = <
			name = <"EXPR_TYPE_DEF">
			ancestors = <"Any", ...>
			properties = <
				["type_name"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"type_name">
					type = <"String">
					is_mandatory = <True>
				>
				["type_anchor"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"type_anchor">
					type = <"Any">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_base_1.1.0">
			is_abstract = <True>
			uid = <702>
		>
		["TYPE_DEF_BOOLEAN"] = <
			name = <"TYPE_DEF_BOOLEAN">
			ancestors = <"EXPR_TYPE_DEF", ...>
			properties = <
				["type_anchor"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"type_anchor">
					type = <"Boolean">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_base_1.1.0">
			uid = <703>
		>
		["TYPE_DEF_INTEGER"] = <
			name = <"TYPE_DEF_INTEGER">
			ancestors = <"EXPR_TYPE_DEF", ...>
			properties = <
				["type_anchor"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"type_anchor">
					type = <"Integer">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_base_1.1.0">
			uid = <704>
		>
		["TYPE_DEF_REAL"] = <
			name = <"TYPE_DEF_REAL">
			ancestors = <"EXPR_TYPE_DEF", ...>
			properties = <
				["type_anchor"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"type_anchor">
					type = <"Real">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_base_1.1.0">
			uid = <705>
		>
		["TYPE_DEF_DATE"] = <
			name = <"TYPE_DEF_DATE">
			ancestors = <"EXPR_TYPE_DEF", ...>
			properties = <
				["type_anchor"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"type_anchor">
					type = <"Date">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_base_1.1.0">
			uid = <706>
		>
		["TYPE_DEF_DATE_TIME"] = <
			name = <"TYPE_DEF_DATE_TIME">
			ancestors = <"EXPR_TYPE_DEF", ...>
			properties = <
				["type_anchor"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"type_anchor">
					type = <"Date_time">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_base_1.1.0">
			uid = <707>
		>
		["TYPE_DEF_TIME"] = <
			name = <"TYPE_DEF_TIME">
			ancestors = <"EXPR_TYPE_DEF", ...>
			properties = <
				["type_anchor"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"type_anchor">
					type = <"Time">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_base_1.1.0">
			uid = <708>
		>
		["TYPE_DEF_DURATION"] = <
			name = <"TYPE_DEF_DURATION">
			ancestors = <"EXPR_TYPE_DEF", ...>
			properties = <
				["type_anchor"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"type_anchor">
					type = <"Duration">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_base_1.1.0">
			uid = <709>
		>
		["TYPE_DEF_STRING"] = <
			name = <"TYPE_DEF_STRING">
			ancestors = <"EXPR_TYPE_DEF", ...>
			properties = <
				["type_anchor"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"type_anchor">
					type = <"String">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_base_1.1.0">
			uid = <710>
		>
		["TYPE_DEF_URI"] = <
			name = <"TYPE_DEF_URI">
			ancestors = <"EXPR_TYPE_DEF", ...>
			properties = <
				["type_anchor"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"type_anchor">
					type = <"Uri">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_base_1.1.0">
			uid = <711>
		>
		["TYPE_DEF_TERMINOLOGY_CODE"] = <
			name = <"TYPE_DEF_TERMINOLOGY_CODE">
			ancestors = <"EXPR_TYPE_DEF", ...>
			properties = <
				["type_anchor"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"type_anchor">
					type = <"Terminology_code">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_base_1.1.0">
			uid = <712>
		>
		["PARTY"] = <
			name = <"PARTY">
			ancestors = <"LOCATABLE", ...>
			properties = <
				["details"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"details">
					type = <"ITEM_STRUCTURE">
				>
				["identities"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"identities">
					cardinality = <|>=1|>
					type_def = <
						type = <"PARTY_IDENTITY">
						container_type = <"Set">
					>
				>
				["contacts"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"contacts">
					cardinality = <|>=0|>
					type_def = <
						type = <"CONTACT">
						container_type = <"Set">
					>
				>
				["relationships"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"relationships">
					cardinality = <|>=0|>
					type_def = <
						type = <"PARTY_RELATIONSHIP">
						container_type = <"Set">
					>
				>
				["reverse_relationships"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"reverse_relationships">
					cardinality = <|>=0|>
					type_def = <
						type = <"LOCATABLE_REF">
						container_type = <"Set">
					>
					is_im_runtime = <True>
				>
				["type"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"type">
					type = <"DV_TEXT">
					is_computed = <True>
				>
			>
			source_schema_id = <"openehr_rm_demographic_1.0.4">
			is_abstract = <True>
			uid = <820>
		>
		["PARTY_IDENTITY"] = <
			name = <"PARTY_IDENTITY">
			ancestors = <"LOCATABLE", ...>
			properties = <
				["details"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"details">
					type = <"ITEM_STRUCTURE">
					is_mandatory = <True>
				>
				["purpose"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"purpose">
					type = <"DV_TEXT">
					is_computed = <True>
				>
			>
			source_schema_id = <"openehr_rm_demographic_1.0.4">
			uid = <821>
		>
		["CONTACT"] = <
			name = <"CONTACT">
			ancestors = <"LOCATABLE", ...>
			properties = <
				["time_validity"] = (P_BMM_GENERIC_PROPERTY) <
					name = <"time_validity">
					type_def = <
						root_type = <"DV_INTERVAL">
						generic_parameters = <"DV_DATE", ...>
					>
					is_im_runtime = <True>
				>
				["addresses"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"addresses">
					cardinality = <|>=1|>
					type_def = <
						type = <"ADDRESS">
						container_type = <"List">
					>
				>
				["purpose"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"purpose">
					type = <"DV_TEXT">
					is_computed = <True>
				>
			>
			source_schema_id = <"openehr_rm_demographic_1.0.4">
			uid = <822>
		>
		["ADDRESS"] = <
			name = <"ADDRESS">
			ancestors = <"LOCATABLE", ...>
			properties = <
				["details"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"details">
					type = <"ITEM_STRUCTURE">
					is_mandatory = <True>
				>
				["type"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"type">
					type = <"DV_TEXT">
					is_computed = <True>
				>
			>
			source_schema_id = <"openehr_rm_demographic_1.0.4">
			uid = <823>
		>
		["ACTOR"] = <
			name = <"ACTOR">
			ancestors = <"PARTY", ...>
			properties = <
				["roles"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"roles">
					cardinality = <|>=1|>
					type_def = <
						type = <"PARTY_REF">
						container_type = <"Set">
					>
				>
				["languages"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"languages">
					cardinality = <|>=1|>
					type_def = <
						type = <"DV_TEXT">
						container_type = <"List">
					>
				>
			>
			source_schema_id = <"openehr_rm_demographic_1.0.4">
			is_abstract = <True>
			uid = <824>
		>
		["PERSON"] = <
			name = <"PERSON">
			ancestors = <"ACTOR", ...>
			source_schema_id = <"openehr_rm_demographic_1.0.4">
			uid = <825>
		>
		["ORGANISATION"] = <
			name = <"ORGANISATION">
			ancestors = <"ACTOR", ...>
			source_schema_id = <"openehr_rm_demographic_1.0.4">
			uid = <826>
		>
		["GROUP"] = <
			name = <"GROUP">
			ancestors = <"ACTOR", ...>
			source_schema_id = <"openehr_rm_demographic_1.0.4">
			uid = <827>
		>
		["AGENT"] = <
			name = <"AGENT">
			ancestors = <"ACTOR", ...>
			source_schema_id = <"openehr_rm_demographic_1.0.4">
			uid = <828>
		>
		["ROLE"] = <
			name = <"ROLE">
			ancestors = <"PARTY", ...>
			properties = <
				["performer"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"performer">
					type = <"PARTY_REF">
					is_mandatory = <True>
				>
				["capabilities"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"capabilities">
					cardinality = <|>=0|>
					type_def = <
						type = <"CAPABILITY">
						container_type = <"List">
					>
				>
				["time_validity"] = (P_BMM_GENERIC_PROPERTY) <
					name = <"time_validity">
					type_def = <
						root_type = <"DV_INTERVAL">
						generic_parameters = <"DV_DATE", ...>
					>
					is_im_runtime = <True>
				>
			>
			source_schema_id = <"openehr_rm_demographic_1.0.4">
			uid = <829>
		>
		["CAPABILITY"] = <
			name = <"CAPABILITY">
			ancestors = <"LOCATABLE", ...>
			properties = <
				["credentials"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"credentials">
					type = <"ITEM_STRUCTURE">
					is_mandatory = <True>
				>
				["time_validity"] = (P_BMM_GENERIC_PROPERTY) <
					name = <"time_validity">
					type_def = <
						root_type = <"DV_INTERVAL">
						generic_parameters = <"DV_DATE", ...>
					>
					is_im_runtime = <True>
				>
			>
			source_schema_id = <"openehr_rm_demographic_1.0.4">
			uid = <830>
		>
		["PARTY_RELATIONSHIP"] = <
			name = <"PARTY_RELATIONSHIP">
			ancestors = <"LOCATABLE", ...>
			properties = <
				["source"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"source">
					type = <"PARTY_REF">
				>
				["target"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"target">
					type = <"PARTY_REF">
				>
				["details"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"details">
					type = <"ITEM_STRUCTURE">
				>
				["time_validity"] = (P_BMM_GENERIC_PROPERTY) <
					name = <"time_validity">
					type_def = <
						root_type = <"DV_INTERVAL">
						generic_parameters = <"DV_DATE", ...>
					>
					is_im_runtime = <True>
				>
			>
			source_schema_id = <"openehr_rm_demographic_1.0.4">
			uid = <831>
		>
	>
	model_name = <"TASK_PLANNING">
	passed = <True>
	missed_class_count = <0>
