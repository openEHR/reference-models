	rm_publisher = <"openehr">
	rm_release = <"1.0.4">
	packages = <
		["ORG.OPENEHR.RM.DEMOGRAPHIC"] = <
			name = <"org.openehr.rm.demographic">
			classes = <"PARTY", "ROLE", "ACTOR", "PERSON", "ORGANISATION", "AGENT", "GROUP", "PARTY_RELATIONSHIP", "CAPABILITY", "CONTACT", "ADDRESS", "PARTY_IDENTITY">
		>
	>
	schema_name = <"rm_demographic">
	schema_revision = <"1.0.4.1">
	schema_lifecycle_state = <"stable">
	schema_author = <"Thomas Beale <thomas.beale@openehr.org>">
	schema_description = <"openEHR Release 1.0.4 demographic model schema">
	bmm_version = <"2.1">
	model_name = <"DEMOGRAPHIC">
	includes = <
		["1"] = <
			id = <"openehr_rm_structures_1.0.4">
		>
	>
	primitive_types = <
		["Any"] = <
			name = <"Any">
			source_schema_id = <"openehr_base_1.1.0">
			is_abstract = <True>
			uid = <6654>
		>
		["Ordered"] = <
			documentation = <"Ancestor of types with total order relation defined, i.e. '<' and '='.">
			name = <"Ordered">
			ancestors = <"Any", ...>
			source_schema_id = <"openehr_base_1.1.0">
			is_abstract = <True>
			uid = <6655>
		>
		["Numeric"] = <
			documentation = <"Ancestor of numeric types.">
			name = <"Numeric">
			ancestors = <"Any", ...>
			source_schema_id = <"openehr_base_1.1.0">
			is_abstract = <True>
			uid = <6656>
		>
		["Ordered_Numeric"] = <
			documentation = <"Ancestor of ordered numeric types.">
			name = <"Ordered_Numeric">
			ancestors = <"Numeric", "Ordered">
			source_schema_id = <"openehr_base_1.1.0">
			is_abstract = <True>
			uid = <6657>
		>
		["Byte"] = <
			name = <"Byte">
			ancestors = <"Any", ...>
			source_schema_id = <"openehr_base_1.1.0">
			uid = <6658>
		>
		["Octet"] = <
			name = <"Octet">
			ancestors = <"Any", ...>
			source_schema_id = <"openehr_base_1.1.0">
			uid = <6659>
		>
		["Boolean"] = <
			name = <"Boolean">
			ancestors = <"Any", ...>
			source_schema_id = <"openehr_base_1.1.0">
			uid = <6660>
		>
		["Integer"] = <
			name = <"Integer">
			ancestors = <"Ordered_Numeric", ...>
			source_schema_id = <"openehr_base_1.1.0">
			uid = <6661>
		>
		["Integer64"] = <
			name = <"Integer64">
			ancestors = <"Ordered_Numeric", ...>
			source_schema_id = <"openehr_base_1.1.0">
			uid = <6662>
		>
		["Real"] = <
			name = <"Real">
			ancestors = <"Ordered_Numeric", ...>
			source_schema_id = <"openehr_base_1.1.0">
			uid = <6663>
		>
		["Double"] = <
			name = <"Double">
			ancestors = <"Ordered_Numeric", ...>
			source_schema_id = <"openehr_base_1.1.0">
			uid = <6664>
		>
		["Character"] = <
			name = <"Character">
			ancestors = <"Any", ...>
			source_schema_id = <"openehr_base_1.1.0">
			uid = <6665>
		>
		["String"] = <
			name = <"String">
			ancestors = <"Any", ...>
			source_schema_id = <"openehr_base_1.1.0">
			uid = <6666>
		>
		["Uri"] = <
			name = <"Uri">
			ancestors = <"String", ...>
			source_schema_id = <"openehr_base_1.1.0">
			uid = <6667>
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
			uid = <6668>
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
			uid = <6669>
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
			uid = <6670>
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
			uid = <6671>
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
			uid = <6672>
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
			uid = <6673>
		>
		["IDate"] = <
			documentation = <"Standard interface for Date concept.">
			name = <"IDate">
			ancestors = <"Any", ...>
			source_schema_id = <"openehr_base_1.1.0">
			is_abstract = <True>
			uid = <6674>
		>
		["ITime"] = <
			documentation = <"Standard interface for Time concept.">
			name = <"ITime">
			ancestors = <"Any", ...>
			source_schema_id = <"openehr_base_1.1.0">
			is_abstract = <True>
			uid = <6675>
		>
		["IDate_time"] = <
			documentation = <"Standard interface for Date_time concept.">
			name = <"IDate_time">
			ancestors = <"Any", ...>
			source_schema_id = <"openehr_base_1.1.0">
			is_abstract = <True>
			uid = <6676>
		>
		["IDuration"] = <
			documentation = <"Standard interface for Duration concept.">
			name = <"IDuration">
			ancestors = <"Any", ...>
			source_schema_id = <"openehr_base_1.1.0">
			is_abstract = <True>
			uid = <6677>
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
			uid = <6678>
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
			uid = <6679>
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
			uid = <6680>
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
			uid = <6681>
		>
		["Iso8601_type"] = <
			documentation = <"Parent of ISO8601 types.">
			name = <"Iso8601_type">
			ancestors = <"Any", ...>
			properties = <
				["value"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"value">
					type = <"String">
				>
			>
			source_schema_id = <"openehr_base_1.1.0">
			uid = <6682>
		>
		["Iso8601_date"] = <
			documentation = <"Date type based on IS8601 representation.">
			name = <"Iso8601_date">
			ancestors = <"IDate", "Iso8601_type">
			source_schema_id = <"openehr_base_1.1.0">
			uid = <6683>
		>
		["Iso8601_time"] = <
			documentation = <"Time type based on IS8601 representation.">
			name = <"Iso8601_time">
			ancestors = <"ITime", "Iso8601_type">
			source_schema_id = <"openehr_base_1.1.0">
			uid = <6684>
		>
		["Iso8601_date_time"] = <
			documentation = <"Date Time type based on IS8601 representation.">
			name = <"Iso8601_date_time">
			ancestors = <"IDate_time", "Iso8601_type">
			source_schema_id = <"openehr_base_1.1.0">
			uid = <6685>
		>
		["Iso8601_duration"] = <
			documentation = <"Duration type based on IS8601 representation.">
			name = <"Iso8601_duration">
			ancestors = <"IDuration", "Iso8601_type">
			source_schema_id = <"openehr_base_1.1.0">
			uid = <6686>
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
			uid = <6687>
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
			uid = <6688>
		>
	>
	class_definitions = <
		["PARTY"] = <
			name = <"PARTY">
			ancestors = <"LOCATABLE", ...>
			properties = <
				["uid"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"uid">
					type = <"UID_BASED_ID">
					is_mandatory = <True>
					is_im_infrastructure = <True>
				>
				["details"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"details">
					type = <"ITEM_STRUCTURE">
				>
				["identities"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"identities">
					cardinality = <|>=1|>
					type_def = <
						type = <"PARTY_IDENTITY">
						container_type = <"List">
					>
				>
				["contacts"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"contacts">
					cardinality = <|>=1|>
					type_def = <
						type = <"CONTACT">
						container_type = <"Set">
					>
				>
				["relationships"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"relationships">
					cardinality = <|>=1|>
					type_def = <
						type = <"PARTY_RELATIONSHIP">
						container_type = <"Set">
					>
				>
				["reverse_relationships"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"reverse_relationships">
					cardinality = <|>=1|>
					type_def = <
						type = <"LOCATABLE_REF">
						container_type = <"List">
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
			uid = <6834>
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
			uid = <6835>
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
			uid = <6836>
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
			uid = <6837>
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
						container_type = <"List">
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
			uid = <6838>
		>
		["PERSON"] = <
			name = <"PERSON">
			ancestors = <"ACTOR", ...>
			source_schema_id = <"openehr_rm_demographic_1.0.4">
			uid = <6839>
		>
		["ORGANISATION"] = <
			name = <"ORGANISATION">
			ancestors = <"ACTOR", ...>
			source_schema_id = <"openehr_rm_demographic_1.0.4">
			uid = <6840>
		>
		["GROUP"] = <
			name = <"GROUP">
			ancestors = <"ACTOR", ...>
			source_schema_id = <"openehr_rm_demographic_1.0.4">
			uid = <6841>
		>
		["AGENT"] = <
			name = <"AGENT">
			ancestors = <"ACTOR", ...>
			source_schema_id = <"openehr_rm_demographic_1.0.4">
			uid = <6842>
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
					cardinality = <|>=1|>
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
			uid = <6843>
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
			uid = <6844>
		>
		["PARTY_RELATIONSHIP"] = <
			name = <"PARTY_RELATIONSHIP">
			ancestors = <"LOCATABLE", ...>
			properties = <
				["source"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"source">
					type = <"PARTY_REF">
					is_mandatory = <True>
				>
				["target"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"target">
					type = <"PARTY_REF">
					is_mandatory = <True>
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
			uid = <6845>
		>
		["DATA_STRUCTURE"] = <
			name = <"DATA_STRUCTURE">
			ancestors = <"LOCATABLE", ...>
			source_schema_id = <"openehr_rm_structures_1.0.4">
			is_abstract = <True>
			uid = <6894>
		>
		["ITEM_STRUCTURE"] = <
			name = <"ITEM_STRUCTURE">
			ancestors = <"DATA_STRUCTURE", ...>
			source_schema_id = <"openehr_rm_structures_1.0.4">
			is_abstract = <True>
			uid = <6895>
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
			uid = <6896>
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
			uid = <6897>
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
			uid = <6898>
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
			uid = <6899>
		>
		["ITEM"] = <
			name = <"ITEM">
			ancestors = <"LOCATABLE", ...>
			source_schema_id = <"openehr_rm_structures_1.0.4">
			is_abstract = <True>
			uid = <6900>
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
			uid = <6901>
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
			uid = <6902>
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
					cardinality = <|>=1|>
					type_def = <
						type = <"EVENT">
						container_type = <"List">
					>
				>
			>
			source_schema_id = <"openehr_rm_structures_1.0.4">
			uid = <6903>
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
			uid = <6904>
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
			uid = <6905>
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
			uid = <6906>
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
			uid = <6907>
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
			uid = <6908>
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
			uid = <6909>
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
						container_type = <"List">
					>
				>
				["reason"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"reason">
					type = <"DV_TEXT">
					is_mandatory = <True>
				>
				["is_pending"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"is_pending">
					type = <"Boolean">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_rm_structures_1.0.4">
			uid = <6910>
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
			uid = <6911>
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
			uid = <6912>
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
					cardinality = <|>=1|>
					type_def = <
						type = <"DV_IDENTIFIER">
						container_type = <"List">
					>
					is_im_runtime = <True>
				>
			>
			source_schema_id = <"openehr_rm_structures_1.0.4">
			uid = <6913>
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
			uid = <6914>
		>
		["PARTY_SELF"] = <
			name = <"PARTY_SELF">
			ancestors = <"PARTY_PROXY", ...>
			source_schema_id = <"openehr_rm_structures_1.0.4">
			uid = <6915>
		>
		["PATHABLE"] = <
			name = <"PATHABLE">
			ancestors = <"Any", ...>
			source_schema_id = <"openehr_rm_structures_1.0.4">
			is_abstract = <True>
			uid = <6916>
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
					cardinality = <|>=1|>
					type_def = <
						type = <"LINK">
						container_type = <"List">
					>
				>
			>
			source_schema_id = <"openehr_rm_structures_1.0.4">
			is_abstract = <True>
			uid = <6917>
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
			uid = <6918>
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
			uid = <6919>
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
			uid = <6920>
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
			uid = <6921>
		>
		["FOLDER"] = <
			name = <"FOLDER">
			ancestors = <"LOCATABLE", ...>
			properties = <
				["folders"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"folders">
					cardinality = <|>=1|>
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
			uid = <6922>
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
						container_type = <"List">
					>
					is_mandatory = <True>
					is_im_infrastructure = <True>
				>
			>
			source_schema_id = <"openehr_rm_structures_1.0.4">
			uid = <6923>
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
					is_mandatory = <True>
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
			uid = <6924>
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
			is_abstract = <True>
			uid = <6925>
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
					cardinality = <|>=1|>
					type_def = <
						type = <"OBJECT_VERSION_ID">
						container_type = <"List">
					>
					is_im_infrastructure = <True>
				>
				["attestations"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"attestations">
					cardinality = <|>=1|>
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
				>
			>
			source_schema_id = <"openehr_rm_structures_1.0.4">
			uid = <6926>
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
			uid = <6927>
		>
		["DATA_VALUE"] = <
			name = <"DATA_VALUE">
			ancestors = <"Any", ...>
			source_schema_id = <"openehr_rm_data_types_1.0.4">
			is_abstract = <True>
			uid = <6801>
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
			uid = <6802>
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
			uid = <6803>
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
			uid = <6804>
		>
		["TERM_MAPPING"] = <
			name = <"TERM_MAPPING">
			properties = <
				["match"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"match">
					type = <"Character">
					is_mandatory = <True>
				>
				["purpose"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"purpose">
					type = <"DV_CODED_TEXT">
				>
				["target"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"target">
					type = <"CODE_PHRASE">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_rm_data_types_1.0.4">
			uid = <6805>
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
					cardinality = <|>=1|>
					type_def = <
						type = <"TERM_MAPPING">
						container_type = <"List">
					>
					is_im_runtime = <True>
				>
			>
			source_schema_id = <"openehr_rm_data_types_1.0.4">
			uid = <6806>
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
			uid = <6807>
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
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_rm_data_types_1.0.4">
			uid = <6808>
		>
		["DV_PARAGRAPH"] = <
			name = <"DV_PARAGRAPH">
			ancestors = <"DATA_VALUE", ...>
			properties = <
				["items"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"items">
					cardinality = <|>=1|>
					type_def = <
						type = <"DV_TEXT">
						container_type = <"List">
					>
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_rm_data_types_1.0.4">
			uid = <6809>
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
			uid = <6810>
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
					is_mandatory = <True>
				>
				["meaning"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"meaning">
					type = <"DV_TEXT">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_rm_data_types_1.0.4">
			uid = <6811>
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
				["other_reference_ranges"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"other_reference_ranges">
					type_def = <
						type_def = (P_BMM_GENERIC_TYPE) <
							root_type = <"REFERENCE_RANGE">
							generic_parameters = <"DV_ORDERED", ...>
						>
						container_type = <"List">
					>
				>
			>
			source_schema_id = <"openehr_rm_data_types_1.0.4">
			is_abstract = <True>
			uid = <6812>
		>
		["DV_QUANTIFIED"] = <
			name = <"DV_QUANTIFIED">
			ancestors = <"DV_ORDERED", ...>
			properties = <
				["magnitude_status"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"magnitude_status">
					type = <"String">
					is_im_runtime = <True>
				>
				["accuracy"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"accuracy">
					type = <"Any">
				>
			>
			source_schema_id = <"openehr_rm_data_types_1.0.4">
			is_abstract = <True>
			uid = <6813>
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
			uid = <6814>
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
			uid = <6815>
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
			uid = <6816>
		>
		["DV_QUANTITY"] = <
			name = <"DV_QUANTITY">
			ancestors = <"DV_AMOUNT", ...>
			properties = <
				["magnitude"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"magnitude">
					type = <"Real">
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
				["normal_range"] = (P_BMM_GENERIC_PROPERTY) <
					name = <"normal_range">
					type_def = <
						root_type = <"DV_INTERVAL">
						generic_parameters = <"DV_QUANTITY", ...>
					>
				>
				["other_reference_ranges"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"other_reference_ranges">
					type_def = <
						type_def = (P_BMM_GENERIC_TYPE) <
							root_type = <"REFERENCE_RANGE">
							generic_parameters = <"DV_QUANTITY", ...>
						>
						container_type = <"List">
					>
				>
			>
			source_schema_id = <"openehr_rm_data_types_1.0.4">
			uid = <6817>
		>
		["DV_COUNT"] = <
			name = <"DV_COUNT">
			ancestors = <"DV_AMOUNT", ...>
			properties = <
				["magnitude"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"magnitude">
					type = <"Integer64">
				>
				["normal_range"] = (P_BMM_GENERIC_PROPERTY) <
					name = <"normal_range">
					type_def = <
						root_type = <"DV_INTERVAL">
						generic_parameters = <"DV_COUNT", ...>
					>
				>
				["other_reference_ranges"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"other_reference_ranges">
					type_def = <
						type_def = (P_BMM_GENERIC_TYPE) <
							root_type = <"REFERENCE_RANGE">
							generic_parameters = <"DV_COUNT", ...>
						>
						container_type = <"List">
					>
				>
			>
			source_schema_id = <"openehr_rm_data_types_1.0.4">
			uid = <6818>
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
				["normal_range"] = (P_BMM_GENERIC_PROPERTY) <
					name = <"normal_range">
					type_def = <
						root_type = <"DV_INTERVAL">
						generic_parameters = <"DV_PROPORTION", ...>
					>
				>
				["other_reference_ranges"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"other_reference_ranges">
					type_def = <
						type_def = (P_BMM_GENERIC_TYPE) <
							root_type = <"REFERENCE_RANGE">
							generic_parameters = <"DV_PROPORTION", ...>
						>
						container_type = <"List">
					>
				>
			>
			source_schema_id = <"openehr_rm_data_types_1.0.4">
			uid = <6819>
		>
		["PROPORTION_KIND"] = (P_BMM_ENUMERATION_INTEGER) <
			name = <"PROPORTION_KIND">
			ancestors = <"Integer", ...>
			source_schema_id = <"openehr_rm_data_types_1.0.4">
			item_names = <"pk_ratio", "pk_unitary", "pk_percent", "pk_fraction", "pk_integer_fraction">
			uid = <6820>
		>
		["DV_TEMPORAL"] = <
			name = <"DV_TEMPORAL">
			ancestors = <"DV_ABSOLUTE_QUANTITY", ...>
			properties = <
				["accuracy"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"accuracy">
					type = <"DV_DURATION">
				>
			>
			source_schema_id = <"openehr_rm_data_types_1.0.4">
			is_abstract = <True>
			uid = <6821>
		>
		["DV_DATE"] = <
			name = <"DV_DATE">
			ancestors = <"DV_TEMPORAL", "Iso8601_date">
			properties = <
				["value"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"value">
					type = <"String">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_rm_data_types_1.0.4">
			uid = <6822>
		>
		["DV_TIME"] = <
			name = <"DV_TIME">
			ancestors = <"DV_TEMPORAL", "Iso8601_time">
			properties = <
				["value"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"value">
					type = <"String">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_rm_data_types_1.0.4">
			uid = <6823>
		>
		["DV_DATE_TIME"] = <
			name = <"DV_DATE_TIME">
			ancestors = <"DV_TEMPORAL", "Iso8601_date_time">
			properties = <
				["value"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"value">
					type = <"String">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_rm_data_types_1.0.4">
			uid = <6824>
		>
		["DV_DURATION"] = <
			name = <"DV_DURATION">
			ancestors = <"DV_AMOUNT", "Iso8601_duration">
			properties = <
				["value"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"value">
					type = <"String">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_rm_data_types_1.0.4">
			uid = <6825>
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
			uid = <6826>
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
				["thumbnail"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"thumbnail">
					type = <"DV_MULTIMEDIA">
				>
				["size"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"size">
					type = <"Integer">
					is_im_runtime = <True>
				>
			>
			source_schema_id = <"openehr_rm_data_types_1.0.4">
			uid = <6827>
		>
		["DV_PARSABLE"] = <
			name = <"DV_PARSABLE">
			ancestors = <"DV_ENCAPSULATED", ...>
			properties = <
				["value"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"value">
					type = <"String">
					is_mandatory = <True>
				>
				["formalism"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"formalism">
					type = <"String">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_rm_data_types_1.0.4">
			uid = <6828>
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
			uid = <6829>
		>
		["DV_EHR_URI"] = <
			name = <"DV_EHR_URI">
			ancestors = <"DV_URI", ...>
			source_schema_id = <"openehr_rm_data_types_1.0.4">
			uid = <6830>
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
			uid = <6831>
		>
		["DV_PERIODIC_TIME_SPECIFICATION"] = <
			name = <"DV_PERIODIC_TIME_SPECIFICATION">
			ancestors = <"DV_TIME_SPECIFICATION", ...>
			source_schema_id = <"openehr_rm_data_types_1.0.4">
			uid = <6832>
		>
		["DV_GENERAL_TIME_SPECIFICATION"] = <
			name = <"DV_GENERAL_TIME_SPECIFICATION">
			ancestors = <"DV_TIME_SPECIFICATION", ...>
			source_schema_id = <"openehr_rm_data_types_1.0.4">
			uid = <6833>
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
			uid = <6689>
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
			uid = <6690>
		>
		["PARTY_REF"] = <
			name = <"PARTY_REF">
			ancestors = <"OBJECT_REF", ...>
			source_schema_id = <"openehr_base_1.1.0">
			uid = <6691>
		>
		["ACCESS_GROUP_REF"] = <
			name = <"ACCESS_GROUP_REF">
			ancestors = <"OBJECT_REF", ...>
			source_schema_id = <"openehr_base_1.1.0">
			uid = <6692>
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
			uid = <6693>
		>
		["TERMINOLOGY_ID"] = <
			name = <"TERMINOLOGY_ID">
			ancestors = <"OBJECT_ID", ...>
			source_schema_id = <"openehr_base_1.1.0">
			uid = <6694>
		>
		["UID_BASED_ID"] = <
			name = <"UID_BASED_ID">
			ancestors = <"OBJECT_ID", ...>
			source_schema_id = <"openehr_base_1.1.0">
			is_abstract = <True>
			uid = <6695>
		>
		["GENERIC_ID"] = <
			name = <"GENERIC_ID">
			ancestors = <"OBJECT_ID", ...>
			properties = <
				["scheme"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"scheme">
					type = <"String">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_base_1.1.0">
			uid = <6696>
		>
		["ARCHETYPE_ID"] = <
			name = <"ARCHETYPE_ID">
			ancestors = <"OBJECT_ID", ...>
			source_schema_id = <"openehr_base_1.1.0">
			uid = <6697>
		>
		["ARCHETYPE_HRID"] = <
			name = <"ARCHETYPE_HRID">
			ancestors = <"OBJECT_ID", ...>
			source_schema_id = <"openehr_base_1.1.0">
			uid = <6698>
		>
		["TEMPLATE_ID"] = <
			name = <"TEMPLATE_ID">
			ancestors = <"OBJECT_ID", ...>
			source_schema_id = <"openehr_base_1.1.0">
			uid = <6699>
		>
		["OBJECT_VERSION_ID"] = <
			name = <"OBJECT_VERSION_ID">
			ancestors = <"UID_BASED_ID", ...>
			source_schema_id = <"openehr_base_1.1.0">
			uid = <6700>
		>
		["HIER_OBJECT_ID"] = <
			name = <"HIER_OBJECT_ID">
			ancestors = <"UID_BASED_ID", ...>
			source_schema_id = <"openehr_base_1.1.0">
			uid = <6701>
		>
		["VERSION_TREE_ID"] = <
			name = <"VERSION_TREE_ID">
			ancestors = <"Any", ...>
			properties = <
				["value"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"value">
					type = <"String">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_base_1.1.0">
			uid = <6702>
		>
		["UID"] = <
			name = <"UID">
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
			uid = <6703>
		>
		["INTERNET_ID"] = <
			name = <"INTERNET_ID">
			ancestors = <"UID", ...>
			source_schema_id = <"openehr_base_1.1.0">
			uid = <6704>
		>
		["UUID"] = <
			name = <"UUID">
			ancestors = <"UID", ...>
			source_schema_id = <"openehr_base_1.1.0">
			uid = <6705>
		>
		["ISO_OID"] = <
			name = <"ISO_OID">
			ancestors = <"UID", ...>
			source_schema_id = <"openehr_base_1.1.0">
			uid = <6706>
		>
		["VALIDITY_KIND"] = (P_BMM_ENUMERATION_INTEGER) <
			name = <"VALIDITY_KIND">
			ancestors = <"Integer", ...>
			source_schema_id = <"openehr_base_1.1.0">
			item_names = <"mandatory", "optional", "prohibited">
			uid = <6707>
		>
		["AUTHORED_RESOURCE"] = <
			name = <"AUTHORED_RESOURCE">
			ancestors = <"Any", ...>
			properties = <
				["original_language"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"original_language">
					type = <"CODE_PHRASE">
					is_mandatory = <True>
				>
				["is_controlled"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"is_controlled">
					type = <"Boolean">
				>
				["translations"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"translations">
					cardinality = <|>=1|>
					type_def = <
						type = <"TRANSLATION_DETAILS">
						container_type = <"List">
					>
				>
				["description"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"description">
					type = <"RESOURCE_DESCRIPTION">
				>
			>
			source_schema_id = <"openehr_base_1.1.0">
			is_abstract = <True>
			uid = <6708>
		>
		["TRANSLATION_DETAILS"] = <
			name = <"TRANSLATION_DETAILS">
			ancestors = <"Any", ...>
			properties = <
				["language"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"language">
					type = <"CODE_PHRASE">
					is_mandatory = <True>
				>
				["author"] = (P_BMM_GENERIC_PROPERTY) <
					name = <"author">
					type_def = <
						root_type = <"Hash">
						generic_parameters = <"String", "String">
					>
					is_mandatory = <True>
				>
				["accreditaton"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"accreditaton">
					type = <"String">
				>
				["other_details"] = (P_BMM_GENERIC_PROPERTY) <
					name = <"other_details">
					type_def = <
						root_type = <"Hash">
						generic_parameters = <"String", "String">
					>
				>
			>
			source_schema_id = <"openehr_base_1.1.0">
			uid = <6709>
		>
		["RESOURCE_DESCRIPTION"] = <
			name = <"RESOURCE_DESCRIPTION">
			ancestors = <"Any", ...>
			properties = <
				["original_author"] = (P_BMM_GENERIC_PROPERTY) <
					name = <"original_author">
					type_def = <
						root_type = <"Hash">
						generic_parameters = <"String", "String">
					>
					is_mandatory = <True>
				>
				["other_contributors"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"other_contributors">
					cardinality = <|>=0|>
					type_def = <
						type = <"String">
						container_type = <"List">
					>
				>
				["lifecycle_state"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"lifecycle_state">
					type = <"String">
					is_mandatory = <True>
				>
				["resource_package_uri"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"resource_package_uri">
					type = <"String">
				>
				["other_details"] = (P_BMM_GENERIC_PROPERTY) <
					name = <"other_details">
					type_def = <
						root_type = <"Hash">
						generic_parameters = <"String", "String">
					>
				>
				["parent_resource"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"parent_resource">
					type = <"AUTHORED_RESOURCE">
					is_mandatory = <True>
				>
				["details"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"details">
					cardinality = <|>=1|>
					type_def = <
						type = <"RESOURCE_DESCRIPTION_ITEM">
						container_type = <"List">
					>
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_base_1.1.0">
			uid = <6710>
		>
		["RESOURCE_DESCRIPTION_ITEM"] = <
			name = <"RESOURCE_DESCRIPTION_ITEM">
			ancestors = <"Any", ...>
			properties = <
				["language"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"language">
					type = <"CODE_PHRASE">
					is_mandatory = <True>
				>
				["purpose"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"purpose">
					type = <"String">
					is_mandatory = <True>
				>
				["keywords"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"keywords">
					cardinality = <|>=0|>
					type_def = <
						type = <"String">
						container_type = <"List">
					>
				>
				["use"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"use">
					type = <"String">
				>
				["misuse"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"misuse">
					type = <"String">
				>
				["copyright"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"copyright">
					type = <"String">
				>
				["original_resource_uri"] = (P_BMM_CONTAINER_PROPERTY) <
					name = <"original_resource_uri">
					cardinality = <|>=0|>
					type_def = <
						type_def = (P_BMM_GENERIC_TYPE) <
							root_type = <"Hash">
							generic_parameters = <"String", "String">
						>
						container_type = <"List">
					>
				>
				["other_details"] = (P_BMM_GENERIC_PROPERTY) <
					name = <"other_details">
					type_def = <
						root_type = <"Hash">
						generic_parameters = <"String", "String">
					>
					is_mandatory = <True>
				>
			>
			source_schema_id = <"openehr_base_1.1.0">
			uid = <6711>
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
			uid = <6712>
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
			uid = <6713>
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
			uid = <6714>
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
			uid = <6715>
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
			uid = <6716>
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
			uid = <6717>
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
			uid = <6718>
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
			uid = <6719>
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
			uid = <6720>
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
			uid = <6721>
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
			uid = <6722>
		>
	>
	passed = <True>
	missed_class_count = <0>
