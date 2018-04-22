	packages = <
		["ORG.OPENEHR.RM.EHR_EXTRACT"] = <
			name = <"org.openehr.rm.ehr_extract">
			classes = <"EXTRACT", "EXTRACT_SPEC", "EXTRACT_ITEM", "GENERIC_CONTENT_ITEM", "OPENEHR_CONTENT_ITEM", "EXTRACT_REQUEST", "EXTRACT_UPDATE_SPEC", "EXTRACT_ACTION_REQUEST", "EXTRACT_CONTENT_ITEM", "EXTRACT_FOLDER", "EXTRACT_VERSION_SPEC", "EXTRACT_CHAPTER", "EXTRACT_ENTITY_CHAPTER", "X_VERSIONED_PARTY", "X_VERSIONED_EHR_ACCESS", "X_VERSIONED_EHR_STATUS", "X_VERSIONED_COMPOSITION", "X_VERSIONED_FOLDER", "EXTRACT_MANIFEST", "EXTRACT_ENTITY_MANIFEST", "EXTRACT_PARTICIPATION", "X_VERSIONED_OBJECT">
		>
	>
	rm_publisher = <"openehr">
	schema_name = <"ehr_extract">
	rm_release = <"1.0.3">
	schema_revision = <"1.0.3.1">
	schema_lifecycle_state = <"experimental">
	schema_author = <"Thomas Beale <thomas.beale@openehr.org>">
	schema_description = <"openEHR experimental EHR Extract information model">
	bmm_version = <"2.3">
	includes = <
		["1"] = <
			id = <"openehr_ehr_1.0.3">
		>
		["2"] = <
			id = <"openehr_demographic_1.0.3">
		>
	>
	primitive_types = <
		["Any"] = <
			name = <"Any">
			source_schema_id = <"openehr_primitive_types_1.0.3">
			is_abstract = <True>
			uid = <3610>
		>
		["Ordered"] = <
			documentation = <"Ancestor of types with total order relation defined, i.e. '<' and '='.">
			name = <"Ordered">
			ancestors = <"Any", ...>
			source_schema_id = <"openehr_primitive_types_1.0.3">
			is_abstract = <True>
			uid = <3611>
		>
		["Numeric"] = <
			documentation = <"Ancestor of numeric types.">
			name = <"Numeric">
			ancestors = <"Any", ...>
			source_schema_id = <"openehr_primitive_types_1.0.3">
			is_abstract = <True>
			uid = <3612>
		>
		["Ordered_Numeric"] = <
			documentation = <"Ancestor of ordered numeric types.">
			name = <"Ordered_Numeric">
			ancestors = <"Numeric", "Ordered">
			source_schema_id = <"openehr_primitive_types_1.0.3">
			is_abstract = <True>
			uid = <3613>
		>
		["Byte"] = <
			name = <"Byte">
			ancestors = <"Any", ...>
			source_schema_id = <"openehr_primitive_types_1.0.3">
			uid = <3614>
		>
		["Octet"] = <
			name = <"Octet">
			ancestors = <"Any", ...>
			source_schema_id = <"openehr_primitive_types_1.0.3">
			uid = <3615>
		>
		["Boolean"] = <
			name = <"Boolean">
			ancestors = <"Any", ...>
			source_schema_id = <"openehr_primitive_types_1.0.3">
			uid = <3616>
		>
		["Integer"] = <
			name = <"Integer">
			ancestors = <"Ordered_Numeric", ...>
			source_schema_id = <"openehr_primitive_types_1.0.3">
			uid = <3617>
		>
		["Integer64"] = <
			name = <"Integer64">
			ancestors = <"Ordered_Numeric", ...>
			source_schema_id = <"openehr_primitive_types_1.0.3">
			uid = <3618>
		>
		["Real"] = <
			name = <"Real">
			ancestors = <"Ordered_Numeric", ...>
			source_schema_id = <"openehr_primitive_types_1.0.3">
			uid = <3619>
		>
		["Double"] = <
			name = <"Double">
			ancestors = <"Ordered_Numeric", ...>
			source_schema_id = <"openehr_primitive_types_1.0.3">
			uid = <3620>
		>
		["Character"] = <
			name = <"Character">
			ancestors = <"Any", ...>
			source_schema_id = <"openehr_primitive_types_1.0.3">
			uid = <3621>
		>
		["String"] = <
			name = <"String">
			ancestors = <"Any", ...>
			source_schema_id = <"openehr_primitive_types_1.0.3">
			uid = <3622>
		>
		["List"] = <
			name = <"List">
			generic_parameter_defs = <
				["T"] = <
					name = <"T">
				>
			>
			ancestors = <"Any", ...>
			source_schema_id = <"openehr_primitive_types_1.0.3">
			uid = <3623>
		>
		["Array"] = <
			name = <"Array">
			generic_parameter_defs = <
				["T"] = <
					name = <"T">
				>
			>
			ancestors = <"Any", ...>
			source_schema_id = <"openehr_primitive_types_1.0.3">
			uid = <3624>
		>
		["Set"] = <
			name = <"Set">
			generic_parameter_defs = <
				["T"] = <
					name = <"T">
				>
			>
			ancestors = <"Any", ...>
			source_schema_id = <"openehr_primitive_types_1.0.3">
			uid = <3625>
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
			source_schema_id = <"openehr_primitive_types_1.0.3">
			uid = <3626>
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
			source_schema_id = <"openehr_primitive_types_1.0.3">
			uid = <3627>
		>
		["Aggregate"] = <
			name = <"Aggregate">
			generic_parameter_defs = <
				["T"] = <
					name = <"T">
				>
			>
			ancestors = <"Any", ...>
			source_schema_id = <"openehr_primitive_types_1.0.3">
			uid = <3628>
		>
		["ISO8601_DATE"] = <
			documentation = <"Date type based on IS8601 representation.">
			name = <"ISO8601_DATE">
			ancestors = <"Any", ...>
			source_schema_id = <"openehr_primitive_types_1.0.3">
			uid = <3629>
		>
		["ISO8601_TIME"] = <
			documentation = <"Time type based on IS8601 representation.">
			name = <"ISO8601_TIME">
			ancestors = <"Any", ...>
			source_schema_id = <"openehr_primitive_types_1.0.3">
			uid = <3630>
		>
		["ISO8601_DATE_TIME"] = <
			documentation = <"Date Time type based on IS8601 representation.">
			name = <"ISO8601_DATE_TIME">
			ancestors = <"Any", ...>
			source_schema_id = <"openehr_primitive_types_1.0.3">
			uid = <3631>
		>
		["ISO8601_DURATION"] = <
			documentation = <"Duration type based on IS8601 representation.">
			name = <"ISO8601_DURATION">
			ancestors = <"Any", ...>
			source_schema_id = <"openehr_primitive_types_1.0.3">
			uid = <3632>
		>
	>
	class_definitions = <
		["EXTRACT"] = <
			name = <"EXTRACT">
			ancestors = <"LOCATABLE", ...>
			properties = <
				["request_id"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"request_id">
					type = <"HIER_OBJECT_ID">
					is_im_runtime = <True>
				>
				["time_created"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"time_created">
					type = <"DV_DATE_TIME">
					is_mandatory = <True>
					is_im_runtime = <True>
				>
				["system_id"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"system_id">
					type = <"HIER_OBJECT_ID">
					is_mandatory = <True>
					is_im_runtime = <True>
				>
				["sequence_nr"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"sequence_nr">
					type = <"Integer">
					is_mandatory = <True>
					is_im_runtime = <True>
				>
				["specification"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"specification">
					type = <"EXTRACT_SPEC">
				>
				["chapters"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"chapters">
					cardinality = <|>=0|>
					type_def = <
						type = <"EXTRACT_CHAPTER">
						container_type = <"List">
					>
				>
				["participations"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"participations">
					cardinality = <|>=0|>
					type_def = <
						type = <"EXTRACT_PARTICIPATION">
						container_type = <"List">
					>
				>
			>
			source_schema_id = <"openehr_ehr_extract_1.0.3">
			uid = <3588>
		>
		["EXTRACT_SPEC"] = <
			name = <"EXTRACT_SPEC">
			ancestors = <"Any", ...>
			properties = <
				["extract_type"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"extract_type">
					type = <"DV_CODED_TEXT">
					is_mandatory = <True>
				>
				["include_multimedia"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"include_multimedia">
					type = <"Boolean">
					is_mandatory = <True>
				>
				["priority"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"priority">
					type = <"Integer">
					is_mandatory = <True>
				>
				["link_depth"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"link_depth">
					type = <"Integer">
					is_mandatory = <True>
				>
				["criteria"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"criteria">
					cardinality = <|>=0|>
					type_def = <
						type = <"DV_PARSABLE">
						container_type = <"List">
					>
				>
				["manifest"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"manifest">
					type = <"EXTRACT_MANIFEST">
					is_mandatory = <True>
				>
				["version_spec"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"version_spec">
					type = <"EXTRACT_VERSION_SPEC">
				>
			>
			source_schema_id = <"openehr_ehr_extract_1.0.3">
			uid = <3589>
		>
		["EXTRACT_MANIFEST"] = <
			name = <"EXTRACT_MANIFEST">
			ancestors = <"Any", ...>
			properties = <
				["entities"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"entities">
					cardinality = <|>=1|>
					type_def = <
						type = <"EXTRACT_ENTITY_MANIFEST">
						container_type = <"List">
					>
				>
			>
			source_schema_id = <"openehr_ehr_extract_1.0.3">
			uid = <3590>
		>
		["EXTRACT_ENTITY_MANIFEST"] = <
			name = <"EXTRACT_ENTITY_MANIFEST">
			ancestors = <"Any", ...>
			properties = <
				["extract_id_key"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"extract_id_key">
					type = <"String">
					is_mandatory = <True>
					is_im_runtime = <True>
				>
				["ehr_id"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"ehr_id">
					type = <"String">
					is_im_runtime = <True>
				>
				["subject_id"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"subject_id">
					type = <"String">
					is_im_runtime = <True>
				>
				["other_ids"] = (P_BMM_GENERIC_PROPERTY) <
					name = <"other_ids">
					type_def = <
						root_type = <"Hash">
						generic_parameters = <"String", "String">
					>
					is_im_runtime = <True>
				>
				["item_list"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"item_list">
					cardinality = <|>=0|>
					type_def = <
						type = <"OBJECT_REF">
						container_type = <"List">
					>
				>
			>
			source_schema_id = <"openehr_ehr_extract_1.0.3">
			uid = <3591>
		>
		["EXTRACT_VERSION_SPEC"] = <
			name = <"EXTRACT_VERSION_SPEC">
			ancestors = <"Any", ...>
			properties = <
				["include_all_versions"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"include_all_versions">
					type = <"Boolean">
					is_mandatory = <True>
				>
				["commit_time_interval"] = (P_BMM_GENERIC_PROPERTY) <
					name = <"commit_time_interval">
					type_def = <
						root_type = <"DV_INTERVAL">
						generic_parameters = <"DV_DATE_TIME", ...>
					>
				>
				["include_revision_history"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"include_revision_history">
					type = <"Boolean">
					is_mandatory = <True>
				>
				["include_data"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"include_data">
					type = <"Boolean">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_ehr_extract_1.0.3">
			uid = <3592>
		>
		["EXTRACT_CHAPTER"] = <
			name = <"EXTRACT_CHAPTER">
			ancestors = <"LOCATABLE", ...>
			properties = <
				["items"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"items">
					cardinality = <|>=0|>
					type_def = <
						type = <"EXTRACT_ITEM">
						container_type = <"List">
					>
				>
			>
			source_schema_id = <"openehr_ehr_extract_1.0.3">
			uid = <3593>
		>
		["EXTRACT_ENTITY_CHAPTER"] = <
			name = <"EXTRACT_ENTITY_CHAPTER">
			ancestors = <"EXTRACT_CHAPTER", ...>
			properties = <
				["extract_id_key"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"extract_id_key">
					type = <"String">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_ehr_extract_1.0.3">
			uid = <3594>
		>
		["EXTRACT_ITEM"] = <
			name = <"EXTRACT_ITEM">
			ancestors = <"LOCATABLE", ...>
			source_schema_id = <"openehr_ehr_extract_1.0.3">
			is_abstract = <True>
			uid = <3595>
		>
		["EXTRACT_FOLDER"] = <
			name = <"EXTRACT_FOLDER">
			ancestors = <"EXTRACT_ITEM", ...>
			properties = <
				["items"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"items">
					cardinality = <|>=0|>
					type_def = <
						type = <"EXTRACT_ITEM">
						container_type = <"List">
					>
				>
			>
			source_schema_id = <"openehr_ehr_extract_1.0.3">
			uid = <3596>
		>
		["EXTRACT_CONTENT_ITEM"] = <
			name = <"EXTRACT_CONTENT_ITEM">
			ancestors = <"EXTRACT_ITEM", ...>
			properties = <
				["is_primary"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"is_primary">
					type = <"Boolean">
					is_mandatory = <True>
				>
				["is_changed"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"is_changed">
					type = <"Boolean">
					is_im_runtime = <True>
				>
				["is_masked"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"is_masked">
					type = <"Boolean">
				>
				["item"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"item">
					type = <"Any">
				>
			>
			source_schema_id = <"openehr_ehr_extract_1.0.3">
			is_abstract = <True>
			uid = <3597>
		>
		["EXTRACT_REQUEST"] = <
			name = <"EXTRACT_REQUEST">
			ancestors = <"LOCATABLE", ...>
			properties = <
				["uid"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"uid">
					type = <"HIER_OBJECT_ID">
					is_mandatory = <True>
				>
				["update_spec"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"update_spec">
					type = <"EXTRACT_UPDATE_SPEC">
				>
			>
			source_schema_id = <"openehr_ehr_extract_1.0.3">
			uid = <3598>
		>
		["EXTRACT_UPDATE_SPEC"] = <
			name = <"EXTRACT_UPDATE_SPEC">
			ancestors = <"Any", ...>
			properties = <
				["persist_in_server"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"persist_in_server">
					type = <"Boolean">
					is_mandatory = <True>
				>
				["trigger_events"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"trigger_events">
					type_def = <
						type = <"DV_CODED_TEXT">
						container_type = <"List">
					>
				>
				["repeat_period"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"repeat_period">
					type = <"DV_DURATION">
				>
				["update_method"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"update_method">
					type = <"CODE_PHRASE">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_ehr_extract_1.0.3">
			uid = <3599>
		>
		["EXTRACT_ACTION_REQUEST"] = <
			name = <"EXTRACT_ACTION_REQUEST">
			ancestors = <"LOCATABLE", ...>
			properties = <
				["request_id"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"request_id">
					type = <"OBJECT_REF">
					is_mandatory = <True>
					is_im_runtime = <True>
				>
				["uid"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"uid">
					type = <"HIER_OBJECT_ID">
					is_mandatory = <True>
					is_im_runtime = <True>
				>
				["action"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"action">
					type = <"DV_CODED_TEXT">
					is_mandatory = <True>
					is_im_runtime = <True>
				>
			>
			source_schema_id = <"openehr_ehr_extract_1.0.3">
			uid = <3600>
		>
		["GENERIC_CONTENT_ITEM"] = <
			name = <"GENERIC_CONTENT_ITEM">
			ancestors = <"EXTRACT_CONTENT_ITEM", ...>
			properties = <
				["item_type"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"item_type">
					type = <"DV_CODED_TEXT">
				>
				["item_type_version"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"item_type_version">
					type = <"String">
				>
				["author"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"author">
					type = <"String">
				>
				["creation_time"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"creation_time">
					type = <"ISO8601_DATE_TIME">
					is_im_runtime = <True>
				>
				["authoriser"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"authoriser">
					type = <"String">
				>
				["authorisation_time"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"authorisation_time">
					type = <"ISO8601_DATE_TIME">
					is_im_runtime = <True>
				>
				["item_status"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"item_status">
					type = <"DV_CODED_TEXT">
				>
				["version_id"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"version_id">
					type = <"String">
					is_im_runtime = <True>
				>
				["version_set_id"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"version_set_id">
					type = <"String">
					is_im_runtime = <True>
				>
				["system_id"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"system_id">
					type = <"String">
					is_im_runtime = <True>
				>
				["other_details"] = (P_BMM_GENERIC_PROPERTY) <
					name = <"other_details">
					type_def = <
						root_type = <"Hash">
						generic_parameters = <"String", "String">
					>
				>
				["item"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"item">
					type = <"LOCATABLE">
				>
			>
			source_schema_id = <"openehr_ehr_extract_1.0.3">
			uid = <3601>
		>
		["OPENEHR_CONTENT_ITEM"] = <
			name = <"OPENEHR_CONTENT_ITEM">
			ancestors = <"EXTRACT_CONTENT_ITEM", ...>
			properties = <
				["item"] = (P_BMM_GENERIC_PROPERTY) <
					name = <"item">
					type_def = <
						root_type = <"X_VERSIONED_OBJECT">
						generic_parameters = <"LOCATABLE", ...>
					>
				>
			>
			source_schema_id = <"openehr_ehr_extract_1.0.3">
			uid = <3602>
		>
		["X_VERSIONED_OBJECT"] = <
			name = <"X_VERSIONED_OBJECT">
			generic_parameter_defs = <
				["T"] = <
					name = <"T">
					conforms_to_type = <"LOCATABLE">
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
					is_mandatory = <True>
					is_im_runtime = <True>
				>
				["time_created"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"time_created">
					type = <"DV_DATE_TIME">
					is_mandatory = <True>
					is_im_runtime = <True>
				>
				["total_version_count"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"total_version_count">
					type = <"Integer">
					is_mandatory = <True>
					is_im_runtime = <True>
				>
				["extract_version_count"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"extract_version_count">
					type = <"Integer">
					is_mandatory = <True>
					is_im_runtime = <True>
				>
				["revision_history"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"revision_history">
					type = <"REVISION_HISTORY">
					is_im_infrastructure = <True>
				>
				["versions"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"versions">
					cardinality = <|>=0|>
					type_def = <
						type = <"ORIGINAL_VERSION">
						container_type = <"List">
					>
				>
			>
			source_schema_id = <"openehr_ehr_extract_1.0.3">
			uid = <3603>
		>
		["EXTRACT_PARTICIPATION"] = <
			name = <"EXTRACT_PARTICIPATION">
			ancestors = <"Any", ...>
			properties = <
				["performer"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"performer">
					type = <"String">
					is_mandatory = <True>
				>
				["function"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"function">
					type = <"DV_TEXT">
					is_mandatory = <True>
				>
				["mode"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"mode">
					type = <"DV_CODED_TEXT">
				>
				["time"] = (P_BMM_GENERIC_PROPERTY) <
					name = <"time">
					type_def = <
						root_type = <"DV_INTERVAL">
						generic_parameters = <"DV_DATE_TIME", ...>
					>
					is_im_runtime = <True>
				>
			>
			source_schema_id = <"openehr_ehr_extract_1.0.3">
			uid = <3604>
		>
		["X_VERSIONED_EHR_ACCESS"] = <
			name = <"X_VERSIONED_EHR_ACCESS">
			ancestor_defs = <
				["1"] = <
					root_type = <"X_VERSIONED_OBJECT">
					generic_parameters = <"EHR_ACCESS", ...>
				>
			>
			source_schema_id = <"openehr_ehr_extract_1.0.3">
			uid = <3605>
		>
		["X_VERSIONED_EHR_STATUS"] = <
			name = <"X_VERSIONED_EHR_STATUS">
			ancestor_defs = <
				["1"] = <
					root_type = <"X_VERSIONED_OBJECT">
					generic_parameters = <"EHR_STATUS", ...>
				>
			>
			source_schema_id = <"openehr_ehr_extract_1.0.3">
			uid = <3606>
		>
		["X_VERSIONED_COMPOSITION"] = <
			name = <"X_VERSIONED_COMPOSITION">
			ancestor_defs = <
				["1"] = <
					root_type = <"X_VERSIONED_OBJECT">
					generic_parameters = <"COMPOSITION", ...>
				>
			>
			source_schema_id = <"openehr_ehr_extract_1.0.3">
			uid = <3607>
		>
		["X_VERSIONED_FOLDER"] = <
			name = <"X_VERSIONED_FOLDER">
			ancestor_defs = <
				["1"] = <
					root_type = <"X_VERSIONED_OBJECT">
					generic_parameters = <"FOLDER", ...>
				>
			>
			source_schema_id = <"openehr_ehr_extract_1.0.3">
			uid = <3608>
		>
		["X_VERSIONED_PARTY"] = <
			name = <"X_VERSIONED_PARTY">
			ancestor_defs = <
				["1"] = <
					root_type = <"X_VERSIONED_OBJECT">
					generic_parameters = <"PARTY", ...>
				>
			>
			source_schema_id = <"openehr_ehr_extract_1.0.3">
			uid = <3609>
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
			source_schema_id = <"openehr_ehr_1.0.3">
			uid = <3569>
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
			source_schema_id = <"openehr_ehr_1.0.3">
			uid = <3570>
		>
		["ACCESS_CONTROL_SETTINGS"] = <
			name = <"ACCESS_CONTROL_SETTINGS">
			ancestors = <"Any", ...>
			source_schema_id = <"openehr_ehr_1.0.3">
			is_abstract = <True>
			uid = <3571>
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
			source_schema_id = <"openehr_ehr_1.0.3">
			uid = <3572>
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
			source_schema_id = <"openehr_ehr_1.0.3">
			uid = <3573>
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
			source_schema_id = <"openehr_ehr_1.0.3">
			uid = <3574>
		>
		["CONTENT_ITEM"] = <
			name = <"CONTENT_ITEM">
			ancestors = <"LOCATABLE", ...>
			source_schema_id = <"openehr_ehr_1.0.3">
			is_abstract = <True>
			uid = <3575>
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
			source_schema_id = <"openehr_ehr_1.0.3">
			uid = <3576>
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
			source_schema_id = <"openehr_ehr_1.0.3">
			is_abstract = <True>
			uid = <3577>
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
			source_schema_id = <"openehr_ehr_1.0.3">
			uid = <3578>
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
			source_schema_id = <"openehr_ehr_1.0.3">
			is_abstract = <True>
			uid = <3579>
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
			source_schema_id = <"openehr_ehr_1.0.3">
			uid = <3580>
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
			source_schema_id = <"openehr_ehr_1.0.3">
			uid = <3581>
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
			source_schema_id = <"openehr_ehr_1.0.3">
			uid = <3582>
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
			source_schema_id = <"openehr_ehr_1.0.3">
			uid = <3583>
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
			source_schema_id = <"openehr_ehr_1.0.3">
			uid = <3584>
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
			source_schema_id = <"openehr_ehr_1.0.3">
			uid = <3585>
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
			source_schema_id = <"openehr_ehr_1.0.3">
			uid = <3586>
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
			source_schema_id = <"openehr_ehr_1.0.3">
			uid = <3587>
		>
		["DATA_STRUCTURE"] = <
			name = <"DATA_STRUCTURE">
			ancestors = <"LOCATABLE", ...>
			source_schema_id = <"openehr_structures_1.0.3">
			is_abstract = <True>
			uid = <3633>
		>
		["ITEM_STRUCTURE"] = <
			name = <"ITEM_STRUCTURE">
			ancestors = <"DATA_STRUCTURE", ...>
			source_schema_id = <"openehr_structures_1.0.3">
			is_abstract = <True>
			uid = <3634>
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
			source_schema_id = <"openehr_structures_1.0.3">
			uid = <3635>
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
			source_schema_id = <"openehr_structures_1.0.3">
			uid = <3636>
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
			source_schema_id = <"openehr_structures_1.0.3">
			uid = <3637>
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
			source_schema_id = <"openehr_structures_1.0.3">
			uid = <3638>
		>
		["ITEM"] = <
			name = <"ITEM">
			ancestors = <"LOCATABLE", ...>
			source_schema_id = <"openehr_structures_1.0.3">
			is_abstract = <True>
			uid = <3639>
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
			source_schema_id = <"openehr_structures_1.0.3">
			uid = <3640>
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
			source_schema_id = <"openehr_structures_1.0.3">
			uid = <3641>
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
			source_schema_id = <"openehr_structures_1.0.3">
			uid = <3642>
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
			source_schema_id = <"openehr_structures_1.0.3">
			is_abstract = <True>
			uid = <3643>
		>
		["POINT_EVENT"] = <
			name = <"POINT_EVENT">
			generic_parameter_defs = <
				["T"] = <
					name = <"T">
				>
			>
			ancestors = <"EVENT", ...>
			source_schema_id = <"openehr_structures_1.0.3">
			uid = <3644>
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
			source_schema_id = <"openehr_structures_1.0.3">
			uid = <3645>
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
			source_schema_id = <"openehr_structures_1.0.3">
			uid = <3646>
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
			source_schema_id = <"openehr_structures_1.0.3">
			uid = <3647>
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
			source_schema_id = <"openehr_structures_1.0.3">
			uid = <3648>
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
			source_schema_id = <"openehr_structures_1.0.3">
			uid = <3649>
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
			source_schema_id = <"openehr_structures_1.0.3">
			uid = <3650>
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
			source_schema_id = <"openehr_structures_1.0.3">
			is_abstract = <True>
			uid = <3651>
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
			source_schema_id = <"openehr_structures_1.0.3">
			uid = <3652>
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
			source_schema_id = <"openehr_structures_1.0.3">
			uid = <3653>
		>
		["PARTY_SELF"] = <
			name = <"PARTY_SELF">
			ancestors = <"PARTY_PROXY", ...>
			source_schema_id = <"openehr_structures_1.0.3">
			uid = <3654>
		>
		["PATHABLE"] = <
			name = <"PATHABLE">
			ancestors = <"Any", ...>
			source_schema_id = <"openehr_structures_1.0.3">
			is_abstract = <True>
			uid = <3655>
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
			source_schema_id = <"openehr_structures_1.0.3">
			is_abstract = <True>
			uid = <3656>
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
			source_schema_id = <"openehr_structures_1.0.3">
			uid = <3657>
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
			source_schema_id = <"openehr_structures_1.0.3">
			uid = <3658>
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
			source_schema_id = <"openehr_structures_1.0.3">
			uid = <3659>
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
			source_schema_id = <"openehr_structures_1.0.3">
			uid = <3660>
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
			source_schema_id = <"openehr_structures_1.0.3">
			uid = <3661>
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
			source_schema_id = <"openehr_structures_1.0.3">
			uid = <3662>
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
			source_schema_id = <"openehr_structures_1.0.3">
			uid = <3663>
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
			source_schema_id = <"openehr_structures_1.0.3">
			uid = <3664>
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
			source_schema_id = <"openehr_structures_1.0.3">
			uid = <3665>
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
			source_schema_id = <"openehr_structures_1.0.3">
			uid = <3666>
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
			source_schema_id = <"openehr_basic_types_1.0.3">
			uid = <3508>
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
			source_schema_id = <"openehr_basic_types_1.0.3">
			uid = <3509>
		>
		["PARTY_REF"] = <
			name = <"PARTY_REF">
			ancestors = <"OBJECT_REF", ...>
			source_schema_id = <"openehr_basic_types_1.0.3">
			uid = <3510>
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
			source_schema_id = <"openehr_basic_types_1.0.3">
			is_abstract = <True>
			uid = <3511>
		>
		["TERMINOLOGY_ID"] = <
			name = <"TERMINOLOGY_ID">
			ancestors = <"OBJECT_ID", ...>
			source_schema_id = <"openehr_basic_types_1.0.3">
			uid = <3512>
		>
		["UID_BASED_ID"] = <
			name = <"UID_BASED_ID">
			ancestors = <"OBJECT_ID", ...>
			source_schema_id = <"openehr_basic_types_1.0.3">
			is_abstract = <True>
			uid = <3513>
		>
		["GENERIC_ID"] = <
			name = <"GENERIC_ID">
			ancestors = <"OBJECT_ID", ...>
			source_schema_id = <"openehr_basic_types_1.0.3">
			uid = <3514>
		>
		["ARCHETYPE_ID"] = <
			name = <"ARCHETYPE_ID">
			ancestors = <"OBJECT_ID", ...>
			source_schema_id = <"openehr_basic_types_1.0.3">
			uid = <3515>
		>
		["TEMPLATE_ID"] = <
			name = <"TEMPLATE_ID">
			ancestors = <"OBJECT_ID", ...>
			source_schema_id = <"openehr_basic_types_1.0.3">
			uid = <3516>
		>
		["OBJECT_VERSION_ID"] = <
			name = <"OBJECT_VERSION_ID">
			ancestors = <"UID_BASED_ID", ...>
			source_schema_id = <"openehr_basic_types_1.0.3">
			uid = <3517>
		>
		["HIER_OBJECT_ID"] = <
			name = <"HIER_OBJECT_ID">
			ancestors = <"UID_BASED_ID", ...>
			source_schema_id = <"openehr_basic_types_1.0.3">
			uid = <3518>
		>
		["VERSION_TREE_ID"] = <
			name = <"VERSION_TREE_ID">
			ancestors = <"Any", ...>
			source_schema_id = <"openehr_basic_types_1.0.3">
			uid = <3519>
		>
		["UID"] = <
			name = <"UID">
			ancestors = <"Any", ...>
			source_schema_id = <"openehr_basic_types_1.0.3">
			is_abstract = <True>
			uid = <3520>
		>
		["INTERNET_ID"] = <
			name = <"INTERNET_ID">
			ancestors = <"UID", ...>
			source_schema_id = <"openehr_basic_types_1.0.3">
			uid = <3521>
		>
		["UUID"] = <
			name = <"UUID">
			ancestors = <"UID", ...>
			source_schema_id = <"openehr_basic_types_1.0.3">
			uid = <3522>
		>
		["ISO_OID"] = <
			name = <"ISO_OID">
			ancestors = <"UID", ...>
			source_schema_id = <"openehr_basic_types_1.0.3">
			uid = <3523>
		>
		["DATA_VALUE"] = <
			name = <"DATA_VALUE">
			ancestors = <"Any", ...>
			source_schema_id = <"openehr_basic_types_1.0.3">
			is_abstract = <True>
			uid = <3524>
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
			source_schema_id = <"openehr_basic_types_1.0.3">
			uid = <3525>
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
			source_schema_id = <"openehr_basic_types_1.0.3">
			uid = <3526>
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
			source_schema_id = <"openehr_basic_types_1.0.3">
			uid = <3527>
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
			source_schema_id = <"openehr_basic_types_1.0.3">
			uid = <3528>
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
			source_schema_id = <"openehr_basic_types_1.0.3">
			uid = <3529>
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
			source_schema_id = <"openehr_basic_types_1.0.3">
			uid = <3530>
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
			source_schema_id = <"openehr_basic_types_1.0.3">
			uid = <3531>
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
			source_schema_id = <"openehr_basic_types_1.0.3">
			uid = <3532>
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
			source_schema_id = <"openehr_basic_types_1.0.3">
			uid = <3533>
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
			source_schema_id = <"openehr_basic_types_1.0.3">
			uid = <3534>
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
			source_schema_id = <"openehr_basic_types_1.0.3">
			is_abstract = <True>
			uid = <3535>
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
			source_schema_id = <"openehr_basic_types_1.0.3">
			is_abstract = <True>
			uid = <3536>
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
			source_schema_id = <"openehr_basic_types_1.0.3">
			uid = <3537>
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
			source_schema_id = <"openehr_basic_types_1.0.3">
			is_abstract = <True>
			uid = <3538>
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
			source_schema_id = <"openehr_basic_types_1.0.3">
			is_abstract = <True>
			uid = <3539>
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
			source_schema_id = <"openehr_basic_types_1.0.3">
			uid = <3540>
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
			source_schema_id = <"openehr_basic_types_1.0.3">
			uid = <3541>
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
			source_schema_id = <"openehr_basic_types_1.0.3">
			uid = <3542>
		>
		["PROPORTION_KIND"] = (P_BMM_ENUMERATION_INTEGER) <
			name = <"PROPORTION_KIND">
			ancestors = <"Integer", ...>
			source_schema_id = <"openehr_basic_types_1.0.3">
			item_names = <"pk_ratio", "pk_unitary", "pk_percent", "pk_fraction", "pk_integer_fraction">
			uid = <3543>
		>
		["DV_TEMPORAL"] = <
			name = <"DV_TEMPORAL">
			ancestors = <"DV_ABSOLUTE_QUANTITY", ...>
			source_schema_id = <"openehr_basic_types_1.0.3">
			is_abstract = <True>
			uid = <3544>
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
			source_schema_id = <"openehr_basic_types_1.0.3">
			uid = <3545>
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
			source_schema_id = <"openehr_basic_types_1.0.3">
			uid = <3546>
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
			source_schema_id = <"openehr_basic_types_1.0.3">
			uid = <3547>
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
			source_schema_id = <"openehr_basic_types_1.0.3">
			uid = <3548>
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
			source_schema_id = <"openehr_basic_types_1.0.3">
			is_abstract = <True>
			uid = <3549>
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
			source_schema_id = <"openehr_basic_types_1.0.3">
			uid = <3550>
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
			source_schema_id = <"openehr_basic_types_1.0.3">
			uid = <3551>
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
			source_schema_id = <"openehr_basic_types_1.0.3">
			uid = <3552>
		>
		["DV_EHR_URI"] = <
			name = <"DV_EHR_URI">
			ancestors = <"DV_URI", ...>
			source_schema_id = <"openehr_basic_types_1.0.3">
			uid = <3553>
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
			source_schema_id = <"openehr_basic_types_1.0.3">
			is_abstract = <True>
			uid = <3554>
		>
		["DV_PERIODIC_TIME_SPECIFICATION"] = <
			name = <"DV_PERIODIC_TIME_SPECIFICATION">
			ancestors = <"DV_TIME_SPECIFICATION", ...>
			source_schema_id = <"openehr_basic_types_1.0.3">
			uid = <3555>
		>
		["DV_GENERAL_TIME_SPECIFICATION"] = <
			name = <"DV_GENERAL_TIME_SPECIFICATION">
			ancestors = <"DV_TIME_SPECIFICATION", ...>
			source_schema_id = <"openehr_basic_types_1.0.3">
			uid = <3556>
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
			source_schema_id = <"openehr_demographic_1.0.3">
			is_abstract = <True>
			uid = <3557>
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
			source_schema_id = <"openehr_demographic_1.0.3">
			uid = <3558>
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
			source_schema_id = <"openehr_demographic_1.0.3">
			uid = <3559>
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
			source_schema_id = <"openehr_demographic_1.0.3">
			uid = <3560>
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
			source_schema_id = <"openehr_demographic_1.0.3">
			is_abstract = <True>
			uid = <3561>
		>
		["PERSON"] = <
			name = <"PERSON">
			ancestors = <"ACTOR", ...>
			source_schema_id = <"openehr_demographic_1.0.3">
			uid = <3562>
		>
		["ORGANISATION"] = <
			name = <"ORGANISATION">
			ancestors = <"ACTOR", ...>
			source_schema_id = <"openehr_demographic_1.0.3">
			uid = <3563>
		>
		["GROUP"] = <
			name = <"GROUP">
			ancestors = <"ACTOR", ...>
			source_schema_id = <"openehr_demographic_1.0.3">
			uid = <3564>
		>
		["AGENT"] = <
			name = <"AGENT">
			ancestors = <"ACTOR", ...>
			source_schema_id = <"openehr_demographic_1.0.3">
			uid = <3565>
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
			source_schema_id = <"openehr_demographic_1.0.3">
			uid = <3566>
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
			source_schema_id = <"openehr_demographic_1.0.3">
			uid = <3567>
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
			source_schema_id = <"openehr_demographic_1.0.3">
			uid = <3568>
		>
	>
	model_name = <"EHR_EXTRACT">
	passed = <True>
	missed_class_count = <0>
