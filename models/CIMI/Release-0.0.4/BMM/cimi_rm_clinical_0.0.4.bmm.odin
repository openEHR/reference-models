	packages = <
		["CIMI_CLINICAL"] = <
			packages = <
				["ASSERTION"] = <
					name = <"Assertion">
					classes = <"Assertion", "FindingSiteAssertion", "ConditionAssertion">
				>
				["ADVERSEREACTION"] = <
					name = <"AdverseReaction">
					classes = <"AdverseReaction", "Causality">
				>
				["ADVERSESENSITIVITYTOSUBSTANCE"] = <
					name = <"AdverseSensitivityToSubstance">
					classes = <"AdverseSensitivityToSubstance", ...>
				>
				["CLINICALSTATEMENT"] = <
					name = <"ClinicalStatement">
					classes = <"IndivisibleClinicalStatement", "CompoundClinicalStatement", "ClinicalStatement", "Component", "InformationEntry">
				>
				["COMMON"] = <
					name = <"Common">
					classes = <"ReferenceRange", "Use", "QuantitativeReferenceRange", "QualitativeReferenceRange", "Annotation", "Repeat", "ResearchStudy", "Timing", "DiscreteTiming", "RepeatTiming", "FrequencyBasedRepeat", "TimeBoundRepeatTiming", "IterationBoundRepeatTiming", "Preference", "AnatomicalLocation", "ResearchStudyArm", "DimensionalFeature">
				>
				["ROLE"] = <
					name = <"Role">
					classes = <"HealthCareRole", "HealthCareProviderRole", "HealthCareProviderOrganizationRole", "HealthCareProviderIndividualRole", "HealthCareConsumerRole", "FamilyMembership">
				>
				["PHARMACY"] = <
					name = <"Pharmacy">
					classes = <"DispenseBase", "DispenseEvent", "DispenseInstructions", "DosageInstruction", "MedicationProcedure", "MedicationDispensePerformance", "MedicationOrder", "PharmacyPromise", "SubstitutionBase", "SubstitutionInformation", "SubstitutionInstruction", "DosageEvent", "Dosage">
				>
				["ENCOUNTER"] = <
					name = <"Encounter">
					classes = <"DurableEncounter", "Admission", "Encounter", "Diagnosis", "Discharge", "EmergencyEncounter", "DetailedEncounter", "HomeBasePrimaryCareEncounter", "Hospice", "InpatientEncounter", "LongTermCare", "OutpatientVisit", "Referral", "ShortStay", "VirtualEncounter", "Transfer">
				>
				["EVALUATIONRESULT"] = <
					name = <"EvaluationResult">
					classes = <"LaboratoryTestResult", "PhysicalEvaluationResult", "EvaluationResult">
				>
				["PROCEDURE"] = <
					name = <"Procedure">
					classes = <"LaboratoryProcedure", "SpecimenCollection", "SurgicalProcedure", "SurgicalProcedureOnDevice", "ImagingProcedure", "ModifyTargetAction", "SpecimenProcessing", "PhysicalEvaluation">
				>
				["CONTEXTCORE"] = <
					name = <"ContextCore">
					classes = <"Absent", "ActionContext", "FindingContext", "KnownOrSuspectedPresent", "NonCompletion", "NonPerformance", "Order", "Performance", "Plan", "Promise", "Proposal", "ProposalAgainst", "StatementContext", "Request", "EventContext", "PresenceAbsenceContext", "GoalContext", "NoKnown", "AssertionKnownOrSuspectedPresent">
				>
				["TOPICCORE"] = <
					name = <"TopicCore">
					classes = <"ProcedureTopic", "EventTopic", "FindingTopic", "StatementTopic">
				>
				["ENTITY"] = <
					name = <"Entity">
					classes = <"ClinicalDevice", "Medication", "Specimen", "Substance", "SpecimenContainer", "Ingredient", "HealthCareOrganization", "HealthCareFacilityLocation">
				>
				["INFORMATIONENTRYASSOCIATION"] = <
					name = <"InformationEntryAssociation">
					classes = <"InformationEntryAssociation", ...>
				>
				["PROVENANCE"] = <
					name = <"Provenance">
					classes = <"Signature", "Attribution", "Provenance">
				>
				["PATIENTEDUCATION"] = <
					name = <"PatientEducation">
					classes = <"PatientEducationPerformance", "PatientRelatedEducation">
				>
				["ADVERSEEVENTREPORTING"] = <
					name = <"AdverseEventReporting">
					classes = <"AdverseEventEntry", "AdverseFindingAdverseEvent", "ReportedActivity", "ClinicalStudyAdverseFinding", "AdverseEventReportEntry", "WorkflowBreachAdverseEvent">
				>
				["SKINWOUNDASSERTION"] = <
					name = <"SkinWoundAssertion">
					classes = <"WoundAssertion", "Tunneling", "Undermining", "WoundExudate", "WoundBed", "BradenScaleAssessmentResult", "WoundEdge", "TunnelingComponent", "UnderminingComponent", "WoundExudateComponent", "WoundBedAppearance", "WoundBedColor">
				>
			>
			name = <"CIMI_Clinical">
		>
	>
	rm_publisher = <"CIMI">
	schema_name = <"RM_CLINICAL">
	rm_release = <"0.0.4">
	schema_revision = <"Thu Dec 14 17:20:59 PST 2017">
	schema_lifecycle_state = <"Informative">
	schema_author = <"Unknown">
	schema_description = <"CIMI_RM_CLINICAL.v0.0.4.mdzip - Schema generated from UML">
	bmm_version = <"2.1">
	includes = <
		["1"] = <
			id = <"cimi_rm_core_0.0.4">
		>
		["2"] = <
			id = <"cimi_rm_foundation_0.0.4">
		>
	>
	class_definitions = <
		["IndivisibleClinicalStatement"] = <
			documentation = <"Represents clinical statements that cannot be further decomposed into multiple independent clinical statements, i.e., all clinical statements that are not CompoundClinicalStatements. An indivisible clinical statement must be able to stand alone such as a systolic blood pressure measurement which can be interpreted both inside a blood pressure panel or on its own. If the statement cannot stand alone, e.g., the size of a wound, which cannot exist outside the context of the wound itself, then the Component class should be used instead.

">
			name = <"IndivisibleClinicalStatement">
			ancestors = <"ClinicalStatement", ...>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <268>
		>
		["CompoundClinicalStatement"] = <
			documentation = <"A CompoundClinicalStatement is a clinical statement representing a collection of independent clinical statements. Each statement within a compound clinical statement may exist outside of the context of the compound clinical statement without any alteration to its meaning. An example is a Panel. Note that complex medications are indivisible clinical statements even though their structure may be a composite data structure. They are generally treated as an independent entry in a record and their parts do not constitute independent entries in a record.">
			name = <"CompoundClinicalStatement">
			ancestors = <"ClinicalStatement", ...>
			properties = <
				["content"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"The clinical statements that make up the composite statement, for instance, the individual measurements in a Complete Blood Count. ">
					name = <"content">
					cardinality = <|>=0|>
					type_def = <
						type = <"ClinicalStatement">
						container_type = <"List">
					>
				>
			>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <269>
		>
		["ClinicalStatement"] = <
			documentation = <"A special type of information entry consisting of a topic and a context.  The ClinicalStatement class provides the core pattern for more specific clinical statement archetypes, such as a statement that a finding has been found in a patient or that a procedure has been proposed by a clinical decision support system.

The ClinicalStatement pattern defines the core attributes common to most clinical statements and specifies a composition pattern that encourage model component reuse and better alignment with the SNOMED CT Concept Model. 

A clinical statement is composed of the StatementTopic class (grouping of attributes for capturing information about a procedure or a clinical finding) and the StatementContext class (grouping of attributes providing the context for the statement topic such as whether a procedure was performed, requested, not performed or whether a finding is suspected present or absent in the patient). At the archetype level, the topic and context components are coordinated to form the clinical statement. For instance, the composition of the ProcedureTopic with the NotPerformed context indicates that the given procedure was not performed. 
">
			name = <"ClinicalStatement">
			generic_parameter_defs = <
				["T"] = <
					name = <"T">
					conforms_to_type = <"StatementTopic">
				>
				["C"] = <
					name = <"C">
					conforms_to_type = <"StatementContext">
				>
			>
			ancestors = <"InformationEntry", ...>
			properties = <
				["topic"] = (P_BMM_SINGLE_PROPERTY_OPEN) <
					documentation = <"What the statement is about, e.g., the kind of finding or action. The range of this attribute is a structure (StatementTopic) rather than a value set. For instance, if the 'topic' attribute's meaning is bound to 'ProcedureTopic, then the topic must be a specialization of ProcedureTopic. This attribute aligns with the SNOMED CT 'Associated finding (attribute)' (SCTID: 246090004) and 'Associated procedure (attribute)' (SCTID: 363589002).">
					name = <"topic">
					type = <"T">
				>
				["context"] = (P_BMM_SINGLE_PROPERTY_OPEN) <
					documentation = <"The ontological status of the statement, e.g., whether it exists, does not exist, is planned, etc. Attribute aligns with the SNOMED CT Situation with Explicit Context (SWEC)  Concept Model context attributes 'Finding context (attribute)' (SCTID: 408729009) and 'Procedure context (attribute)' (SCTID: 408730004). The range of this attribute is a structure (StatementContext) rather than a value set. The context of the clinical statement must align with the range specified by the SWEC Concept Model. For instance, if the 'context' attribute's meaning is bound to 'Finding context', then the context may not be a specialization of the ActionContext statement context. Instead, it should be a specialization of the FindingContext statement context.">
					name = <"context">
					type = <"C">
				>
				["encounter"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Encounter associated with this clinical statement.">
					name = <"encounter">
					type = <"DetailedEncounter">
				>
			>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <270>
		>
		["Component"] = <
			documentation = <"The component abstract class is used to represent dependent observations, findings, or procedures associated with the parent clinical statement. A dependent component is a component that does not have an independent existence outside of its parent. For instance, the description of a wound bed must exist in the context of a wound assertion. However, a systolic blood pressure measurement can exist independently of a blood pressure panel. This distinction is important. Collections of independent statements should be represented using the composition structure offered by the CompoundClinicalStatement class. Collections of dependent structures should be modeled using the Component pattern.">
			name = <"Component">
			generic_parameter_defs = <
				["T"] = <
					name = <"T">
					conforms_to_type = <"StatementTopic">
				>
				["C"] = <
					name = <"C">
					conforms_to_type = <"StatementContext">
				>
			>
			ancestors = <"Locatable", ...>
			properties = <
				["topic"] = (P_BMM_SINGLE_PROPERTY_OPEN) <
					documentation = <"The topic of the Component. See ClinicalStatement.topic for details.">
					name = <"topic">
					type = <"T">
				>
				["context"] = (P_BMM_SINGLE_PROPERTY_OPEN) <
					documentation = <"The context associated with the topic of the component. See ClinicalStatement.context for details.">
					name = <"context">
					type = <"C">
				>
			>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <271>
		>
		["InformationEntry"] = <
			documentation = <"An entry in a patient record or in a report, generally used for the documentation of clinical information about a subject of information such as a patient or a relative of the patient, asserted by a particular source, recorded, and potentially verified.">
			name = <"InformationEntry">
			ancestors = <"Entry", ...>
			properties = <
				["identifier"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"A unique identifier(s) for this clinical statement. Some identifiers may include version information.
">
					name = <"identifier">
					cardinality = <|>=0|>
					type_def = <
						type = <"Identifier">
						container_type = <"List">
					>
				>
				["subjectOfInformation"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The subject of the entry, which is unusually the patient, but may also be a relative of the patient, a a cohort, a device, etc. When the subject of information is the same as the subject of record, the relationship 'self' is used. In cases such as family history or descriptions of device (mal)function, the relationship type is something other than 'self'. This attribute aligns with the SNOMED CT Situation with Explicit Context (SWEC) and is bound to the SNOMED attribute: 'Subject relationship context (attribute)' (SCTID: 408732007).">
					name = <"subjectOfInformation">
					type = <"PartyAssociation">
				>
				["attribution"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"Attribution information integral to the content of this entry, such as who recorded the entry into the  underlying system. Any changes to the attribution information will result in either a version change or a new information entry. If such information does not impact the entry itself, Provenance should be used instead.">
					name = <"attribution">
					cardinality = <|>=0|>
					type_def = <
						type = <"Attribution">
						container_type = <"List">
					>
				>
				["additionalText"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"An unstructured note appended to the information entry.">
					name = <"additionalText">
					cardinality = <|>=0|>
					type_def = <
						type = <"Annotation">
						container_type = <"List">
					>
				>
				["recordStatus"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Concept indicating the state of this record, e.g., 'entered in error'.">
					name = <"recordStatus">
					type = <"Concept">
				>
			>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <272>
		>
		["ReferenceRange"] = <
			documentation = <"A reference range for the specific instance after lookup from, say, a reference range table given specific criteria. Note that this reference range is not definitional in nature but rather refers to the reference range considered for the given observation for a subject.">
			name = <"ReferenceRange">
			ancestors = <"Locatable", ...>
			properties = <
				["referenceCriterion"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"] Indicates how the given range should be interpreted, for example, as normal, critically high, etc.">
					name = <"referenceCriterion">
					type = <"Concept">
				>
				["narrative"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"A human-oriented description of the reference range.">
					name = <"narrative">
					type = <"PlainText">
				>
				["criteria"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"The specific criteria that apply for the given reference range. For instance, reference ranges may be specified in a lookup table based on a set of criteria. If a row in this table is selected as the applicable reference range for a measurement, 'criteria' lists the specific criteria for that row in the table. E.g., reference range for post-menopausal women.">
					name = <"criteria">
					cardinality = <|>=0|>
					type_def = <
						type = <"Concept">
						container_type = <"List">
					>
				>
			>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <273>
		>
		["Use"] = <
			documentation = <"Structure capturing usage preferences for, say, a name, an address, or contact information. ">
			name = <"Use">
			ancestors = <"Locatable", ...>
			properties = <
				["value"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"A code for the use.">
					name = <"value">
					type = <"Concept">
					is_mandatory = <True>
				>
				["dateTimeRange"] = (P_BMM_GENERIC_PROPERTY) <
					documentation = <"Period when the use is in effect.">
					name = <"dateTimeRange">
					type_def = <
						root_type = <"IntervalValue">
						generic_parameters = <"Date", ...>
					>
				>
			>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <274>
		>
		["QuantitativeReferenceRange"] = <
			documentation = <"A reference range specified by a quantitative interval.">
			name = <"QuantitativeReferenceRange">
			ancestors = <"ReferenceRange", ...>
			properties = <
				["range"] = (P_BMM_GENERIC_PROPERTY) <
					documentation = <"The specified reference range.">
					name = <"range">
					type_def = <
						root_type = <"IntervalValue">
						generic_parameters = <"Quantity", ...>
					>
					is_mandatory = <True>
				>
			>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <275>
		>
		["QualitativeReferenceRange"] = <
			documentation = <"A qualitative reference range specified by a code - e.g., abnormal, severely abnormal.">
			name = <"QualitativeReferenceRange">
			ancestors = <"ReferenceRange", ...>
			properties = <
				["referenceValue"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"Code representing the reference range.">
					name = <"referenceValue">
					cardinality = <|>=1|>
					type_def = <
						type = <"Concept">
						container_type = <"List">
					>
					is_mandatory = <True>
				>
			>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <276>
		>
		["Annotation"] = <
			documentation = <"A note containing information relevant to an entry, also containing information about who commented and when.">
			name = <"Annotation">
			ancestors = <"Locatable", ...>
			properties = <
				["authored"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The attribution for the given comment or note.">
					name = <"authored">
					type = <"Attribution">
				>
				["content"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The annotation's text content.">
					name = <"content">
					type = <"Text">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <277>
		>
		["Repeat"] = <
			documentation = <"When a repeated event is to occur.">
			name = <"Repeat">
			ancestors = <"Locatable", ...>
			properties = <
				["dayOfWeek"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"A day of the week such as Monday, Sunday.">
					name = <"dayOfWeek">
					cardinality = <|>=0|>
					type_def = <
						type = <"Concept">
						container_type = <"List">
					>
				>
				["timeOfDay"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"Time of day for action, independent of time zone or date, for example, 10:00 am. ">
					name = <"timeOfDay">
					cardinality = <|>=0|>
					type_def = <
						type = <"Time">
						container_type = <"List">
					>
				>
				["code"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"A timing abbreviation such as TID or Q8H that expresses both the frequency of the action in a period of time but also whether the interval between events is fixed (every 8 hours) or variable (before meals, when awake).">
					name = <"code">
					type = <"Concept">
				>
			>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <278>
		>
		["ResearchStudy"] = <
			documentation = <"A process where a researcher or organization plans and then executes a series of steps intended to increase the field of healthcare-related knowledge. This includes studies of safety, efficacy, comparative effectiveness and other information about medications, devices, therapies and other interventional and investigative techniques. A ResearchStudy involves the gathering of information about human or animal subjects.">
			name = <"ResearchStudy">
			ancestors = <"Locatable", ...>
			properties = <
				["identifier"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"Identifiers assigned to this research study by the sponsor or other systems.">
					name = <"identifier">
					cardinality = <|>=0|>
					type_def = <
						type = <"Identifier">
						container_type = <"List">
					>
				>
				["title"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"A short, descriptive user-friendly label for the study.">
					name = <"title">
					type = <"PlainText">
				>
				["partOf"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"A larger research study of which this particular study is a component or step.">
					name = <"partOf">
					cardinality = <|>=0|>
					type_def = <
						type = <"ResearchStudy">
						container_type = <"List">
					>
				>
				["status"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The current state of the study.">
					name = <"status">
					type = <"Concept">
				>
				["category"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"Codes categorizing the type of study such as investigational vs. observational, type of blinding, type of randomization, safety vs. efficacy, etc.">
					name = <"category">
					cardinality = <|>=0|>
					type_def = <
						type = <"Concept">
						container_type = <"List">
					>
				>
				["focus"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"The condition(s), medication(s), food(s), therapy(ies), device(s) or other concerns or interventions that the study is seeking to gain more information about.">
					name = <"focus">
					cardinality = <|>=0|>
					type_def = <
						type = <"Concept">
						container_type = <"List">
					>
				>
				["contact"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"Contact details to assist a user in learning more about or engaging with the study.">
					name = <"contact">
					cardinality = <|>=0|>
					type_def = <
						type = <"ElectronicContact">
						container_type = <"List">
					>
				>
				["keyword"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"Key terms to aid in searching for or filtering the study.">
					name = <"keyword">
					cardinality = <|>=0|>
					type_def = <
						type = <"Concept">
						container_type = <"List">
					>
				>
				["jurisdiction"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"Indicates the country, state or other region taking legal responsibility for the conduct of the study.">
					name = <"jurisdiction">
					cardinality = <|>=0|>
					type_def = <
						type = <"Concept">
						container_type = <"List">
					>
				>
				["description"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"A full description of how the study is being conducted.">
					name = <"description">
					type = <"PlainText">
				>
				["studyPeriod"] = (P_BMM_GENERIC_PROPERTY) <
					documentation = <"Identifies the start date and the expected (or actual, depending on status) end date for the study.

">
					name = <"studyPeriod">
					type_def = <
						root_type = <"IntervalValue">
						generic_parameters = <"Date", ...>
					>
				>
				["sponsor"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The organization responsible for the execution of the study.">
					name = <"sponsor">
					type = <"Organization">
				>
				["principalInvestigator"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Indicates the individual who has primary oversite of the execution of the study.">
					name = <"principalInvestigator">
					type = <"Party">
				>
				["site"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"Clinic, hospital or other healthcare location that is participating in the study.">
					name = <"site">
					cardinality = <|>=0|>
					type_def = <
						type = <"Location">
						container_type = <"List">
					>
				>
				["reasonStopped"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"A description and&#47;or code explaining the premature termination of the study.">
					name = <"reasonStopped">
					type = <"Concept">
				>
				["note"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"Comments made about the event by the performer, subject or other participants.">
					name = <"note">
					cardinality = <|>=0|>
					type_def = <
						type = <"Annotation">
						container_type = <"List">
					>
				>
				["arm"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"Arm refers to a pre-specified group or subgroup of participants in a clinical trial assigned to receive specific interventions (or no intervention) according to a protocol.">
					name = <"arm">
					cardinality = <|>=0|>
					type_def = <
						type = <"ResearchStudyArm">
						container_type = <"List">
					>
				>
			>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <279>
		>
		["Timing"] = <
			documentation = <"A timing expression such as points in time when an activity was performed, a frequency of occurrence, or a relative timing expression relative to some event.">
			name = <"Timing">
			ancestors = <"Locatable", ...>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <280>
		>
		["DiscreteTiming"] = <
			documentation = <"A timing expression expressed as a point on a timeline, e.g., a date, time, or timestamp.">
			name = <"DiscreteTiming">
			ancestors = <"Timing", ...>
			properties = <
				["pointInTime"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"When an event occurs.">
					name = <"pointInTime">
					cardinality = <|>=1|>
					type_def = <
						type = <"TemporalValue">
						container_type = <"List">
					>
					is_mandatory = <True>
				>
			>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <281>
		>
		["RepeatTiming"] = <
			documentation = <"A timing expression that is not expressed as calendar time. RepeatTiming expressions tend to be relative timing expressions or frequency-based timing expressions.">
			name = <"RepeatTiming">
			ancestors = <"Timing", ...>
			properties = <
				["activityDuration"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Duration of action when it happens.">
					name = <"activityDuration">
					type = <"IntervalValue">
				>
				["event"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"A landmark, such as admission, discharge, rising, mealtime, or bedtime, relative to when an event should take place.">
					name = <"event">
					cardinality = <|>=0|>
					type_def = <
						type = <"Concept">
						container_type = <"List">
					>
				>
				["offsetFromEvent"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"A duration before or after a given life event, for example, 30 minutes before a meal. Whether this duration means before or after the landmark is conveyed by the life event code.">
					name = <"offsetFromEvent">
					type = <"Duration">
				>
				["repeat"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"How the action is to be repeated at the given event time or times.">
					name = <"repeat">
					type = <"Repeat">
				>
			>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <282>
		>
		["FrequencyBasedRepeat"] = <
			documentation = <"A timing expression expressed as a frequency.">
			name = <"FrequencyBasedRepeat">
			ancestors = <"Repeat", ...>
			properties = <
				["period"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The period of time after which the pattern repeats, for example, each day. To specify 3 times per day, the period should be 24 hours.">
					name = <"period">
					type = <"Duration">
				>
				["countPerPeriod"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"How many times the event should take place during one recurrence interval, for example, to specify 3 times per day, the countPerInterval should be 3.">
					name = <"countPerPeriod">
					type = <"Decimal">
				>
			>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <283>
		>
		["TimeBoundRepeatTiming"] = <
			documentation = <"A repeat timing expression that is bounded within a temporal interval.">
			name = <"TimeBoundRepeatTiming">
			ancestors = <"RepeatTiming", ...>
			properties = <
				["timingBounds"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The outer bound&#47;duration for the timing. E.g., 'Acetaminophen 200 mg tablet' TID for three days. Here, three days represent the timing bounds.">
					name = <"timingBounds">
					type = <"IntervalValue">
				>
			>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <284>
		>
		["IterationBoundRepeatTiming"] = <
			documentation = <"A repeat timing expression that is bounded by a number of iterations. For instance, a timing expression to give a medication every 15 minutes not to exceed 10 administrations.">
			name = <"IterationBoundRepeatTiming">
			ancestors = <"RepeatTiming", ...>
			properties = <
				["repeatCount"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Number of times to repeat">
					name = <"repeatCount">
					type = <"IntegerType">
				>
			>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <285>
		>
		["Preference"] = <
			documentation = <"Class representing a patient or provider preference such as a diet preference, best time to contact, preferred communication method, etc ...">
			name = <"Preference">
			properties = <
				["key"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Code indicating the preference such as 'Preferred communication method'.">
					name = <"key">
					type = <"Concept">
					is_mandatory = <True>
				>
				["value"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Code indicating the value selected for this preference such as 'Email'.">
					name = <"value">
					type = <"DataType">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <286>
		>
		["AnatomicalLocation"] = <
			documentation = <"A part of the body.">
			name = <"AnatomicalLocation">
			properties = <
				["code"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The anatomical location code">
					name = <"code">
					type = <"Concept">
					is_mandatory = <True>
				>
				["laterality"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The side of a bilaterally duplicated structure.">
					name = <"laterality">
					type = <"Concept">
				>
				["anatomicalDirection"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"A direction on with respect to planes of the body, for example, proximal, distal, lateral, medial.">
					name = <"anatomicalDirection">
					type = <"Concept">
				>
			>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <287>
		>
		["ResearchStudyArm"] = <
			documentation = <"Arm refers to a pre-specified group or subgroup of participants in a clinical trial assigned to receive specific interventions (or no intervention) according to a protocol. The protocol describes an expected sequence of events for one of the participants of a study, e.g. Exposure to drug A, wash-out, exposure to drug B, wash-out, follow-up.">
			name = <"ResearchStudyArm">
			properties = <
				["name"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Unique, human-readable label for this arm of the study.">
					name = <"name">
					type = <"PlainText">
					is_mandatory = <True>
				>
				["code"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Categorization of study arm, e.g. experimental, active comparator, placebo comparator.">
					name = <"code">
					type = <"Concept">
				>
				["description"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"A succinct description of the path through the study that would be followed by a subject adhering to this arm.">
					name = <"description">
					type = <"PlainText">
				>
			>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <288>
		>
		["DimensionalFeature"] = <
			documentation = <"Characterizations of the physical size of an anatomical feature.">
			name = <"DimensionalFeature">
			ancestors = <"Locatable", ...>
			properties = <
				["area"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The extent of a 2-dimensional feature enclosed within a boundary, for example, the area of a wound.">
					name = <"area">
					type = <"Quantity">
				>
				["circumference"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The circumference or perimeter of a 2-dimensional view or slice of the feature.">
					name = <"circumference">
					type = <"Quantity">
				>
				["volume"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The volume of a 3-dimensional feature. For instance, if an irregular cavity, the amount of liquid required to fill the cavity.">
					name = <"volume">
					type = <"Quantity">
				>
				["width"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The measurement of extent of a feature from side to side, perpendicular to the greatest dimension. ">
					name = <"width">
					type = <"Quantity">
				>
				["depth"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The extent downward or inward; the perpendicular measurement from the surface to determine the deepness of a feature.">
					name = <"depth">
					type = <"Quantity">
				>
				["length"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The length of a 2-dimensional view or slice of a feature.">
					name = <"length">
					type = <"Quantity">
				>
			>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <289>
		>
		["HealthCareRole"] = <
			documentation = <"A role associated with the delivery or consumption of health care services. ">
			name = <"HealthCareRole">
			ancestors = <"Role", ...>
			properties = <
				["validityPeriod"] = (P_BMM_GENERIC_PROPERTY) <
					documentation = <"Time interval when role is assumed.">
					name = <"validityPeriod">
					type_def = <
						root_type = <"IntervalValue">
						generic_parameters = <"Date", ...>
					>
				>
				["confidentialityLevel"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"Confidentiality level conferred to the role. ">
					name = <"confidentialityLevel">
					cardinality = <|>=0|>
					type_def = <
						type = <"Concept">
						container_type = <"List">
					>
				>
				["status"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The status of the role.">
					name = <"status">
					type = <"Concept">
				>
				["preference"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"Preferences stated and captured for this role. Typically preferences refer to patient or care provider preferences such as a preferred diet (patient) or communication method (both).">
					name = <"preference">
					cardinality = <|>=0|>
					type_def = <
						type = <"Preference">
						container_type = <"List">
					>
				>
			>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <290>
		>
		["HealthCareProviderRole"] = <
			documentation = <"Role associated with the delivery of health care as opposed to a consumer of health care.
">
			name = <"HealthCareProviderRole">
			ancestors = <"HealthCareRole", ...>
			properties = <
				["fieldOfPractice"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"The field of practice for the given provider.">
					name = <"fieldOfPractice">
					cardinality = <|>=0|>
					type_def = <
						type = <"Concept">
						container_type = <"List">
					>
				>
				["providerClassification"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Classification for this role.">
					name = <"providerClassification">
					type = <"Concept">
				>
				["affiliation"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"A membership, association, or connection to an organization that grants certain rights and privileges, such as admitting or visiting.">
					name = <"affiliation">
					cardinality = <|>=0|>
					type_def = <
						type_def = (P_BMM_GENERIC_TYPE) <
							root_type = <"PartyAssociation">
							generic_parameters = <"Organization", ...>
						>
						container_type = <"List">
					>
				>
			>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <291>
		>
		["HealthCareProviderOrganizationRole"] = <
			documentation = <"A non-person health care entity such as a medical group or other organization.">
			name = <"HealthCareProviderOrganizationRole">
			ancestors = <"HealthCareProviderRole", ...>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <292>
		>
		["HealthCareProviderIndividualRole"] = <
			documentation = <"A healthcare provider role associated with a person.">
			name = <"HealthCareProviderIndividualRole">
			ancestors = <"HealthCareProviderRole", ...>
			properties = <
				["qualification"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"A right to practice medicine obtained by training and certification.">
					name = <"qualification">
					cardinality = <|>=0|>
					type_def = <
						type = <"Qualification">
						container_type = <"List">
					>
				>
			>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <293>
		>
		["HealthCareConsumerRole"] = <
			documentation = <"Role assumed by an entity acting as a health care consumer.">
			name = <"HealthCareConsumerRole">
			ancestors = <"HealthCareRole", ...>
			properties = <
				["importance"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Importance associated with the given role such as VIP, etc...">
					name = <"importance">
					type = <"Concept">
				>
				["organDonorType"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Type of organ donor.">
					name = <"organDonorType">
					type = <"Concept">
				>
				["associatedHealthCareProvider"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"The health care provider associated with this role such as the primary provider for a patient.">
					name = <"associatedHealthCareProvider">
					cardinality = <|>=0|>
					type_def = <
						type_def = (P_BMM_GENERIC_TYPE) <
							root_type = <"PartyAssociation">
							generic_parameters = <"HealthCareProviderRole", ...>
						>
						container_type = <"List">
					>
				>
				["managingOrganization"] = (P_BMM_GENERIC_PROPERTY) <
					documentation = <"Organization that is the custodian of the patient record">
					name = <"managingOrganization">
					type_def = <
						root_type = <"PartyAssociation">
						generic_parameters = <"Organization", ...>
					>
				>
				["contact"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"A contact party (e.g. guardian, partner, friend) for the patient">
					name = <"contact">
					cardinality = <|>=0|>
					type_def = <
						type_def = (P_BMM_GENERIC_TYPE) <
							root_type = <"PartyAssociation">
							generic_parameters = <"Person", ...>
						>
						container_type = <"List">
					>
				>
			>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <294>
		>
		["FamilyMembership"] = <
			documentation = <"A role played in the subject's family, such as parent or sibling. Family members do not have to be related by blood, and can include social connections subjectively recognized by the subject as &quot;family&quot;.">
			name = <"FamilyMembership">
			ancestors = <"Role", ...>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <295>
		>
		["DispenseBase"] = <
			documentation = <"Base class for dispense contexts.">
			name = <"DispenseBase">
			ancestors = <"Locatable", ...>
			properties = <
				["quantity"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The amount that is to be or that was dispensed.">
					name = <"quantity">
					type = <"Quantity">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <296>
		>
		["DispenseEvent"] = <
			documentation = <"Record of the dispensing event.">
			name = <"DispenseEvent">
			ancestors = <"DispenseBase", ...>
			properties = <
				["type"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Indicates the type of dispensing event that is performed. For example, Trial Fill, Completion of Trial, Partial Fill, Emergency Fill, Samples, etc.">
					name = <"type">
					type = <"Concept">
				>
				["daysSupply"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The amount of medication expressed in terms of the number of days the medication will last at prescribing dosing level.">
					name = <"daysSupply">
					type = <"Quantity">
				>
				["whenPrepared"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The time when the dispensed product was packaged and reviewed.">
					name = <"whenPrepared">
					type = <"TemporalValue">
				>
				["whenHandedOver"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The time or date the dispensed product was provided to the patient or their representative.">
					name = <"whenHandedOver">
					type = <"TemporalValue">
				>
				["destination"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Identification of the facility&#47;location where the medication was shipped to, as part of the dispense event.">
					name = <"destination">
					type = <"Party">
				>
				["receiver"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"Identifies the party who picked up the medication. This will usually be a patient or their caregiver, but some cases exist where it can be a healthcare professional.">
					name = <"receiver">
					cardinality = <|>=0|>
					type_def = <
						type = <"Party">
						container_type = <"List">
					>
				>
			>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <297>
		>
		["DispenseInstructions"] = <
			documentation = <"Medication dispensing instructions provided by the prescriber. ">
			name = <"DispenseInstructions">
			ancestors = <"DispenseBase", ...>
			properties = <
				["areRefillsAuthorizedAsNeeded"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Indicates whether the prescriber has authorized additional fills of this order as needed.">
					name = <"areRefillsAuthorizedAsNeeded">
					type = <"Concept">
				>
				["validityPeriod"] = (P_BMM_GENERIC_PROPERTY) <
					documentation = <"The period when this dispense request is valid.">
					name = <"validityPeriod">
					type_def = <
						root_type = <"IntervalValue">
						generic_parameters = <"TemporalValue", ...>
					>
				>
				["numberOfRepeatsAllowed"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The number of times the prescription can be refilled, not counting the initial dispense. For example, if an order indicates dispense 30 tablets plus 3 repeats, then the order can be dispensed a total of 4 times and the patient can receive a total of 120 tablets.">
					name = <"numberOfRepeatsAllowed">
					type = <"IntegerType">
				>
				["expectedSupplyDuration"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Identifies the period time over which the supplied product is expected to be used, or the length of time the dispense is expected to last.">
					name = <"expectedSupplyDuration">
					type = <"Duration">
				>
			>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <298>
		>
		["DosageInstruction"] = <
			documentation = <"Pattern for the dosing of a medication. Describes how medication is to be administered or how it should be taken.">
			name = <"DosageInstruction">
			ancestors = <"Dosage", ...>
			properties = <
				["sequence"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The order of the dosage instructions">
					name = <"sequence">
					type = <"IntegerType">
					is_mandatory = <True>
				>
				["additionalInstructions"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"Supplemental instructions to the patient on how to take the medication (e.g. &quot;with meals&quot; or &quot;take half to one hour before food&quot;) or warnings for the patient about the medication (e.g. &quot;may cause drowsiness&quot; or &quot;avoid exposure of skin to direct sunlight or sunlamps&quot;).">
					name = <"additionalInstructions">
					cardinality = <|>=0|>
					type_def = <
						type = <"Concept">
						container_type = <"List">
					>
				>
				["patientInstruction"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"Instructions in terms that are understood by the patient or consumer.">
					name = <"patientInstruction">
					cardinality = <|>=0|>
					type_def = <
						type = <"Text">
						container_type = <"List">
					>
				>
				["timing"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"When medication should be administered">
					name = <"timing">
					type = <"Timing">
				>
				["asNeeded"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Take &quot;as needed&quot; (for x)">
					name = <"asNeeded">
					type = <"Concept">
				>
				["doseRange"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Amount of medication per dose">
					name = <"doseRange">
					type = <"QuantitativeReferenceRange">
				>
				["rateRange"] = (P_BMM_GENERIC_PROPERTY) <
					documentation = <"Amount of medication per unit of time (applicable to medication taken continuously over a period of time, such as an infusion). ">
					name = <"rateRange">
					type_def = <
						root_type = <"IntervalValue">
						generic_parameters = <"Quantity", ...>
					>
				>
				["maxDosePerPeriod"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Upper limit on medication per unit of time">
					name = <"maxDosePerPeriod">
					type = <"Ratio">
				>
				["maxDosePerAdministration"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Upper limit on medication per administration">
					name = <"maxDosePerAdministration">
					type = <"Quantity">
				>
				["maxDosePerLifetime"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Upper limit on medication per lifetime of the patient">
					name = <"maxDosePerLifetime">
					type = <"Quantity">
				>
			>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <299>
		>
		["MedicationProcedure"] = <
			documentation = <"The topic for clinical statements concerned with prescribing, administering, or dispensing a medication. ">
			name = <"MedicationProcedure">
			ancestors = <"ProcedureTopic", ...>
			properties = <
				["medication"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Identifies the medication being administered, ordered, dispensed, or currently being taken.">
					name = <"medication">
					type = <"Medication">
				>
				["device"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"The device used in administering the medication to the patient. For example, a particular infusion pump.">
					name = <"device">
					cardinality = <|>=0|>
					type_def = <
						type = <"ClinicalDevice">
						container_type = <"List">
					>
				>
				["dosage"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"Information&#47;instructions pertaining to how the medication is to be dosed.">
					name = <"dosage">
					cardinality = <|>=0|>
					type_def = <
						type = <"Dosage">
						container_type = <"List">
					>
				>
			>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <300>
		>
		["MedicationDispensePerformance"] = <
			documentation = <"Context for the documentation of a medication dispense event.">
			name = <"MedicationDispensePerformance">
			ancestors = <"Performance", ...>
			properties = <
				["dispense"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Information about the dispense event.">
					name = <"dispense">
					type = <"DispenseEvent">
					is_mandatory = <True>
				>
				["substitution"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Information about any substitutions performed during the dispense event.">
					name = <"substitution">
					type = <"SubstitutionInformation">
				>
			>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <301>
		>
		["MedicationOrder"] = <
			documentation = <"Context for a medication order.">
			name = <"MedicationOrder">
			ancestors = <"Order", ...>
			properties = <
				["dispenseInstructions"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Instructions for dispensing the medication.">
					name = <"dispenseInstructions">
					type = <"DispenseInstructions">
				>
				["substitutionInstructions"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Medication substitution instructions - primarily whether substitutions are allowed.">
					name = <"substitutionInstructions">
					type = <"SubstitutionInstruction">
				>
				["pharmacyOrderCategory"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The pharmacy order category is used to group medication orders that follow similar site-specific workflows, often for large-scale expedited processing. Examples (from HL7 V2) include medication, IV large volume solutions, and other solutions.">
					name = <"pharmacyOrderCategory">
					type = <"Concept">
				>
				["pharmacyOrderSetting"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"&quot;Indicates where type of medication order and where the medication is expected to be consumed or administered.&quot; - HL7 FHIR, MedicationOrder.category Possible values include: Inpatient, Outpatient, Community">
					name = <"pharmacyOrderSetting">
					type = <"Concept">
				>
			>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <302>
		>
		["PharmacyPromise"] = <
			documentation = <"This class represents a MedicationOrder from the perspective of the filling system (i.e., the pharmacy). This class is a subtype of Healthcare Promise, which describes all types or Orders from the filling system perspective, but adds those properties which are specific to medication orders. Although there are many properties shared with MedicationOrder; the pharmacy may change the order within prescribed limits, for example, substituting a generic drug for a branded drug.">
			name = <"PharmacyPromise">
			ancestors = <"Promise", ...>
			properties = <
				["appointmentTime"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Date and time of the appointment for this clinic location.">
					name = <"appointmentTime">
					type = <"TemporalValue">
				>
				["expirationDate"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The date after which the order may no longer be filled.">
					name = <"expirationDate">
					type = <"TemporalValue">
				>
				["isHospitalSupplySelfAdministered"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"A flag indicating that the medication given to the patient is to be self-administered and is to be supplied by the hospital's pharmacy while they are an inpatient.">
					name = <"isHospitalSupplySelfAdministered">
					type = <"Concept">
				>
				["isSelfAdministered"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"A flag indicating that the medication given to the patient is to be self administered.">
					name = <"isSelfAdministered">
					type = <"Concept">
				>
				["lastDispenseDate"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The most recent date (and optionally time) that the medication was distributed to a patient, patient care-giver, or the location at which the patient is receiving care.">
					name = <"lastDispenseDate">
					type = <"TemporalValue">
				>
				["needsHumanReview"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Indicates whether a warning is present in the dispensing instructions field and that downstream applications are expected to alert the human user to the presence of the warning. This property is included for compatibility with HL7 version 2.">
					name = <"needsHumanReview">
					type = <"Concept">
				>
				["numberOfRefillsOrDosesDispensed"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The number of refills or repeats of the medication order that have previously been dispensed, prior to the current order. ">
					name = <"numberOfRefillsOrDosesDispensed">
					type = <"IntegerType">
				>
				["numberOfRefillsRemaining"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The number of times the prescription can be refilled, prior to the promised dispense. If this is not the initial order and the number of refills remaining is 0, the order cannot be filled without issuance of a new MedicationOrder. For example, if an order indicates dispense 30 tablets plus 3 repeats, and the number of refills remaining is 1, then the promised dispense will reach the maximum order of 120 tablets. Afterward, the number of refills remaining will decrement to 0.">
					name = <"numberOfRefillsRemaining">
					type = <"IntegerType">
				>
				["requestedAdministrationTime"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"Specifies when the service is to be performed and how frequently. Note that this is a complex data type that may indicate specific times or intervals (e.g., 10:00 AM, MWF, etc).">
					name = <"requestedAdministrationTime">
					cardinality = <|>=0|>
					type_def = <
						type = <"Timing">
						container_type = <"List">
					>
				>
				["requestedDuration"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The duration of an order as requested by the ordering clinician. The duration would be expressed as a number of days, weeks, hours, etc. Note that this length of time might be determined by a business rule of the facilty. For example, most facilties will have a limit of 7 days for antibiotics, and 3 days for schedule 1 drugs.">
					name = <"requestedDuration">
					type = <"Duration">
				>
				["scheduleType"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"&quot;This describes the type of schedule for the dispensing of the medication(s) that make up the order. PRE-OP orders are usually considered to be ON-CALL orders, and orders dispensed as MULTI-DOSE CONTAINERS are usually considered to be FILL ON REQUEST orders. C=Continuous, O=One Time, P=PRN, R=Fill On Request, OC=On Call.&quot; (VistA)">
					name = <"scheduleType">
					type = <"Concept">
				>
				["substitution"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"If the Pharmacist has changed the kind of medication to be dispensed to the patient from the one originally ordered by the prescriber, this property provides a categorization of the kind of substitution that was made.
&quot;Refer to HL7 Table 0167 - Substitution Status in Chapter 2C for suggested values.&quot; - HL7 Version 2.8, RXD-11.
&quot;Refer to HL7 Table 0167 - Substitution Status in Chapter 2C for suggested values.&quot; - HL7 Version 2.8, RXE-9.
&quot;Product&#47;Service Substitution, coded&quot; - NCPDP Script (Field 4457, Data Dictionary 201104)
&quot;Code indicating whether or not the prescriber's instructions regarding generic substitution were followed.&quot; - NCPDP Telecommunication (Field 408-D8, Data Dictionary 201104).

-----
Possible values include (from HL7 Table 167): 
No substitute was dispensed. This is equivalent to the default (null) value; 
A generic substitution was dispensed; 
A therapeutic substitution was dispensed; 
No product selection indicated; 
Substitution not allowed by prescriber; 
Substitution allowed - patient requested product dispensed; 
Substitution allowed - pharmacist selected product dispensed; 
Substitution allowed - generic drug not in stock; 
Substitution allowed - brand drug dispensed as a generic; 
Substitution not allowed - brand drug mandated by law; 
Substitution allowed - generic drug not available in marketplace.
-----
Possible values include (From NCPDP ECL):
No Product Selection Indicated
Substitution Not Allowed by Prescriber
Substitution Allowed - Patient Requested Product Dispensed
Substitution Allowed - Pharmacist Selected Product Dispensed
Substitution Allowed - Generic Drug Not in Stock
Substitution Allowed - Brand Drug Dispensed as a Generic Override
Substitution Not Allowed - Brand Drug Mandated by Law
Substitution Allowed - Generic Drug Not Available in Marketplace
Substitution Allowed By Prescriber but Plan Requests Brand - Patient's Plan Requested Brand Product To Be Dispensed">
					name = <"substitution">
					type = <"SubstitutionInformation">
				>
				["totalDailyDose"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"&quot;The total daily dose for this particular pharmaceutical as expressed in terms of actual dispense units.&quot; - HL7 Version 2.8, RXE-19.">
					name = <"totalDailyDose">
					type = <"Quantity">
				>
			>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <303>
		>
		["SubstitutionBase"] = <
			documentation = <"Base class for prospective and retrospective medication substitution information.">
			name = <"SubstitutionBase">
			ancestors = <"Locatable", ...>
			properties = <
				["reason"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"Why should or was (not) substitution made">
					name = <"reason">
					cardinality = <|>=0|>
					type_def = <
						type = <"Concept">
						container_type = <"List">
					>
				>
			>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <304>
		>
		["SubstitutionInformation"] = <
			documentation = <"Information about a substitution that was performed.">
			name = <"SubstitutionInformation">
			ancestors = <"SubstitutionBase", ...>
			properties = <
				["wasSubstituted"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Whether a substitution was or was not performed on the dispense">
					name = <"wasSubstituted">
					type = <"Concept">
				>
				["type"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"A code signifying the type of substitution actually made. Examples include: a generic substitution was dispensed; a therapeutic substitution was dispensed. ">
					name = <"type">
					type = <"Concept">
				>
				["responsibleParty"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"Who is responsible for the substitution">
					name = <"responsibleParty">
					cardinality = <|>=0|>
					type_def = <
						type = <"Party">
						container_type = <"List">
					>
				>
			>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <305>
		>
		["SubstitutionInstruction"] = <
			documentation = <"Substitution instructions for prospective dispense clinical statements.">
			name = <"SubstitutionInstruction">
			ancestors = <"SubstitutionBase", ...>
			properties = <
				["allowSubstitutions"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Code indicating whether substitutions are allowed.">
					name = <"allowSubstitutions">
					type = <"Concept">
				>
			>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <306>
		>
		["DosageEvent"] = <
			documentation = <"A dosage of medication as it actually occurred, as opposed to a dosage that was planned.">
			name = <"DosageEvent">
			ancestors = <"Dosage", ...>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <307>
		>
		["Dosage"] = <
			documentation = <"Base class for medication dosage instruction and dosage event.">
			name = <"Dosage">
			ancestors = <"Locatable", ...>
			properties = <
				["dosageAsText"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"How the medication should be taken, in terms of amount and timing, as a text. For instance, take 2 tablets PO TID for three days or as needed for pain.">
					name = <"dosageAsText">
					type = <"PlainText">
				>
				["bodySite"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"If applicable, the body site where the medication is to be administered.">
					name = <"bodySite">
					cardinality = <|>=0|>
					type_def = <
						type = <"AnatomicalLocation">
						container_type = <"List">
					>
				>
				["bodySite_Concept"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"If applicable, the body site where the medication is to be administered, as a precoordinated code.">
					name = <"bodySite_Concept">
					cardinality = <|>=0|>
					type_def = <
						type = <"Concept">
						container_type = <"List">
					>
				>
				["route"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"How drug should enter body">
					name = <"route">
					type = <"Concept">
				>
				["method"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The technique for administering the medication, for example, by ingestion or injection.">
					name = <"method">
					type = <"Concept">
				>
				["dose"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Amount of medication per dose">
					name = <"dose">
					type = <"Quantity">
				>
				["rate"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Rate at which this medication is administered.">
					name = <"rate">
					type = <"Quantity">
				>
				["rateRatio"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Rate at which this medication is administered as volume (numerator) per unit time (denominator).">
					name = <"rateRatio">
					type = <"Ratio">
				>
			>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <308>
		>
		["DurableEncounter"] = <
			documentation = <"Contains properties common to multiple kinds of Encounters which last more than a few hours. Such encounters typically include an admission and discharge process.">
			name = <"DurableEncounter">
			ancestors = <"DetailedEncounter", ...>
			properties = <
				["patientAdmission"] = (P_BMM_GENERIC_PROPERTY) <
					documentation = <"Information about the admission process.">
					name = <"patientAdmission">
					type_def = <
						root_type = <"ClinicalStatement">
						generic_parameters = <"Admission", "Performance">
					>
				>
				["patientTransfer"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"Information about the transfer process">
					name = <"patientTransfer">
					cardinality = <|>=0|>
					type_def = <
						type_def = (P_BMM_GENERIC_TYPE) <
							root_type = <"ClinicalStatement">
							generic_parameters = <"Transfer", "Performance">
						>
						container_type = <"List">
					>
				>
				["patientDischarge"] = (P_BMM_GENERIC_PROPERTY) <
					documentation = <"Information about the discharge process.">
					name = <"patientDischarge">
					type_def = <
						root_type = <"ClinicalStatement">
						generic_parameters = <"Discharge", "Performance">
					>
				>
				["patientCondition"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Indicates the patient's current medical condition for the purpose of communicating to non-medical outside parties, e.g., family, employer, religious minister, media, etc. Possible values include (from HL7  Table 434): satisfactory, critical, poor, stable, other, unknown.">
					name = <"patientCondition">
					type = <"Concept">
				>
				["patientStatus"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"&quot;Indicates the status of the episode of care.&quot; - HL7 Version 2.8, PV2-24. Possible values include (from HL7 Table 216): Active Inpatient; Discharged Inpatient.">
					name = <"patientStatus">
					type = <"Concept">
				>
			>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <309>
		>
		["Admission"] = <
			documentation = <"A record about the admission of a patient to a facility generally for the provision of care.">
			name = <"Admission">
			ancestors = <"ProcedureTopic", ...>
			properties = <
				["levelOfCare"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Indicates the acuity level assigned to the patient at the time of admission, for example, acute, chronic, comatose, critical, improved, moribund.">
					name = <"levelOfCare">
					type = <"Concept">
				>
				["source"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Indicates where the patient was admitted. In the US, this field should use the Official Uniform Billing (UB) 04 2008 numeric codes found on form locator 15 [which is] the Point of Origin for Admission or Visit.">
					name = <"source">
					type = <"Concept">
				>
				["dietType"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"Indicates a special diet type for a patient. ">
					name = <"dietType">
					cardinality = <|>=0|>
					type_def = <
						type = <"Concept">
						container_type = <"List">
					>
				>
				["needsPreAdmitTest"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Indicates whether the patient must have pre admission testing done in order to be admitted.">
					name = <"needsPreAdmitTest">
					type = <"Concept">
				>
				["preAdmitAccount"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Uniquely identifies the patient's pre admit account. Some systems will continue to use the pre admit number as the billing number after the patient has been admitted.">
					name = <"preAdmitAccount">
					type = <"Identifier">
				>
				["preAdmissionIdentifier"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Pre-admission patient identifier">
					name = <"preAdmissionIdentifier">
					type = <"Identifier">
				>
				["precautionCode"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Indicates non-clinical precautions that need to be taken with the patient, for example, aggressive, blind, confused, deaf, on IV, do not resuscitate, paraplegic, etc.">
					name = <"precautionCode">
					type = <"Concept">
				>
				["reAdmissionIndicator"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Indicates that a patient is being re admitted to the healthcare facility and gives the circumstances.">
					name = <"reAdmissionIndicator">
					type = <"Concept">
				>
				["admissionDiagnosis"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"The diagnosis(es) that was the reason for hospitalization at the time of hospitalization.">
					name = <"admissionDiagnosis">
					cardinality = <|>=0|>
					type_def = <
						type = <"Diagnosis">
						container_type = <"List">
					>
				>
			>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <310>
		>
		["Encounter"] = <
			documentation = <"An abstract class that represents an encounter class.">
			name = <"Encounter">
			ancestors = <"InformationEntry", ...>
			properties = <
				["confidentialityCode"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Contains a set of values that control the disclosure of information about this patient">
					name = <"confidentialityCode">
					type = <"Concept">
				>
				["partOf"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"An encounter under which this encounter occurred. For instance, an encounter with a clinician while this patient was hospitalized.">
					name = <"partOf">
					type = <"Encounter">
				>
				["activityTime"] = (P_BMM_GENERIC_PROPERTY) <
					documentation = <"The time interval starting with the administrative onset of the encounter (e.g. admission, registration, patient arrival) and ending with the patient's departure (e.g. discharge).">
					name = <"activityTime">
					type_def = <
						root_type = <"IntervalValue">
						generic_parameters = <"Date", ...>
					>
				>
			>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <311>
		>
		["Diagnosis"] = <
			documentation = <"A diagnosis, which is a disease or injury determined to be present through evaluation of patient history, examination, and&#47;or review of laboratory data. ">
			name = <"Diagnosis">
			ancestors = <"Locatable", ...>
			properties = <
				["rank"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Ranking of the diagnosis (for each role type).">
					name = <"rank">
					type = <"IntegerType">
				>
				["code"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Contains a code that most closely identifies the condition or the diagnosis. This code will come from one of several commonly used coding systems, depending on the branch of medicine involved (e.g., clinical medicine, dentistry, mental health), and on the purpose (e.g., clinical, billing). The code will likely come from one of the following: Structured Nomenclature for Medicine (SNOMED), International Classifications of Diseases (ICD), Diagnostic and Statistical Manual of Mental Disorders (DSM).">
					name = <"code">
					type = <"Concept">
				>
				["entry"] = (P_BMM_GENERIC_PROPERTY) <
					documentation = <"Contains a pointer to the finding clinical statement that most closely identifies the condition or the diagnosis. ">
					name = <"entry">
					type_def = <
						root_type = <"ClinicalStatement">
						generic_parameters = <"FindingTopic", "FindingContext">
					>
				>
				["role"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Role that this diagnosis has within the encounter (e.g. admission, billing, discharge ...).">
					name = <"role">
					type = <"Concept">
				>
			>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <312>
		>
		["Discharge"] = <
			documentation = <"A record pertaining to the discharge of a patient from an institution.">
			name = <"Discharge">
			ancestors = <"ProcedureTopic", ...>
			properties = <
				["disposition"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Contains the patient's anticipated location or status following the encounter (i.e., discharged to home, expired, etc.). In the US, use the Official Uniform Billing (UB) 04 2008 numeric codes found on form locator 17. Note that while the encounter is still &quot;active&quot; (i.e., the encounter does not have an end date yet) this attribute should be interpreted as the expected discharge disposition. When the encounter is &quot;completed&quot; this attribute contains the actual discharge disposition.">
					name = <"disposition">
					type = <"Concept">
				>
				["needOutpatientFollowup"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Flag indicating whether patient follow is required post-discharge.">
					name = <"needOutpatientFollowup">
					type = <"Concept">
				>
				["dischargeInstructionsStatement"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"Pointer to a Patient Education record which documents provision of instructions to the Patient upon the completion of an Encounter. The PatientEducationPerformed class provides additional information regarding who provided the instructions and when, as well as an indication of the patient's level of understanding.">
					name = <"dischargeInstructionsStatement">
					cardinality = <|>=0|>
					type_def = <
						type_def = (P_BMM_GENERIC_TYPE) <
							root_type = <"ClinicalStatement">
							generic_parameters = <"PatientRelatedEducation", "PatientEducationPerformance">
						>
						container_type = <"List">
					>
				>
				["dischargeInstructions"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Instructions given to the patient upon completion of an encounter. ">
					name = <"dischargeInstructions">
					type = <"Text">
				>
				["dischargeFromLocation"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"&quot;The location to which the patient is assigned. It is a role played by a place at which services may be provided. Note that a single physical place can play multiple service delivery location roles each with its own attributes. For example, a Podiatry clinic and Research clinic may meet on alternate days in the same physical location; each clinic uses its own mailing address and telephone number.&quot; (HL7)">
					name = <"dischargeFromLocation">
					type = <"Location">
				>
				["dischargeToLocation"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Indicates the healthcare facility to which the patient was discharged.">
					name = <"dischargeToLocation">
					type = <"Location">
				>
				["dischargeDiagnosis"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"The diagnosis(es) determined to be the reason for hospitalization at the time of discharge (this may be the same or different from the hospital admission diagnosis (added for Transition of Care).">
					name = <"dischargeDiagnosis">
					cardinality = <|>=0|>
					type_def = <
						type = <"Diagnosis">
						container_type = <"List">
					>
				>
			>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <313>
		>
		["EmergencyEncounter"] = <
			documentation = <"Emergency is an encounter without a scheduled appointment and urgent clinical services are required.">
			name = <"EmergencyEncounter">
			ancestors = <"DetailedEncounter", ...>
			properties = <
				["discharge"] = (P_BMM_GENERIC_PROPERTY) <
					documentation = <"The release of a patient from a course of care.">
					name = <"discharge">
					type_def = <
						root_type = <"ClinicalStatement">
						generic_parameters = <"Discharge", "Performance">
					>
				>
			>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <314>
		>
		["DetailedEncounter"] = <
			documentation = <"An interaction between a patient and a practitioner under the auspices of a given organization for the purpose of providing healthcare-related service(s). It is important to understand that if the there is a change in provider or organization, by definition a new encounter will be generated. For example, if a patient is moved from Surgery to Post-Op, a new encounter is generated. Similarly, if a patient receives care from 2 nurses while in Post-Op, there will be 2 encounters.">
			name = <"DetailedEncounter">
			ancestors = <"Encounter", ...>
			properties = <
				["accountId"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The patient’s account number in the context of the admitting or providing institution.">
					name = <"accountId">
					type = <"Identifier">
				>
				["accountStatus"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"&quot;Contains the account status.&quot; - HL7 Version 2.8, PV1-41. Note that HL7 does not suggest any values for this code (in User-defined Table 117).">
					name = <"accountStatus">
					type = <"Concept">
				>
				["alternateVisitId"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"&quot;Contains the alternative, temporary, or pending optional visit ID number to be used if needed. Multiple alternate identifiers may be sent.&quot; - HL7 Version 2.8, PV1-50
Uniquely identifies this patient visit using an identification scheme other than the one used for the &quot;id&quot; property. This allows for different systems or organizations to assign different identifiers to the same visit.">
					name = <"alternateVisitId">
					cardinality = <|>=0|>
					type_def = <
						type = <"Identifier">
						container_type = <"List">
					>
				>
				["ambulatoryStatus"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"&quot;Indicates any permanent or transient handicapped conditions.&quot; - HL7 Version 2.8, PV1-15.
Possible values include (from HL7 V2 Table 9): No functional limitations; Ambulates with assistive device; Wheelchair&#47;stretcher bound; Comatose - non-responsive; Disoriented; Vision impaired; Hearing impaired; Speech impaired; Non-English speaking; Functional level unknown; Oxygen therapy; Special equipment (tubes, IVs, catheters); Amputee; Mastectomy; Paraplegic; Pregnant.">
					name = <"ambulatoryStatus">
					type = <"Concept">
				>
				["chargePriceIndicator"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"&quot;Contains the code used to determine which price schedule is to be used for room and bed charges.&quot; - HL7 Version 2.8, PV1-21. Note that HL7 does not suggest any values for this code (in User-defined Table 32).">
					name = <"chargePriceIndicator">
					type = <"Concept">
				>
				["chiefComplaint"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Describes the primary reason, in the patient's words, for the encounter&#47;visit. This field contrasts with the reasonForVisit, which is the clinician's assessment of the reason for the encounter&#47;visit. ">
					name = <"chiefComplaint">
					type = <"Text">
				>
				["encounterBillingType"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Describes the encounter in terms of evaluation and management (e.g., diagnosis or procedure associated with the encounter). For example, Maintenance visit, 5 minutes or less. ">
					name = <"encounterBillingType">
					type = <"Concept">
				>
				["financialClass"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"&quot;Contains the financial class(es) assigned to the patient for the purpose of identifying sources of reimbursement.&quot; - HL7 Version 2.8, PV1-20 Note that HL7 does not suggest any values for this code (in User-defined Table 64).">
					name = <"financialClass">
					type = <"Concept">
				>
				["hospitalService"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"&quot;Contains the treatment or type of surgery that the patient is scheduled to receive.&quot; - HL7 Version 2.8, PV1-10. Possible Values (from HL7 Table 69) include: Cardiac Service, Medical Service, Pulmonary Service, Surgical Service, Urology Service.">
					name = <"hospitalService">
					type = <"Concept">
				>
				["isEmploymentRelated"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"&quot;Specifies whether a patient's illness was job-related.&quot; - HL7 Version 2.8, PV2-15">
					name = <"isEmploymentRelated">
					type = <"Concept">
				>
				["modeOfArrival"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"] Identifies the mode of transportation of the patient’s arrival, for example, ambulance, car, walking etc.">
					name = <"modeOfArrival">
					type = <"Concept">
				>
				["patientClass"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"&quot;This field is used by systems to categorize patients by site. It does not have a consistent industry-wide definition. It is subject to site specific variations.&quot; - HL7 Version 2.8, PV1-2. HL7 Version 2 has the following suggested values (table 4): Emergency; Inpatient; Outpatient; Preadmit; Recurring patient; Obstetrics; Commercial Account; Not Applicable; Unknown.">
					name = <"patientClass">
					type = <"Concept">
				>
				["patientType"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"&quot;Contains site-specific values that identify the patient type.&quot; - HL7 Version 2.8, PV1-18 Note that HL7 does not suggest any values for this code (in User-defined Table 18).">
					name = <"patientType">
					type = <"Concept">
				>
				["previousServiceDate"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"&quot;Contains the date of previous service for the same recurring condition. This may be a required field for billing certain illnesses (e.g., accident related) to a third party.&quot; - HL7 Version 2.8, PV2-14.">
					name = <"previousServiceDate">
					type = <"TemporalValue">
				>
				["publicityCode"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"&quot;Contains a user-defined code indicating what level of publicity is allowed for a specific visit.&quot; - HL7 Version 2.8, PV2-21. Possible values include (from HL7 V2 Table 215): Family only; No Publicity; Other; Unknown.">
					name = <"publicityCode">
					type = <"Concept">
				>
				["reasonForVisit"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"The reason for the encounter&#47;visit from the clinician's point of view. This field contrasts with the chiefComplaint, which is the patient's description of the reason for the encounter&#47;visit.">
					name = <"reasonForVisit">
					cardinality = <|>=0|>
					type_def = <
						type = <"Concept">
						container_type = <"List">
					>
				>
				["referralSource"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Identifies the source of the admission or encounter. In other words, identified where the patient was before being sent for this encounter. Possible values include: Community, Other facility, etc.">
					name = <"referralSource">
					type = <"Concept">
				>
				["servicingFacility"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"&quot;This field is used in a multiple facility environment, e.g., multiple campuses or buildings, to indicate the healthcare facility with which this visit is associated.&quot; - HL7 Version 2.8, PV1-39. Note that HL7 does not suggest any values for this code (in User-defined Table 115).">
					name = <"servicingFacility">
					type = <"Concept">
				>
				["specialArrangements"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"A set of values representing the types of special arrangements provided or to be provided for this patient encounter (e.g., wheelchair, stretcher, interpreter, attendant, seeing eye dog)">
					name = <"specialArrangements">
					cardinality = <|>=0|>
					type_def = <
						type = <"Concept">
						container_type = <"List">
					>
				>
				["specialCourtesy"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"&quot;Indicates whether the patient will be extended certain special courtesies.&quot; - HL7 Version 2.8, PV1-22. Note that HL7 does not suggest any values for this code (in User-defined Table 45).">
					name = <"specialCourtesy">
					cardinality = <|>=0|>
					type_def = <
						type = <"Concept">
						container_type = <"List">
					>
				>
				["triageNotes"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"Triage notes for the patient visit. Added for Public Health Reporting Initiative.">
					name = <"triageNotes">
					cardinality = <|>=0|>
					type_def = <
						type = <"Concept">
						container_type = <"List">
					>
				>
				["assignedPatientLocation"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"&quot;This field contains the patient's initial assigned location or the location to which the patient is being moved. The first component may be the nursing station for inpatient locations, or clinic or department, for locations other than inpatient. For canceling a transaction or discharging a patient, the current location (after the cancellation event or before the discharge event) should be in this field.&quot; - HL7 Version 2.8, PV1-3">
					name = <"assignedPatientLocation">
					type = <"Location">
				>
				["pendingLocation"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"	
&quot;Indicates the point of care, room, bed, healthcare facility ID, and bed status to which the patient may be moved. The first component may be the nursing station for inpatient locations, or the clinic, department, or home for locations other than inpatient.&quot; - HL7 Version 2.8, PV1-42">
					name = <"pendingLocation">
					type = <"Location">
				>
				["serviceDeliveryLocation"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"&quot;The location to which the patient is assigned. It is a role played by a place at which services may be provided. Note that a single physical place can play multiple service delivery location roles each with its own attributes. For example, a Podiatry clinic and Research clinic may meet on alternate days in the same physical location; each clinic uses its own mailing address and telephone number.&quot; (HL7)">
					name = <"serviceDeliveryLocation">
					type = <"Location">
				>
				["temporaryLocation"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"&quot;Contains a location other than the assigned location required for a temporary period of time (e.g., OR, operating theatre, etc.).&quot; - HL7 Version 2.8, PV1-11">
					name = <"temporaryLocation">
					type = <"Location">
				>
				["priorTemporaryLocation"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"&quot;This field is used to reflect the patient's temporary location (such as the operating room&#47;theatre or x-ray) prior to a transfer from a temporary location to an actual location, or from a temporary location to another temporary location. The first component may be the nursing station for inpatient locations, or the clinic, department, or home for locations other than inpatient.&quot; - HL7 Version 2.8, PV1-43">
					name = <"priorTemporaryLocation">
					cardinality = <|>=0|>
					type_def = <
						type = <"Location">
						container_type = <"List">
					>
				>
				["origin"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The location from which the patient came before admission">
					name = <"origin">
					type = <"Location">
				>
				["serviceProvider"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"An organization that is in charge of maintaining the information of this Encounter (e.g. who maintains the report or the master service catalog item, etc.). This MAY be the same as the organization on the Patient record, however it could be different. This MAY not be not the Service Delivery Location's Organization.">
					name = <"serviceProvider">
					type = <"Organization">
				>
			>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <315>
		>
		["HomeBasePrimaryCareEncounter"] = <
			documentation = <"Patient is being treated &quot;In-Home&quot; for this encounter.">
			name = <"HomeBasePrimaryCareEncounter">
			ancestors = <"DurableEncounter", ...>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <316>
		>
		["Hospice"] = <
			documentation = <"A hospice encounter.">
			name = <"Hospice">
			ancestors = <"DurableEncounter", ...>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <317>
		>
		["InpatientEncounter"] = <
			documentation = <"Patient has been admitted to the facility and assigned a bed.">
			name = <"InpatientEncounter">
			ancestors = <"DurableEncounter", ...>
			properties = <
				["lengthOfStay"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Contains the actual duration of the encounter. Note that the duration cannot be reliably calculated from the admission and discharge dates because of possible leaves of absence.">
					name = <"lengthOfStay">
					type = <"Duration">
				>
			>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <318>
		>
		["LongTermCare"] = <
			documentation = <"A long term care encounter.">
			name = <"LongTermCare">
			ancestors = <"DurableEncounter", ...>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <319>
		>
		["OutpatientVisit"] = <
			documentation = <"A direct contact between a patient and a practitioner, to order or furnish hospital services for diagnosis or treatment of the patient, not resulting in formal hospitalization (an overnight stay as an admitted patient). ">
			name = <"OutpatientVisit">
			ancestors = <"DetailedEncounter", ...>
			properties = <
				["serviceCategory"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"A categorization of the outpatient visit, based on the services provided and&#47;or the circumstances under which the visit occurred. Possible values include: Ambulatory, In-Hospital (i.e., an patient made an &quot;outpatient&quot; visit while concurrently being an inpatient), Day Surgery, Observation, Nursing Home, Day Hospitalization, etc.">
					name = <"serviceCategory">
					type = <"Concept">
				>
			>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <320>
		>
		["Referral"] = <
			documentation = <"The Referral class is used to record and send details about a request for service or transfer of a patient to the care of another provider or provider organization.">
			name = <"Referral">
			ancestors = <"ProcedureTopic", ...>
			properties = <
				["groupIdentifier"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"An identifier to the composite request this is part of.">
					name = <"groupIdentifier">
					type = <"Identifier">
				>
				["serviceRequested"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"Actions requested as part of the referral">
					name = <"serviceRequested">
					cardinality = <|>=0|>
					type_def = <
						type = <"Concept">
						container_type = <"List">
					>
				>
				["orginatingEncounter"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The encounter that led to the referral.">
					name = <"orginatingEncounter">
					type = <"DetailedEncounter">
				>
				["specialty"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The clinical specialty (discipline) that the referral is requested for">
					name = <"specialty">
					type = <"Concept">
				>
				["recipient"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"Receiver of referral &#47; transfer of care request">
					name = <"recipient">
					cardinality = <|>=0|>
					type_def = <
						type = <"Party">
						container_type = <"List">
					>
				>
				["supportingInformation"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"Additonal information to support referral or transfer of care request">
					name = <"supportingInformation">
					cardinality = <|>=0|>
					type_def = <
						type = <"ClinicalStatement">
						container_type = <"List">
					>
				>
			>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <321>
		>
		["ShortStay"] = <
			documentation = <"An encounter that is similar to outpatient but the patient is admitted to a bed.">
			name = <"ShortStay">
			ancestors = <"DurableEncounter", ...>
			properties = <
				["lengthOfStay"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Contains the actual duration of the encounter. Note that the duration cannot be reliably calculated from the admission and discharge dates because of possible leaves of absence.">
					name = <"lengthOfStay">
					type = <"Duration">
				>
			>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <322>
		>
		["VirtualEncounter"] = <
			documentation = <"Represents medical services provided remotely, including telephone consultations and synchronous and asynchronous telehealth. Remote monitoring does not constitute a virtual encounter, but may trigger a virtual encounter if indicated by the situation. ">
			name = <"VirtualEncounter">
			ancestors = <"DetailedEncounter", ...>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <323>
		>
		["Transfer"] = <
			documentation = <"Documents the transfer of a patient from one location or responsible organization to another. Note that a transfer from one organization to another will, by definition, trigger a new encounter. A transfer from one location to another may trigger a new encounter depending on whether the responsible organization has changed. A movement from one bed within the same ward to another probably will not, but a movement from one ward to another probably would.">
			name = <"Transfer">
			ancestors = <"ProcedureTopic", ...>
			properties = <
				["category"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Categorizes the patient transfer. Possible values include Admission, Transfer, Discharge, etc.">
					name = <"category">
					type = <"Concept">
					is_mandatory = <True>
				>
				["transferFromLocation"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The prior patient location if the patient is being transferred. This is null if the patient is new.&quot; - HL7 Version 2.8, PV1-6">
					name = <"transferFromLocation">
					type = <"Location">
				>
				["transferToLocation"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The location to which the patient has been transferred. ">
					name = <"transferToLocation">
					type = <"Location">
				>
			>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <324>
		>
		["Assertion"] = <
			documentation = <"An assertion is a finding that takes the form of a single coded concept, without an explicit measureable property. An assertion is used to express findings such as 'patient has diabetes' or 'patient has high blood pressure'. An assertion is not expressed as a {measureable property, measured value} pair; if the finding takes that form, EvaluationResult should be used. Note that EvaluationResults {eye color, blue} can sometimes be expressed as assertions and vice versa (blue eye color).">
			name = <"Assertion">
			ancestors = <"FindingTopic", ...>
			properties = <
				["dateAsserted"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Date and time the assertion was made.  ">
					name = <"dateAsserted">
					type = <"TemporalValue">
				>
				["verificationStatus"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The state of knowledge concerning the assertion; e.g., confirmed, refuted, provisional, suspected.
">
					name = <"verificationStatus">
					type = <"Concept">
				>
				["findingMethod"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"The means by which a clinical finding is determined.
">
					name = <"findingMethod">
					cardinality = <|>=0|>
					type_def = <
						type = <"Concept">
						container_type = <"List">
					>
				>
			>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <325>
		>
		["FindingSiteAssertion"] = <
			documentation = <"An assertion about a clinical condition, problem, diagnosis, or other event, situation, issue, or clinical concept located on a specific body location that has risen to a level of concern.">
			name = <"FindingSiteAssertion">
			ancestors = <"ConditionAssertion", ...>
			properties = <
				["findingSite"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"The body site affected by a condition.">
					name = <"findingSite">
					cardinality = <|>=0|>
					type_def = <
						type = <"AnatomicalLocation">
						container_type = <"List">
					>
				>
			>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <326>
		>
		["ConditionAssertion"] = <
			documentation = <"An assertion that represents a health condition of a patient that runs a clinical course over a period of time, and may be tracked during that time period. ">
			name = <"ConditionAssertion">
			ancestors = <"Assertion", ...>
			properties = <
				["associatedEntry"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"Another clinical statement in the patient's record that is related to the current condition. ">
					name = <"associatedEntry">
					cardinality = <|>=0|>
					type_def = <
						type = <"InformationEntryAssociation">
						container_type = <"List">
					>
				>
				["dueTo"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"The cause of the Clinical finding. This includes such causes as disease vectors and endogenous states (e.g., macular degeneration due to diabetes). Exogenous substances and forces should be captured as causative agent. ">
					name = <"dueTo">
					cardinality = <|>=0|>
					type_def = <
						type = <"Concept">
						container_type = <"List">
					>
				>
				["severity"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Intensity of a symptom or condition. The criteria for this value differ by condition.">
					name = <"severity">
					type = <"Concept">
				>
				["clinicalCourse"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Both the course and onset of a disease. Many conditions with an acute (sudden) onset also have an acute (short duration) course. Few diseases with a chronic (long - term) course would need to have their onset sub-divided into rapid or gradual subtypes, and thus there is no clear need for separating the rapidity of onset from the duration of a disease; based on testing by implementers and modelers, a single attribute with values that combine these meanings has clearly been more reproducible
and useful than two attributes that attempt to separate the meanings.">
					name = <"clinicalCourse">
					type = <"Concept">
				>
				["episodicity"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Represents the history of episodes of care provided by a physician or other care provider for this condition.">
					name = <"episodicity">
					type = <"Concept">
				>
				["diseasePhase"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The physiological state of a condition that develops over time. Examples of disease phase include incubation period (exposed, asymptomatic), prodromal (symptoms but not full disease breakout), acute (full manifestation of disease), and convalescent.">
					name = <"diseasePhase">
					type = <"Concept">
				>
				["associatedSignAndSymptom"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"Physical observations captured by a clinician or subjective conditions experienced by a patient that are related to a medical condition.">
					name = <"associatedSignAndSymptom">
					cardinality = <|>=0|>
					type_def = <
						type = <"Concept">
						container_type = <"List">
					>
				>
				["periodicity"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"The length of time from one occurrence to the next (e.g., intermittent, weekly, continuous).">
					name = <"periodicity">
					cardinality = <|>=0|>
					type_def = <
						type = <"Concept">
						container_type = <"List">
					>
				>
				["alleviatingFactor"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"An action or intervention that makes a symptom less severe. Examples may include: rest, heat, ice, etc.
">
					name = <"alleviatingFactor">
					cardinality = <|>=0|>
					type_def = <
						type = <"Concept">
						container_type = <"List">
					>
				>
				["exacerbatingFactor"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"An action or intervention which makes a symptom more severe.">
					name = <"exacerbatingFactor">
					cardinality = <|>=0|>
					type_def = <
						type = <"Concept">
						container_type = <"List">
					>
				>
				["suspectedEntity"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The substance, medication, microorganism, force, or other agent that resulted in the condition described in this assertion. ">
					name = <"suspectedEntity">
					type = <"Entity">
				>
				["clinicalStatus"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"For an assertion of a health condition, an indication of the status of the condition from the point of view of physiology or clinical diagnostic process. Values may typically include: Active, Relapse, Remission, Resolved, Confirmed, Ruled out, Unknown.">
					name = <"clinicalStatus">
					type = <"Concept">
				>
			>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <327>
		>
		["LaboratoryTestResult"] = <
			documentation = <"Measurement resulted from a laboratory.">
			name = <"LaboratoryTestResult">
			ancestors = <"EvaluationResult", ...>
			properties = <
				["diagnosticService"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"The service completing the observations, e.g. biochemistry,  microbiology, blood bank, etc.">
					name = <"diagnosticService">
					cardinality = <|>=0|>
					type_def = <
						type = <"Concept">
						container_type = <"List">
					>
				>
				["specimen"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"The specimen used for the analysis.">
					name = <"specimen">
					cardinality = <|>=0|>
					type_def = <
						type = <"Specimen">
						container_type = <"List">
					>
				>
				["poctIndicator"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Indicates whether this result was from point-of-care testing (POCT).">
					name = <"poctIndicator">
					type = <"Concept">
				>
			>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <328>
		>
		["PhysicalEvaluationResult"] = <
			documentation = <"Measurement resulting from a physical assessment procedure.">
			name = <"PhysicalEvaluationResult">
			ancestors = <"EvaluationResult", ...>
			properties = <
				["bodyLocation"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"Captures the post-coordinated location on the body where the characteristic was observed.">
					name = <"bodyLocation">
					cardinality = <|>=0|>
					type_def = <
						type = <"AnatomicalLocation">
						container_type = <"List">
					>
				>
			>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <329>
		>
		["EvaluationResult"] = <
			documentation = <"The outcome of an evaluation of a characteristic. This model holds a &quot;question&quot; in the key and holds a value in the result. This value is further qualified through the model's properties.
">
			name = <"EvaluationResult">
			ancestors = <"FindingTopic", ...>
			properties = <
				["exceptionValue"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"If the result value is missing, a code explaining the reason the result cannot be provided.">
					name = <"exceptionValue">
					type = <"Concept">
				>
				["method"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"The means by which a measurement, evaluation, or assessment was made.">
					name = <"method">
					cardinality = <|>=0|>
					type_def = <
						type = <"Concept">
						container_type = <"List">
					>
				>
				["device"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"The device used to evaluate the characteristic such as the type of blood pressure cuff used on a patient.">
					name = <"device">
					cardinality = <|>=0|>
					type_def = <
						type = <"ClinicalDevice">
						container_type = <"List">
					>
				>
				["sequence"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Sequence is a number placed onto the data which refers to the order it occurred in or needs to be retrieved by.">
					name = <"sequence">
					type = <"Concept">
				>
				["deltaFlag"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Flag indicating whether there was a significant change from previous results.">
					name = <"deltaFlag">
					type = <"Concept">
				>
				["referenceRange"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"The range for the measurement.">
					name = <"referenceRange">
					cardinality = <|>=0|>
					type_def = <
						type = <"ReferenceRange">
						container_type = <"List">
					>
				>
				["evaluationProcedure"] = (P_BMM_GENERIC_PROPERTY) <
					documentation = <"The evaluation procedure that is the source of the evaluation result.">
					name = <"evaluationProcedure">
					type_def = <
						root_type = <"ClinicalStatement">
						generic_parameters = <"ProcedureTopic", "Performance">
					>
				>
				["precondition"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"Describes the previously existing conditions or states that could affect a measurement or assessment, for example, a patient's weight taken while clothed, height with or without shoes, blood pressure taken while standing or lying down. Precondition aligns with the SNOMED CT Observable model attribute 704326004 |Precondition (attribute)|">
					name = <"precondition">
					cardinality = <|>=0|>
					type_def = <
						type = <"Concept">
						container_type = <"List">
					>
				>
				["evaluationDate"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Date the result of was produced from the evaluation or laboratory test.">
					name = <"evaluationDate">
					type = <"TemporalValue">
				>
				["validityPeriod"] = (P_BMM_GENERIC_PROPERTY) <
					documentation = <"Interval of time when the measurement result holds.">
					name = <"validityPeriod">
					type_def = <
						root_type = <"IntervalValue">
						generic_parameters = <"TemporalValue", ...>
					>
				>
			>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <330>
		>
		["LaboratoryProcedure"] = <
			documentation = <"Specialization of Procedure that represents a procedure performed on a collected specimen such as a blood panel or a biopsy.">
			name = <"LaboratoryProcedure">
			ancestors = <"ProcedureTopic", ...>
			properties = <
				["type"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"A code indicating the type of laboratory procedure performed. ">
					name = <"type">
					type = <"Concept">
					is_mandatory = <True>
				>
				["specimen"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Tissues, objects, or samples taken from the patient during the procedure including biopsies, aspiration fluid, or other samples sent for pathological analysis.">
					name = <"specimen">
					type = <"Specimen">
					is_mandatory = <True>
				>
				["finding"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"A result of the laboratory procedure, such as an absolution neutrophil count (ANC).">
					name = <"finding">
					cardinality = <|>=0|>
					type_def = <
						type_def = (P_BMM_GENERIC_TYPE) <
							root_type = <"ClinicalStatement">
							generic_parameters = <"FindingTopic", "FindingContext">
						>
						container_type = <"List">
					>
				>
				["device"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"Device used for the laboratory procedure.">
					name = <"device">
					cardinality = <|>=0|>
					type_def = <
						type = <"Device">
						container_type = <"List">
					>
				>
			>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <331>
		>
		["SpecimenCollection"] = <
			documentation = <"The specific instance of the procedure in which the specimen was obtained. ">
			name = <"SpecimenCollection">
			ancestors = <"ProcedureTopic", ...>
			properties = <
				["approachBodySite"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"A coded value specifying the body site, used to approach the target site during the collection procedure, if different from target site. 

EXAMPLE(S): Liver biopsy is obtained via a percutaneous needle, the approach site would be the point of entry of the needle. ">
					name = <"approachBodySite">
					type = <"AnatomicalLocation">
				>
				["targetBodySite"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The code representing the anatomical location from which the specimen was collected (if subject is a human or animal subject).   

EXAMPLE(S): lung, liver, femur 

NOTE: This element is not used for environmental specimens.">
					name = <"targetBodySite">
					type = <"AnatomicalLocation">
				>
				["collectedSpecimen"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"The specimen collected.">
					name = <"collectedSpecimen">
					cardinality = <|>=1|>
					type_def = <
						type = <"Specimen">
						container_type = <"List">
					>
					is_mandatory = <True>
				>
				["delay"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The amount of time the collection was delayed from the requested date&#47;time of the order.">
					name = <"delay">
					type = <"Duration">
				>
				["repetitionNumber"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The number of times that a collection was attempted for the Order related to this collection.">
					name = <"repetitionNumber">
					type = <"IntegerType">
				>
				["sourceLocation"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The geographical location or health care facility location where the specimen was collected. For samples taken from the environment, source location could be the room where a surface swab was taken or geographic location where a soil sample was obtained.">
					name = <"sourceLocation">
					type = <"Location">
				>
			>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <332>
		>
		["SurgicalProcedure"] = <
			documentation = <"The topic for surgical procedures, independent of whether the surgery was proposed, ordered, performed, not performed, etc.">
			name = <"SurgicalProcedure">
			ancestors = <"ProcedureTopic", ...>
			properties = <
				["site"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"The site where the procedure is performed such as the removal of a cyst.">
					name = <"site">
					cardinality = <|>=0|>
					type_def = <
						type = <"AnatomicalLocation">
						container_type = <"List">
					>
				>
				["surgicalApproach"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"The directional, relational, or spatial access to the site of a surgical procedure, e.g., intranasal approach.">
					name = <"surgicalApproach">
					cardinality = <|>=0|>
					type_def = <
						type = <"Concept">
						container_type = <"List">
					>
				>
				["access"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"The route used to access the site of a procedure. It is used to distinguish open, closed, and percutaneous procedures.">
					name = <"access">
					cardinality = <|>=0|>
					type_def = <
						type = <"Concept">
						container_type = <"List">
					>
				>
				["usingAccessDevice"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"The instrument or equipment used to access the site of a procedure.">
					name = <"usingAccessDevice">
					cardinality = <|>=0|>
					type_def = <
						type = <"ClinicalDevice">
						container_type = <"List">
					>
				>
				["usingDevice"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <" The instrument or equipment utilized to execute an action">
					name = <"usingDevice">
					cardinality = <|>=0|>
					type_def = <
						type = <"ClinicalDevice">
						container_type = <"List">
					>
				>
			>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <333>
		>
		["SurgicalProcedureOnDevice"] = <
			documentation = <"Procedure performed on a device such as the insertion or removal of an implant or the cleaning or repair of an implemented device.">
			name = <"SurgicalProcedureOnDevice">
			ancestors = <"SurgicalProcedure", ...>
			properties = <
				["directDevice"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"The device on which the procedure directly acts such as the removal of stents.">
					name = <"directDevice">
					cardinality = <|>=0|>
					type_def = <
						type = <"ClinicalDevice">
						container_type = <"List">
					>
				>
				["indirectDevice"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"Device when the action is done on something that is located in or on a device, but is not done directly on the device itself.">
					name = <"indirectDevice">
					cardinality = <|>=0|>
					type_def = <
						type = <"ClinicalDevice">
						container_type = <"List">
					>
				>
			>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <334>
		>
		["ImagingProcedure"] = <
			documentation = <"Experimental class for an imaging procedure. Note that this class is still incomplete at this time.">
			name = <"ImagingProcedure">
			ancestors = <"ProcedureTopic", ...>
			properties = <
				["site"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"The site where the procedure is applied.">
					name = <"site">
					cardinality = <|>=0|>
					type_def = <
						type = <"AnatomicalLocation">
						container_type = <"List">
					>
				>
				["usingSubstance"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"Substance used for this imaging procedure such as a contrast agent.">
					name = <"usingSubstance">
					cardinality = <|>=0|>
					type_def = <
						type = <"Concept">
						container_type = <"List">
					>
				>
			>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <335>
		>
		["ModifyTargetAction"] = <
			documentation = <"Action intended to modify an existing action such as a request to discontinue the administration of a medication or a proposal to cancel an existing order.

Experimental">
			name = <"ModifyTargetAction">
			ancestors = <"ProcedureTopic", ...>
			properties = <
				["targetAction"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"The target action that this topic modifies.">
					name = <"targetAction">
					cardinality = <|>=1|>
					type_def = <
						type_def = (P_BMM_GENERIC_TYPE) <
							root_type = <"ClinicalStatement">
							generic_parameters = <"ProcedureTopic", "ActionContext">
						>
						container_type = <"List">
					>
					is_mandatory = <True>
				>
			>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <336>
		>
		["SpecimenProcessing"] = <
			documentation = <"Processing step performed on a specimen.">
			name = <"SpecimenProcessing">
			ancestors = <"Locatable", "ProcedureTopic">
			properties = <
				["additive"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"Substance added to a specimen for preservation or to aid in the process as required by the procedure.   

EXAMPLE(s): Anticoagulant, Separator, stabilizer">
					name = <"additive">
					cardinality = <|>=0|>
					type_def = <
						type = <"Concept">
						container_type = <"List">
					>
				>
				["status"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Coded representation of the state of the processing step in the procedure. 

EXAMPLE(S): completed, in progress, scheduled">
					name = <"status">
					type = <"Concept">
				>
				["temperature"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The temperature at which the processing occurred.">
					name = <"temperature">
					type = <"Quantity">
				>
				["specimen"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The specimen processed by this procedure.">
					name = <"specimen">
					type = <"Specimen">
				>
			>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <337>
		>
		["PhysicalEvaluation"] = <
			documentation = <"A physical evaluation assessment performed on a patient such as review of systems, or taking vital signs at the doctor's office.">
			name = <"PhysicalEvaluation">
			ancestors = <"ProcedureTopic", ...>
			properties = <
				["device"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"The device or devices used to perform the physical evaluation such as using a blood pressure cuff when taking a patient's blood pressure.">
					name = <"device">
					cardinality = <|>=0|>
					type_def = <
						type = <"Device">
						container_type = <"List">
					>
				>
			>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <338>
		>
		["Absent"] = <
			documentation = <"Context indicating the known absence of a finding in the subject of information. If the finding is suspected to be absent, use the known or suspected present context instead.">
			name = <"Absent">
			ancestors = <"PresenceAbsenceContext", ...>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <339>
		>
		["ActionContext"] = <
			documentation = <"The ActionContext class provides the context for the ProcedureTopic of a clinical statement. For instance, a statement about a procedure may specify that the procedure has been proposed, ordered, planned, performed or possibly not performed. This class aligns with the SNOMED Situations with Explicit Context.">
			name = <"ActionContext">
			ancestors = <"StatementContext", ...>
			properties = <
				["justification"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"Reason the action was done or justification for the action. Reasons may also be specified for not performing an action. 
">
					name = <"justification">
					cardinality = <|>=0|>
					type_def = <
						type = <"Concept">
						container_type = <"List">
					>
				>
				["currentStatus"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The latest recorded status of an action within the specified context. An action may be interpretable within a specific context such as whether it is planned, ordered, or performed. Moreover, within each of these contexts, an action may have a set of allowable states in which it can exist. For instance, a proposal may be rejected or an order may be signed, canceled or superceded by another order. 
">
					name = <"currentStatus">
					type = <"Attribution">
				>
				["scope"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Indicates the scope or clinical setting where the context applies, e.g., Inpatient, outpatient, community.
">
					name = <"scope">
					type = <"Concept">
				>
				["supportingInformation"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"Additional information that supports the performance, non-performance, ordering, or proposing of the clinical action, for example, the patient height and weight, or documentation of heart rate before administering the medication (in case medication needs to be held if heart rate falls in a specific range).">
					name = <"supportingInformation">
					cardinality = <|>=0|>
					type_def = <
						type = <"InformationEntryAssociation">
						container_type = <"List">
					>
				>
			>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <340>
		>
		["FindingContext"] = <
			documentation = <"The FindingContext class provides the context for the EvaluationResult and Assertion topics of a clinical statement. For instance, a statement about findings may state that the finding was observed present or absent. This class aligns with the SNOMED Situation with Explicit Context.">
			name = <"FindingContext">
			ancestors = <"StatementContext", ...>
			properties = <
				["status"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The last recorded state of the finding, indicating whether the finding is preliminary, amended, final, to be attained, etc.">
					name = <"status">
					type = <"Attribution">
				>
			>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <341>
		>
		["KnownOrSuspectedPresent"] = <
			documentation = <"A context indicating that a finding is known or suspected to be present in the subject of information.">
			name = <"KnownOrSuspectedPresent">
			ancestors = <"PresenceAbsenceContext", ...>
			properties = <
				["certainty"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Represents a qualitative probability for the presence of the condition, such as unlikely, highly likely, etc. ">
					name = <"certainty">
					type = <"Concept">
				>
			>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <342>
		>
		["NonCompletion"] = <
			documentation = <"A record that a clinical act was initiated by not completed. ">
			name = <"NonCompletion">
			ancestors = <"Performance", ...>
			properties = <
				["nonCompletionTimeframe"] = (P_BMM_GENERIC_PROPERTY) <
					documentation = <"The original scheduled time for the action planned for execution.">
					name = <"nonCompletionTimeframe">
					type_def = <
						root_type = <"IntervalValue">
						generic_parameters = <"TemporalValue", ...>
					>
				>
			>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <343>
		>
		["NonPerformance"] = <
			documentation = <"A record that a clinical act was not performed and&#47;or never initiated. Do not use this context if the act was initiated or started but aborted or cancelled. Use the NotPerformed context instead.">
			name = <"NonPerformance">
			ancestors = <"ActionContext", ...>
			properties = <
				["scheduledPerformanceTime"] = (P_BMM_GENERIC_PROPERTY) <
					documentation = <"The time period during which the act had been intended for execution.
">
					name = <"scheduledPerformanceTime">
					type_def = <
						root_type = <"IntervalValue">
						generic_parameters = <"TemporalValue", ...>
					>
				>
			>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <344>
		>
		["Order"] = <
			documentation = <"An instruction by a healthcare provider to another healthcare provider to perform some act.">
			name = <"Order">
			ancestors = <"Request", ...>
			properties = <
				["groupIdentifier"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"A shared identifier common to all requests that were authorized more or less simultaneously by a single author. It could be the identifier of a requisition or prescription that contains orders for a set of medications, each individual medication order having the identifier of the parent order.">
					name = <"groupIdentifier">
					type = <"Identifier">
				>
				["basedOn"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"The proposal that is partly or wholly fulfilled  by the performance of this act.">
					name = <"basedOn">
					cardinality = <|>=0|>
					type_def = <
						type_def = (P_BMM_GENERIC_TYPE) <
							root_type = <"ClinicalStatement">
							generic_parameters = <"ProcedureTopic", "Proposal">
						>
						container_type = <"List">
					>
				>
				["patientInstructions"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"Identifies the ordering provider's instructions to the patient or to the provider on how to deliver or comply with the ordered procedure.">
					name = <"patientInstructions">
					cardinality = <|>=0|>
					type_def = <
						type = <"CodedText">
						container_type = <"List">
					>
				>
				["priorRequest"] = (P_BMM_GENERIC_PROPERTY) <
					documentation = <"A link to a resource representing an earlier order related order or prescription.">
					name = <"priorRequest">
					type_def = <
						root_type = <"ClinicalStatement">
						generic_parameters = <"ProcedureTopic", "Request">
					>
				>
			>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <345>
		>
		["Performance"] = <
			documentation = <"A context indicating the actual performance or execution of a healthcare-related action, e.g., administration of the third dose of Hepatitis B vaccine on Dec 4th 2012, or an appendectomy performed today.
">
			name = <"Performance">
			ancestors = <"ActionContext", ...>
			properties = <
				["performed"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"The party that performed the action.">
					name = <"performed">
					cardinality = <|>=0|>
					type_def = <
						type = <"Attribution">
						container_type = <"List">
					>
				>
				["enactsPlan"] = (P_BMM_GENERIC_PROPERTY) <
					documentation = <"The plan that is partly or wholly enacted by the performance of this act.
">
					name = <"enactsPlan">
					type_def = <
						root_type = <"ClinicalStatement">
						generic_parameters = <"ProcedureTopic", "Plan">
					>
				>
				["fulfillsOrder"] = (P_BMM_GENERIC_PROPERTY) <
					documentation = <"The order that is partly or wholly enacted by the performance of this act.
">
					name = <"fulfillsOrder">
					type_def = <
						root_type = <"ClinicalStatement">
						generic_parameters = <"ProcedureTopic", "Order">
					>
				>
				["basedOn"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"The proposal that is partly or wholly fulfilled  by the performance of this act.
">
					name = <"basedOn">
					cardinality = <|>=0|>
					type_def = <
						type_def = (P_BMM_GENERIC_TYPE) <
							root_type = <"ClinicalStatement">
							generic_parameters = <"ProcedureTopic", "Proposal">
						>
						container_type = <"List">
					>
				>
				["duration"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The duration of time the action was performed.">
					name = <"duration">
					type = <"Duration">
				>
				["partOf"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"A larger action of which this particular action is a component or step.">
					name = <"partOf">
					cardinality = <|>=0|>
					type_def = <
						type = <"ClinicalStatement">
						container_type = <"List">
					>
				>
			>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <346>
		>
		["Plan"] = <
			documentation = <"A record indicating an action in the planning phase. Typically, this would include a time at which the action is scheduled to be performed.
">
			name = <"Plan">
			ancestors = <"ActionContext", ...>
			properties = <
				["planned"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Information about who planned the action, when they planned it, etc...">
					name = <"planned">
					type = <"Attribution">
				>
				["fulfillsOrder"] = (P_BMM_GENERIC_PROPERTY) <
					documentation = <"The order that is partly or wholly enacted by the performance of this act.
">
					name = <"fulfillsOrder">
					type_def = <
						root_type = <"ClinicalStatement">
						generic_parameters = <"ProcedureTopic", "Order">
					>
				>
				["basedOn"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"The proposal that is partly or wholly fulfilled  by the performance of this act.">
					name = <"basedOn">
					cardinality = <|>=0|>
					type_def = <
						type_def = (P_BMM_GENERIC_TYPE) <
							root_type = <"ClinicalStatement">
							generic_parameters = <"ProcedureTopic", "Proposal">
						>
						container_type = <"List">
					>
				>
				["expectedPerformanceTime"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The time when the action is expected to be performed.">
					name = <"expectedPerformanceTime">
					type = <"TemporalValue">
				>
				["expectedPerformer"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"Persons who are expected to or intended to perform this action, e.g., the person who will perform the surgery. ">
					name = <"expectedPerformer">
					cardinality = <|>=0|>
					type_def = <
						type = <"Party">
						container_type = <"List">
					>
				>
			>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <347>
		>
		["Promise"] = <
			documentation = <"An order from the perspective of a fulfillment system. ">
			name = <"Promise">
			ancestors = <"ActionContext", ...>
			properties = <
				["promised"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Information about who made the promise, when did they make it, how was it conveyed, etc...">
					name = <"promised">
					type = <"Attribution">
				>
				["fulfillsOrder"] = (P_BMM_GENERIC_PROPERTY) <
					documentation = <"The order that is partly or wholly enacted by the performance of this act.
">
					name = <"fulfillsOrder">
					type_def = <
						root_type = <"ClinicalStatement">
						generic_parameters = <"ProcedureTopic", "Order">
					>
				>
				["orderModality"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The method the provider used to communicate to the user to take action on the order. Examples include: written, telephoned, verbal, electronically entered, etc.">
					name = <"orderModality">
					type = <"Concept">
				>
				["orderDiscontinueDate"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"This is the date the order was discontinued.">
					name = <"orderDiscontinueDate">
					type = <"TemporalValue">
				>
			>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <348>
		>
		["Proposal"] = <
			documentation = <"An offer or a suggestion to perform a healthcare act. A recommendation to a provider is an example of proposal made by a CDS system. A proposal must be accepted by an entity in order for it to be performed.
">
			name = <"Proposal">
			ancestors = <"Request", ...>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <349>
		>
		["ProposalAgainst"] = <
			documentation = <"Concept represents a recommendation from a clinical decision support system or advice from a consultation to not perform an act.">
			name = <"ProposalAgainst">
			ancestors = <"ActionContext", ...>
			properties = <
				["requested"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Information about who made the proposal against the performance of a particular action, when it was made, how it was conveyed, etc...">
					name = <"requested">
					type = <"Attribution">
				>
				["validityPeriod"] = (P_BMM_GENERIC_PROPERTY) <
					documentation = <"The time period during which the act should not be performed. If omitted, the implication is that the act should not be performed, ever.">
					name = <"validityPeriod">
					type_def = <
						root_type = <"IntervalValue">
						generic_parameters = <"TemporalValue", ...>
					>
				>
			>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <350>
		>
		["StatementContext"] = <
			documentation = <"Compositional and reusable grouping of clinical statement attributes that provides the context for the topic of a clinical statement. The StatementContext class aligns with the SNOMED CT Situations with Explicit Context. The StatementContext provides the expressivity required to specify that an act was performed or not performed or that a finding was asserted to be present or absent for the given subject of information. It also often holds provenance information relevant to the context of the clinical statement. It is important to note that by default the context applies to the conjunction of the attribute specified in the statement. For instance, if a clinical statement has a topic describing a rash on left arm and a context of 'absent', then the statement states that the subject of interest did not have a rash on the left arm but might have had one on the right arm.">
			name = <"StatementContext">
			ancestors = <"Locatable", ...>
			properties = <
				["type"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The ontological status of the statement, e.g., whether it exists, does not exist, is planned, etc. Attribute aligns with the SNOMED CT Situation with Explicit Context (SWEC) Concept Model context attributes: 'Finding context (attribute)' (SCTID: 408729009) and 'Procedure context (attribute)' (SCTID: 408730004). 

The range allowed for this attribute shall be consistent with the SNOMED CT concept model specification for SWEC.">
					name = <"type">
					type = <"Concept">
					is_mandatory = <True>
				>
				["temporalContext"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Whether the topic is prospective or retrospective. E.g., action occurred in the past. This attribute is aligned with the SNOMED Situation With Explicit Context temporal context attribute.">
					name = <"temporalContext">
					type = <"Concept">
				>
			>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <351>
		>
		["Request"] = <
			documentation = <"A request by a healthcare provider or system to another healthcare provider or system to perform some action.">
			name = <"Request">
			ancestors = <"ActionContext", ...>
			properties = <
				["requested"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Information about the ordering of the action such as who made the request, when the request was made, how it was made, etc...">
					name = <"requested">
					type = <"Attribution">
				>
				["type"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Indicates the type of the request that is made, for example, to initiate an action, to suspend an ongoing activity, to discontinue an ongoing activity, or to cancel an existing request. ">
					name = <"type">
					type = <"Concept">
					is_mandatory = <True>
				>
				["expectedPerformer"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"Persons who are expected to or intended to perform this action, e.g., the person who will perform the surgery. ">
					name = <"expectedPerformer">
					cardinality = <|>=0|>
					type_def = <
						type = <"Party">
						container_type = <"List">
					>
				>
				["priority"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"How quickly the action must be initiated. Includes concepts such as stat, urgent, routine.">
					name = <"priority">
					type = <"Concept">
				>
				["timing"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The proposed timing for the request.">
					name = <"timing">
					type = <"Timing">
				>
			>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <352>
		>
		["EventContext"] = <
			documentation = <"Context associated with non-clinical events such as floods, accidents, and tornadoes.">
			name = <"EventContext">
			ancestors = <"StatementContext", ...>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <353>
		>
		["PresenceAbsenceContext"] = <
			documentation = <"Base class for contexts asserting presence or absence of a finding.">
			name = <"PresenceAbsenceContext">
			ancestors = <"FindingContext", ...>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <354>
		>
		["GoalContext"] = <
			documentation = <"Clinical statement context for a goal.">
			name = <"GoalContext">
			ancestors = <"FindingContext", ...>
			properties = <
				["priority"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Identifies the mutually agreed level of importance associated with reaching&#47;sustaining the goal.">
					name = <"priority">
					type = <"Concept">
				>
				["start"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The date or event after which the goal should begin being pursued.">
					name = <"start">
					type = <"Timing">
				>
				["expressedBy"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Indicates who established the goal (rather than the subject who is to pursue the goal). ">
					name = <"expressedBy">
					type = <"Party">
				>
				["category"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Indicates a category the goal falls within, for example, dietary, safety, behavioral, nursing, physiotherapy.">
					name = <"category">
					type = <"Concept">
				>
				["objectiveOfCare"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Human-readable and optionally coded description of a specific desired objective of care, such as &quot;control blood pressure&quot; or &quot;negotiate an obstacle course&quot; or &quot;dance with child at wedding&quot;.">
					name = <"objectiveOfCare">
					type = <"CodedText">
				>
				["targetDate"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Indicates when goal should be reached.">
					name = <"targetDate">
					type = <"TemporalValue">
				>
				["addresses"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"The identified conditions and other health record elements that are intended to be addressed by the goal.">
					name = <"addresses">
					cardinality = <|>=0|>
					type_def = <
						type = <"ClinicalStatement">
						container_type = <"List">
					>
				>
				["outcomeCode"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"Identifies the change (or lack of change) at the point when the status of the goal is assessed.">
					name = <"outcomeCode">
					cardinality = <|>=0|>
					type_def = <
						type = <"Concept">
						container_type = <"List">
					>
				>
				["outcomeReference"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"Details of what's changed (or not changed).">
					name = <"outcomeReference">
					cardinality = <|>=0|>
					type_def = <
						type = <"ClinicalStatement">
						container_type = <"List">
					>
				>
			>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <355>
		>
		["NoKnown"] = <
			documentation = <"The context to express an assertion of absence, within the current limits of knowledge. Typically, this context is used for allergy and intolerance statements where no known drug allergy implies that there might be a medication the patient is allergic to, but it has thus far not been encountered.">
			name = <"NoKnown">
			ancestors = <"FindingContext", ...>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <356>
		>
		["AssertionKnownOrSuspectedPresent"] = <
			documentation = <"A context class indicating the known or suspected presence of a condition or characteristic in the subject of information.">
			name = <"AssertionKnownOrSuspectedPresent">
			ancestors = <"KnownOrSuspectedPresent", ...>
			properties = <
				["dateOfOnset"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Date when the asserted finding began manifesting or was first observed. This property may have a broad precision (e.g., a year rather than a date).">
					name = <"dateOfOnset">
					type = <"TemporalValue">
				>
				["ageAtOnset"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The age of the patient or subject at onset of the Condition. Note that this property could potentially be derived.">
					name = <"ageAtOnset">
					type = <"Quantity">
				>
				["dateAbated"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Date when the asserted finding abated. This property may have a broad precision (e.g., a year rather than a date).">
					name = <"dateAbated">
					type = <"TemporalValue">
				>
				["hasAbated"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Flag indicating whether a condition has abated when a specific date of, time period, or age at abatement is not known.">
					name = <"hasAbated">
					type = <"Concept">
				>
				["presentOnAdmission"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"PresentOnAdmission is used to indicate if a finding or other characteristic existed upon admission. Wound, IV, dressing, bruise etc.">
					name = <"presentOnAdmission">
					type = <"Concept">
				>
			>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <357>
		>
		["ProcedureTopic"] = <
			documentation = <"Description of a healthcare action, independent of action context.
">
			name = <"ProcedureTopic">
			ancestors = <"StatementTopic", ...>
			properties = <
				["description"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"An account of the procedure in narrative form.">
					name = <"description">
					type = <"PlainText">
				>
				["reason"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The reason for performing this act.">
					name = <"reason">
					type = <"Concept">
				>
				["method"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Technique or way of accomplishing the act, e.g., endoscopic, arthroscopic, etc.">
					name = <"method">
					type = <"Concept">
				>
				["precondition"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"Patient state or condition that must be true prior to the performance of the procedure such as 'at rest', 'supine', 'fasting', etc.">
					name = <"precondition">
					cardinality = <|>=0|>
					type_def = <
						type = <"Concept">
						container_type = <"List">
					>
				>
			>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <358>
		>
		["EventTopic"] = <
			documentation = <"An non-clinical event such as a natural disaster. Topic allows the capture of information related to such events when they pertain to the clinical context associated with a given patient.">
			name = <"EventTopic">
			ancestors = <"StatementTopic", ...>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <359>
		>
		["FindingTopic"] = <
			documentation = <"The base topic class for assertions and evaluation results that result from medical investigations or diagnostics, independent of the context of the result being present, absent, or hypothetical (as in the case of a goal).">
			name = <"FindingTopic">
			ancestors = <"StatementTopic", ...>
			properties = <
				["result"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The value of the finding, typically a quantity for measurements and a concept code for qualitative evaluations and assertions. In general, any data type can be the value of a finding. ">
					name = <"result">
					type = <"DataType">
					is_mandatory = <True>
				>
				["description"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"An optional description of the finding in human narrative form.">
					name = <"description">
					type = <"PlainText">
				>
				["multimedia"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"Audio, visual, or other binary content produced during the evaluation, such as an X-ray.">
					name = <"multimedia">
					cardinality = <|>=0|>
					type_def = <
						type = <"Multimedia">
						container_type = <"List">
					>
				>
				["interpretation"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"A clinical judgment concerning the significance or impact of the finding with respect to its subject (e.g., the patient). ">
					name = <"interpretation">
					cardinality = <|>=0|>
					type_def = <
						type = <"Concept">
						container_type = <"List">
					>
				>
			>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <360>
		>
		["StatementTopic"] = <
			documentation = <"Compositional and reusable grouping of clinical statement attributes that make up the clinical focus of the statement. StatementTopic class attributes are aligned with SNOMED CT Concept Model attributes when such an overlap exists. Note that this class does not include contextual attributes such as the nature of the action (ordered, proposed, planned, etc...), the nature of the patient state being described (e.g., present, suspected present, absent), and the attribution of this information (the who, when, where, how, why of the information recorded).">
			name = <"StatementTopic">
			ancestors = <"Locatable", ...>
			properties = <
				["key"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The concept representing the finding or action that is the topic of the statement. For actions, the key represents the action being described. For findings, the key represents the &quot;question&quot; or property being investigated. For evaluation result findings, the key contains a concept for an observable entity, such as systolic blood pressure. For assertion findings (which by nature lack an explicit question), the key contains a default concept signifying that an assertion is being made. In all cases, the key describes the topic independent of the context of the action or the finding.">
					name = <"key">
					type = <"Concept">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <361>
		>
		["ClinicalDevice"] = <
			documentation = <"This resource identifies an instance or a type of a manufactured item that is used in the provision of healthcare without being substantially changed through that activity. The device may be a medical or non-medical device. Medical devices includes durable (reusable) medical equipment, implantable devices, as well as disposable equipment used for diagnostic, treatment, and research for healthcare and public health. Non-medical devices may include items such as a machine, cellphone, computer, application, etc.">
			name = <"ClinicalDevice">
			ancestors = <"Device", ...>
			properties = <
				["status"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Whether the device is available for use, currently in use, out of use, etc. ">
					name = <"status">
					type = <"Concept">
				>
				["owner"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The organization responsible for the provision and&#47;or ongoing maintenance of the device.">
					name = <"owner">
					type = <"Organization">
				>
				["contact"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"Contact details for an organization or a particular human that is responsible for the device.">
					name = <"contact">
					cardinality = <|>=0|>
					type_def = <
						type = <"PartyAssociation">
						container_type = <"List">
					>
				>
			>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <362>
		>
		["Medication"] = <
			documentation = <"A class representing a medication, either a prescription drug or over-the-counter drug (potentially including vitamins, herbal remedies, and dietary supplements) that is used to prevent, treat, or relieve symptoms of a disease or abnormal condition. It covers the ingredients and the packaging for a medication.">
			name = <"Medication">
			ancestors = <"Entity", ...>
			properties = <
				["code"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The medication concept that represents this medication.">
					name = <"code">
					type = <"Concept">
					is_mandatory = <True>
				>
				["status"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"A code to indicate if the medication is in active use. This status is not intended to specify if the medication is part of a formulary.">
					name = <"status">
					type = <"Concept">
				>
				["manufacturer"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Describes the details of the manufacturer of the medication product. This is not intended to represent the distributor of a medication product.">
					name = <"manufacturer">
					type = <"Organization">
				>
				["form"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The medication form such as tablet, capsule, ampoule, etc...">
					name = <"form">
					type = <"Concept">
				>
				["amount"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Specific amount of the drug in the packaged product, for example, 20 tablets. When specifying a product, e.g., insulin glargine 100 unit per mL solution for injection, this attribute provides additional clarification of the packaged amount (for example, 3 mL, 10mL, etc).">
					name = <"amount">
					type = <"Quantity">
				>
				["ingredient"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"Active and&#47;or inactive ingredient">
					name = <"ingredient">
					cardinality = <|>=0|>
					type_def = <
						type = <"Ingredient">
						container_type = <"List">
					>
				>
				["batchLotNumber"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The assigned lot number of a batch associated with the specified product. ">
					name = <"batchLotNumber">
					type = <"PlainText">
				>
				["batchExpirationDate"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"When this specific batch of product will expire.">
					name = <"batchExpirationDate">
					type = <"DateTime">
				>
			>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <363>
		>
		["Specimen"] = <
			documentation = <"A specimen is a substance, physical object, or collection of objects, that the laboratory considers a single discrete, uniquely identified unit that is the subject of one or more steps in the laboratory workflow. A specimen may include multiple physical pieces as long as they are considered a single unit within the laboratory workflow. A specimen results from one to many specimen collection procedures, and may be contained in multiple specimen containers. Specimen may have one or more processing activities. ">
			name = <"Specimen">
			ancestors = <"Entity", ...>
			properties = <
				["parentSpecimenIdentifier"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Specimen identifier of the specimen from which the current specimen was derived .">
					name = <"parentSpecimenIdentifier">
					type = <"Identifier">
				>
				["classCode"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Coded representation of the general category of the specimen, for example, environmental, food, or biologic product.">
					name = <"classCode">
					type = <"Concept">
					is_mandatory = <True>
				>
				["type"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Coded representation of the precise nature of the entity that will be the source material for the observation, e.g., stool, tissue, blood, CSF ">
					name = <"type">
					type = <"Concept">
				>
				["subtype"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Coded representation of lower level categorization of the specimen. In Clinical Genomics, there is a need to identify specific subtypes such as somatic or germline samples.">
					name = <"subtype">
					type = <"Concept">
				>
				["risk"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"This field contains any known or suspected specimen hazards, e.g., exceptionally infectious agent, blood from a hepatitis patient, BioSafetyLevel (BSL), flammable, radioactive.">
					name = <"risk">
					cardinality = <|>=0|>
					type_def = <
						type = <"Concept">
						container_type = <"List">
					>
				>
				["handling"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"Coded representation of how the specimen and&#47;or container need to be handled from the time of collection through the initiation of testing, e.g., keep frozen, do not allow contact with water">
					name = <"handling">
					cardinality = <|>=0|>
					type_def = <
						type = <"Concept">
						container_type = <"List">
					>
				>
				["isDerived"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Flag to note that the current specimen is derived from another specimen. Derivation procedure will be indicated by the SpecimenProcessingActivity – processingProcedure code.  

Conformance Statement - if the &quot;Is derived&quot; flag is checked, the parentSpecimenIdentifer attribute for this specimen (see second entry in this table) must be filled out.">
					name = <"isDerived">
					type = <"Concept">
				>
				["form"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Coded representation specifying the state and nature of the material, e.g., solid, liquid, gas, tablet, ointment, gel ">
					name = <"form">
					type = <"Concept">
				>
				["role"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Coded representation of the purpose of the sample as related to the analytical procedure being performed, e.g., reference sample, proficiency sample, QC sample, clinical.">
					name = <"role">
					type = <"Concept">
				>
				["originalMeasurement"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The initial volume, mass or size of the specimen.  ">
					name = <"originalMeasurement">
					type = <"Quantity">
				>
				["currentMeasurement"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The amount of specimen currently available for use in further testing. ">
					name = <"currentMeasurement">
					type = <"Quantity">
				>
				["condition"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"A mode or state of being that describes the nature of the specimen, for example, hemolyzed or clotted. ">
					name = <"condition">
					type = <"Concept">
				>
				["purity"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"A concept used to indicate freedom from contaminants of a given specimen. Note that this attribute is only needed in certain domains, for example in bio-banking. ">
					name = <"purity">
					type = <"Concept">
				>
				["concentration"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Numeric value describing the abundance of the specimen constituent divided by the total volume of a mixture. Note that this attribute is only needed in certain domains, for example in bio-banking.">
					name = <"concentration">
					type = <"Quantity">
				>
				["numberOfContainers"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Numeric value used to verify receipt of specimens.">
					name = <"numberOfContainers">
					type = <"IntegerType">
				>
				["childRole"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Coded representation of the purpose or role of a derived specimen with respect to its parent, for example, aliquot, block for tissue sections from a specimen, or slide from a block.">
					name = <"childRole">
					type = <"Concept">
				>
				["expiration"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The date after which the specimen is no longer viable, typically a set period after the collection time.">
					name = <"expiration">
					type = <"TemporalValue">
				>
				["groupCount"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The number of individual specimens of a particular type represented by this instance of a specimen. For example, samples from 25 animals in a cattle herd are collected.">
					name = <"groupCount">
					type = <"IntegerType">
				>
				["collectionProcedure"] = (P_BMM_GENERIC_PROPERTY) <
					documentation = <"Information about the collection procedure performed to obtain the specimen.">
					name = <"collectionProcedure">
					type_def = <
						root_type = <"ClinicalStatement">
						generic_parameters = <"SpecimenCollection", "Performance">
					>
				>
				["processingActivity"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"The specimen processing activity applied on this specimen.">
					name = <"processingActivity">
					cardinality = <|>=0|>
					type_def = <
						type_def = (P_BMM_GENERIC_TYPE) <
							root_type = <"ClinicalStatement">
							generic_parameters = <"SpecimenProcessing", "Performance">
						>
						container_type = <"List">
					>
				>
				["container"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"The container(s) holding this specimen.">
					name = <"container">
					cardinality = <|>=0|>
					type_def = <
						type = <"SpecimenContainer">
						container_type = <"List">
					>
				>
			>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <364>
		>
		["Substance"] = <
			documentation = <"A homogeneous material with a definite composition.">
			name = <"Substance">
			ancestors = <"Entity", ...>
			properties = <
				["code"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The concept that represents this substance.">
					name = <"code">
					type = <"Concept">
					is_mandatory = <True>
				>
				["category"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"A code that classifies the general type of substance. This is used for searching, sorting and display purposes.">
					name = <"category">
					type = <"Concept">
				>
				["ingredient"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"A constituent material of the substance.">
					name = <"ingredient">
					cardinality = <|>=0|>
					type_def = <
						type = <"Ingredient">
						container_type = <"List">
					>
				>
			>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <365>
		>
		["SpecimenContainer"] = <
			documentation = <"Physical object that touches and holds specimen. 

EXAMPLES: slide, tube, box, jar ">
			name = <"SpecimenContainer">
			ancestors = <"Entity", ...>
			properties = <
				["name"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"A non-unique textual identifier for the specimen container, e.g., screwcap jar, blood tube, slide, paraffin block.">
					name = <"name">
					type = <"PlainText">
				>
				["type"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Coded representation of the categorization of a container, e.g., screw jar top, serum tube, slide.">
					name = <"type">
					type = <"Text">
				>
				["material"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Coded representation of the material composition of the container, e.g.,  codes for glass, plastic, metal.">
					name = <"material">
					type = <"Concept">
				>
				["cap"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Coded representation of the type of container cap, e.g., red top, tiger top, purple, blue. Container caps may be used to identify differences in container attributes to facilitate tracking and processing.">
					name = <"cap">
					type = <"Concept">
				>
				["additive"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"Substances introduced in order to preserve, maintain or enhance the particular nature or component of the specimen, e.g., formalin, Citrate, EDTA ">
					name = <"additive">
					cardinality = <|>=0|>
					type_def = <
						type = <"Concept">
						container_type = <"List">
					>
				>
				["condition"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"A textual note or description regarding discrepancies or anomalies observed about a container, e.g., cap not sealed, label not firmly attached, tube received broken.">
					name = <"condition">
					type = <"Concept">
				>
				["identifierLocation"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Placement of the identifier on or in the container.">
					name = <"identifierLocation">
					type = <"Concept">
				>
				["barrierDelta"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Distance from the Point of Reference to the separator material (barrier) within the container in units specified below, e.g., serum gel tube, tubes that are being centrifuged.">
					name = <"barrierDelta">
					type = <"Quantity">
				>
				["bottomDelta"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Thickness of the container at the bottom of the container. For instance, adjustment to make to the drop distance based on the container parameter (tube height) and the thickness of the container wall at the bottom - idea is to not break the tip off the pipette.">
					name = <"bottomDelta">
					type = <"Quantity">
				>
				["capacity"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The maximum amount of a substance or number of physical objects that a container can hold. For tubes this is draw volume, for tissue micro array slides it could be the number of wells. ">
					name = <"capacity">
					type = <"Quantity">
				>
				["length"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The longest horizontal measurement of an object.">
					name = <"length">
					type = <"Quantity">
				>
				["width"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Distance from side to side, measuring across the object at right angles to the length. ">
					name = <"width">
					type = <"Quantity">
				>
				["height"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The measurement of vertical distance.">
					name = <"height">
					type = <"Quantity">
				>
				["diameter"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The distance across a circle.  Applies only to cylindrical containers. ">
					name = <"diameter">
					type = <"Quantity">
				>
				["identifierEmbedded"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Boolean indicating if the identifier is placed inside the container material.">
					name = <"identifierEmbedded">
					type = <"Concept">
				>
				["identifierReaderType"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Equipment needed to read the identifier on the container such as barcode scanner, chip reader, if all else fails human ">
					name = <"identifierReaderType">
					type = <"Concept">
				>
				["configuration"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Defines the row and column layout for the container. For instance, available positions for specimen on a slide (4 quadrant slide). ">
					name = <"configuration">
					type = <"CodedText">
				>
				["separatorType"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"material in a fluid collection container that facilities the separation of cellular or solid material from liquid, e.g., SST, buffy cell layer ">
					name = <"separatorType">
					type = <"Concept">
				>
			>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <366>
		>
		["Ingredient"] = <
			documentation = <"A material component in a substance, represented by a code, substance, or medication.">
			name = <"Ingredient">
			ancestors = <"Locatable", ...>
			properties = <
				["itemCode"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"A code that specifies the type of the ingredient.">
					name = <"itemCode">
					type = <"CodedText">
				>
				["substance"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"If the ingredient is a non-medication substance, the specification of that substance.">
					name = <"substance">
					type = <"Substance">
				>
				["medication"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"If the ingredient is a medication, the specification of that medication ingredient.">
					name = <"medication">
					type = <"Medication">
				>
				["amount"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The amount of an ingredient in a mixture, expressed as a ratio. For example, 250 mg per tabet is expressed as a ratio where the numerator is 250 mg and the denominator is 1 tablet.">
					name = <"amount">
					type = <"Ratio">
				>
				["isActive"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Flag indicating whether the ingredient is an active ingredient in a formulation.">
					name = <"isActive">
					type = <"Concept">
				>
			>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <367>
		>
		["HealthCareOrganization"] = <
			documentation = <"An organization involved in the provision of health related services.">
			name = <"HealthCareOrganization">
			ancestors = <"Organization", ...>
			properties = <
				["accreditation"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"An accreditation of the organization, for example, licensure or certification as a skilled nursing facility or assisted living facility.">
					name = <"accreditation">
					cardinality = <|>=0|>
					type_def = <
						type = <"Accreditation">
						container_type = <"List">
					>
				>
			>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <368>
		>
		["HealthCareFacilityLocation"] = <
			documentation = <"A location in a health care facility.">
			name = <"HealthCareFacilityLocation">
			ancestors = <"GeographicalLocation", ...>
			properties = <
				["room"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The room at the specified location and floor, e.g., Room 102">
					name = <"room">
					type = <"Text">
				>
				["bed"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The bed at the specified location, floor, and room, e.g., Bed 2">
					name = <"bed">
					type = <"Text">
				>
				["floor"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The floor at the specified location, e.g., 10th Floor">
					name = <"floor">
					type = <"Text">
				>
				["building"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"A designation for the building at the specified location, for example, the name of the building or facility. ">
					name = <"building">
					type = <"Text">
				>
			>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <369>
		>
		["InformationEntryAssociation"] = <
			documentation = <"Association class used to represent the relationship between a class and one or more clinical statements where the relationship is qualified by one or more attributes.">
			name = <"InformationEntryAssociation">
			ancestors = <"Locatable", ...>
			properties = <
				["target"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"The statements to be associated with the current information item. ">
					name = <"target">
					cardinality = <|>=0|>
					type_def = <
						type = <"InformationEntry">
						container_type = <"List">
					>
				>
				["type"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The type of association between the source and the target. ">
					name = <"type">
					type = <"Concept">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <370>
		>
		["Signature"] = <
			documentation = <"A digital signature along with supporting context. The signature may be electronic&#47;cryptographic in nature, or a graphical image representing a hand-written signature, or a signature process. Different Signature approaches have different utilities.">
			name = <"Signature">
			ancestors = <"Locatable", ...>
			properties = <
				["reason"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"An indication of the reason that the entity signed this document. This may be explicitly included as part of the signature information and can be used when determining accountability for various actions concerning the document.">
					name = <"reason">
					cardinality = <|>=1|>
					type_def = <
						type = <"Concept">
						container_type = <"List">
					>
					is_mandatory = <True>
				>
				["when"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"When the digital signature was signed.">
					name = <"when">
					type = <"Instant">
					is_mandatory = <True>
				>
				["who"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"A reference to an application-usable description of the identity that signed (e.g. the signature used their private key).">
					name = <"who">
					type = <"Party">
					is_mandatory = <True>
				>
				["onBehalfOf"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The party represented by the actual participant, for example, a person signing for an organization, or a parent signing a consent document for a minor.">
					name = <"onBehalfOf">
					type = <"Party">
				>
				["mimeType"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"A mime type that indicates the technical format of the signature. Important mime types are application&#47;signature+xml for X ML DigSig, application&#47;jwt for JWT, and image&#47;* for a graphical image of a signature, etc.">
					name = <"mimeType">
					type = <"Concept">
				>
				["signatureContent"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The base64 encoding of the Signature content. When signature is not recorded electronically this element would be empty.">
					name = <"signatureContent">
					type = <"EmbeddedContent">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <371>
		>
		["Attribution"] = <
			documentation = <"Attribution provides a formal pattern and reusable structure for attributes of a record that describes an activity in a process involved in producing, delivering or otherwise influencing the entry in a record. Attribution provides a critical foundation for assessing authenticity, enabling trust, and allowing reproducibility. Provenance assertions are a form of contextual metadata and can themselves become important records with their own provenance. Provenance statement indicates clinical significance in terms of confidence in authenticity, reliability, and trustworthiness, integrity, and stage in lifecycle (e.g. Document Completion - has the artifact been legally authenticated), all of which may impact security, privacy, and trust policies.

Attribution provides a common reference model pattern that may be included directly within a clinical statement (e.g., the metadata associated with the recording of a clinical statement in a system) or within the Provenance pattern when it is preferrable to have such information external to but referencing the clinical statement (see Provenance). Note that, when included directly within a clinical statement, updates made to attribution attribute values will result in a versioning change in the instance. When part of the Provenance class, updates to provenance do not result in an update of the clinical statement referenced by the Provenance class (see Provenance.target).">
			name = <"Attribution">
			ancestors = <"Locatable", ...>
			properties = <
				["activity"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The activity that is to be attributed to a party, for example, asserting, recording, verifying, consuming, processing, transforming, modifying, relocating, or using. When a model attribute whose type is Attribution specifies the activity, such as &quot;recorder&quot;, the activity attribute must match the intent of the attribute.">
					name = <"activity">
					type = <"Concept">
				>
				["recordedOn"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The time at which the activity was recorded.">
					name = <"recordedOn">
					type = <"TemporalValue">
				>
				["recordedBy"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The person or entity capturing the attribution information.">
					name = <"recordedBy">
					type = <"Party">
				>
				["activityTimeRange"] = (P_BMM_GENERIC_PROPERTY) <
					documentation = <"The period during which the activity occurred.">
					name = <"activityTimeRange">
					type_def = <
						root_type = <"IntervalValue">
						generic_parameters = <"Date", ...>
					>
				>
				["reason"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"The reason that the activity was taking place.">
					name = <"reason">
					cardinality = <|>=0|>
					type_def = <
						type = <"Concept">
						container_type = <"List">
					>
				>
				["location"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"Where the activity occurred, if relevant.">
					name = <"location">
					cardinality = <|>=0|>
					type_def = <
						type = <"Location">
						container_type = <"List">
					>
				>
				["policy"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"Policy or plan that defines the activity. Typically, a single activity may have multiple applicable policy documents, such as patient consent, guarantor funding, etc.">
					name = <"policy">
					cardinality = <|>=0|>
					type_def = <
						type = <"UriType">
						container_type = <"List">
					>
				>
				["participant"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"A person, entity, or other party responsible for execution of some facet of the activity. ">
					name = <"participant">
					cardinality = <|>=0|>
					type_def = <
						type = <"PartyAssociation">
						container_type = <"List">
					>
				>
				["signature"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"A digital signature on the target Reference(s). The signer should match a Attribution.participant. The purpose of the signature is indicated.">
					name = <"signature">
					cardinality = <|>=0|>
					type_def = <
						type = <"Signature">
						container_type = <"List">
					>
				>
				["method"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"This component captures the method used to perform the activity.  For instance, in Verified, it captures how verification is achieved (verbal, written, telephone, etc.).">
					name = <"method">
					cardinality = <|>=0|>
					type_def = <
						type = <"Concept">
						container_type = <"List">
					>
				>
			>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <372>
		>
		["Provenance"] = <
			documentation = <"The Provenance pattern supports the attachment of attribution information to one or more clinical statements and is not part of the clinical statements themselves.

The attachment of provenance information to a clinical statement in this manner does not impact the versioning of the clinical statement target since attribution information is external to the statement.">
			name = <"Provenance">
			ancestors = <"Locatable", ...>
			properties = <
				["attribution"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The activity provenance details. Refer to the Attribution class.">
					name = <"attribution">
					type = <"Attribution">
					is_mandatory = <True>
				>
				["target"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"The clinical statement that were generated or updated by the activity described. A provenance can point to more than one target if multiple resources were created&#47;updated by the same activity.">
					name = <"target">
					cardinality = <|>=1|>
					type_def = <
						type = <"InformationEntry">
						container_type = <"List">
					>
					is_mandatory = <True>
				>
			>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <373>
		>
		["PatientEducationPerformance"] = <
			documentation = <"Context associated with the performance of an educational intervention.">
			name = <"PatientEducationPerformance">
			ancestors = <"Performance", ...>
			properties = <
				["oralCommunicationSummary"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"This property may be used to summarize an oral communication with the Patient.">
					name = <"oralCommunicationSummary">
					type = <"Text">
				>
				["percentComplete"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The percent of the course or session that was performed.">
					name = <"percentComplete">
					type = <"Quantity">
				>
				["levelOfUnderstanding"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"A qualitative assessment of how well the Patient (or Patient's representative) understood the material presented. Example values include: Poor, Fair, Good, Group - no assessment, Refused, etc.">
					name = <"levelOfUnderstanding">
					type = <"Concept">
				>
				["professionalTime"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Amount of time spent performing the education intervention.">
					name = <"professionalTime">
					type = <"Quantity">
				>
				["textProvided"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"This property contains the contents of any written materials (usually personalized materials) provided to the Patient. This property may also be used to summarize an oral communication with the Patient. Note that the identification of pre-defined materials should be accomplished using the educationalMaterialsProvided property rather than reproducing the content of such materials here.">
					name = <"textProvided">
					type = <"Text">
				>
			>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <374>
		>
		["PatientRelatedEducation"] = <
			documentation = <"This class captures information about counselling or education provided to (or an attempt to provide to) the Patient or to the Patient's representative and provides a means to note how well the Patient understood the information provided. Patient Education may be in the form of written instructions - either pre-defined materials, or personalized instructions - as well as oral counseling.">
			name = <"PatientRelatedEducation">
			ancestors = <"ProcedureTopic", ...>
			properties = <
				["educationBarrier"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Cognitive or sensory barriers to receiving counseling.">
					name = <"educationBarrier">
					type = <"Concept">
				>
				["educationMethod"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The communication method used to provide the patient counseling.">
					name = <"educationMethod">
					type = <"Concept">
				>
				["predefinedEducationalMaterial"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"This property identifies any pre-defined written materials provided to the Patient. In many cases, Patient Education is accomplished by the provision of standardized materials produced based on the Patient's condition or based on a Procedure that the Patient has undergone. For example, there is a standardized Discharge Instructions for Diverticulitis. Use this property to identify any pre-printed materials provided to the patient. Use the textProvided property to identify any other personalized instructions.">
					name = <"predefinedEducationalMaterial">
					cardinality = <|>=0|>
					type_def = <
						type = <"Concept">
						container_type = <"List">
					>
				>
				["personalizedEducationMaterial"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"This property contains the contents of any written materials (usually personalized materials) provided to the Patient. ">
					name = <"personalizedEducationMaterial">
					cardinality = <|>=0|>
					type_def = <
						type = <"Concept">
						container_type = <"List">
					>
				>
				["location"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Pointer to the location at which the patient education or counseling was provided or is to be provided.">
					name = <"location">
					type = <"Location">
				>
				["providingOrganization"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The organization providing this service.">
					name = <"providingOrganization">
					type = <"Organization">
				>
			>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <375>
		>
		["AdverseEventEntry"] = <
			documentation = <"An entry in the patient record documenting an untoward or unexpected finding observed during the course of an activity or an activity.

Adverse events may capture either a workflow breach that may or may not result in harm but that must be documented for quality improvement purposes or an adverse finding whether or not it can be traceable to an actual workflow breach.">
			name = <"AdverseEventEntry">
			ancestors = <"InformationEntry", ...>
			properties = <
				["description"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"An account or explanation of the adverse event in narrative.">
					name = <"description">
					type = <"PlainText">
				>
				["referenceDocumentation"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"Any documentation supplied when documenting this event.">
					name = <"referenceDocumentation">
					cardinality = <|>=0|>
					type_def = <
						type = <"Composition">
						container_type = <"List">
					>
				>
				["relevantMedicalHistory"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"Relevant medical history for documentation purposes.">
					name = <"relevantMedicalHistory">
					cardinality = <|>=0|>
					type_def = <
						type = <"ClinicalStatement">
						container_type = <"List">
					>
				>
				["reported"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Attribution metadata relevant to the reporting of an act or finding not already captured in the associated act or finding statement.">
					name = <"reported">
					type = <"Attribution">
				>
				["seriousness"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Clinical significance of the adverse event, usually associated with events that pose a threat to a patient's life or functioning. Seriousness serves as a primary guide for determining regulatory reporting obligations.">
					name = <"seriousness">
					type = <"Concept">
				>
				["timing"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Used when one needs to indicate that the adverse event occurred relative to an other event. For instance, it can be used to indicate that an infection was acquired within some time interval post hospital admission.">
					name = <"timing">
					type = <"Timing">
				>
			>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <376>
		>
		["AdverseFindingAdverseEvent"] = <
			documentation = <"An AdverseFinding is any unexpected clinical finding in a patient in the course of care or clinical investigation subject which does not necessarily have a causal relationship with a specific intervention.">
			name = <"AdverseFindingAdverseEvent">
			ancestors = <"AdverseEventEntry", ...>
			properties = <
				["reportedFinding"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"The adverse finding(s) reported.">
					name = <"reportedFinding">
					cardinality = <|>=1|>
					type_def = <
						type_def = (P_BMM_GENERIC_TYPE) <
							root_type = <"ClinicalStatement">
							generic_parameters = <"FindingTopic", "FindingContext">
						>
						container_type = <"List">
					>
					is_mandatory = <True>
				>
				["associatedDiagnosis"] = (P_BMM_GENERIC_PROPERTY) <
					documentation = <"Associated diagnosis in cases where the reported findings are signs and symptoms and a diagnosis has been made. For instance, the reported findings may be nausea and vomiting and the associated diagnosis may be toxicity resulting from an administered substance.">
					name = <"associatedDiagnosis">
					type_def = <
						root_type = <"ClinicalStatement">
						generic_parameters = <"FindingTopic", "FindingContext">
					>
				>
				["identifiedDuringActivity"] = (P_BMM_GENERIC_PROPERTY) <
					documentation = <"The last action performed prior to observing the adverse finding. Note that this action may not be directly related to the adverse finding itself as the adverse finding may have been causally related to a previous step in a chain of events and only observed later in the workflow.">
					name = <"identifiedDuringActivity">
					type_def = <
						root_type = <"ClinicalStatement">
						generic_parameters = <"ProcedureTopic", "ActionContext">
					>
				>
				["associatedActivity"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The protocol breach associated with this adverse finding if known and documented.">
					name = <"associatedActivity">
					type = <"ReportedActivity">
				>
				["activityAssociationType"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Concept should specify whether the relationship between the adverse finding and the reported activity is 'temporal - no causality', 'temporal - causality not established' or 'causal'.">
					name = <"activityAssociationType">
					type = <"Concept">
				>
			>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <377>
		>
		["ReportedActivity"] = <
			documentation = <"A reported activity associated with though not necessarily causal to an adverse event.">
			name = <"ReportedActivity">
			ancestors = <"AdverseEventEntry", ...>
			properties = <
				["reportedActivity"] = (P_BMM_GENERIC_PROPERTY) <
					documentation = <"The activity which represents a breach of protocol.">
					name = <"reportedActivity">
					type_def = <
						root_type = <"ClinicalStatement">
						generic_parameters = <"ProcedureTopic", "Performance">
					>
					is_mandatory = <True>
				>
			>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <378>
		>
		["ClinicalStudyAdverseFinding"] = <
			documentation = <"An AdverseFinding is any unexpected clinical finding in a patient documented as part of a clinical investigation which does not necessarily have a causal relationship with a specific study intervention. For instance, a study participant developing a fever during the course of the study.">
			name = <"ClinicalStudyAdverseFinding">
			ancestors = <"AdverseFindingAdverseEvent", ...>
			properties = <
				["associatedClinicalStudy"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The clinical study during which the clinical finding is observed and documented.">
					name = <"associatedClinicalStudy">
					type = <"ResearchStudy">
				>
				["notificationRequirement"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"A code indicating the timing of reporting requirements for this adverse finding based on its seriousness, e.g., 24 hours, 5 business days, 1 month, etc.">
					name = <"notificationRequirement">
					cardinality = <|>=0|>
					type_def = <
						type = <"Concept">
						container_type = <"List">
					>
				>
			>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <379>
		>
		["AdverseEventReportEntry"] = <
			documentation = <"An entry in an adverse event report documenting an event that may result in harm to a subject and which must be documented.">
			name = <"AdverseEventReportEntry">
			ancestors = <"InformationEntry", ...>
			properties = <
				["adverseEvent"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"A reference to an entry in the patient record that documents the adverse event.">
					name = <"adverseEvent">
					type = <"AdverseEventEntry">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <380>
		>
		["WorkflowBreachAdverseEvent"] = <
			documentation = <"An undesired activity or breach of protocol, regardless of whether it resulted in harm to the subject, which must be documented.">
			name = <"WorkflowBreachAdverseEvent">
			ancestors = <"ReportedActivity", ...>
			properties = <
				["expectedActivity"] = (P_BMM_GENERIC_PROPERTY) <
					documentation = <"The activity that should have or was being performed when the workflow breach occurred. ">
					name = <"expectedActivity">
					type_def = <
						root_type = <"ClinicalStatement">
						generic_parameters = <"ProcedureTopic", "ActionContext">
					>
				>
				["outcome"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"The finding that resulted from the reported activity. ">
					name = <"outcome">
					cardinality = <|>=0|>
					type_def = <
						type_def = (P_BMM_GENERIC_TYPE) <
							root_type = <"ClinicalStatement">
							generic_parameters = <"FindingTopic", "FindingContext">
						>
						container_type = <"List">
					>
				>
				["breachCategory"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"A classification of the breach in terms of its outcome, for example, 'near miss', 'no adverse outcome', or 'adverse outcome'.">
					name = <"breachCategory">
					type = <"Concept">
				>
				["impactedDownstreamActivity"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"The set of activities impacted by this workflow breach. For instance, the supply of a medication with the wrong label will impact both the downstream dispense workflow and medication administration workflow before the adverse event is observed.">
					name = <"impactedDownstreamActivity">
					cardinality = <|>=0|>
					type_def = <
						type_def = (P_BMM_GENERIC_TYPE) <
							root_type = <"ClinicalStatement">
							generic_parameters = <"ProcedureTopic", "ActionContext">
						>
						container_type = <"List">
					>
				>
			>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <381>
		>
		["AdverseReaction"] = <
			documentation = <"Any unfavorable and unintended sign, symptom, disease or other medical occurrence with a possible causal association with the use of a medical product, procedure, or other therapy. 

Note that the manifestation of the adverse reaction is captured in FindingTopic.result attribute.">
			name = <"AdverseReaction">
			ancestors = <"FindingSiteAssertion", ...>
			properties = <
				["causality"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"An exogenous physical substance or force that causes the disease. It does not include vectors, e.g. a mosquito that transmits malaria.  
">
					name = <"causality">
					cardinality = <|>=0|>
					type_def = <
						type = <"Causality">
						container_type = <"List">
					>
				>
				["exposureRoute"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"Identification of the route by which the subject was exposed to the substance.">
					name = <"exposureRoute">
					cardinality = <|>=0|>
					type_def = <
						type = <"Concept">
						container_type = <"List">
					>
				>
			>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <382>
		>
		["Causality"] = <
			documentation = <"The result of an assessment of causality typically done for pharmacovigilance  - i.e., whether an adverse reaction was caused by exposure to the suspected entity.">
			name = <"Causality">
			properties = <
				["confidence"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"A qualitative assessment of the confidence in the causal relationship, e.g., certain, likely, possible, or unlikely.">
					name = <"confidence">
					type = <"Concept">
				>
				["productRelatedness"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"An assertion based on a causality assessment stating whether the suspected entity is causally related to or unrelated to the observed adverse reaction.">
					name = <"productRelatedness">
					type = <"Concept">
				>
				["asserted"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Attribution information relating to the assessment of causality.
">
					name = <"asserted">
					type = <"Attribution">
				>
				["method"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The technique used to assess causality, e.g., probability scale, bayesian, or checklist.">
					name = <"method">
					type = <"Concept">
				>
			>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <383>
		>
		["AdverseSensitivityToSubstance"] = <
			documentation = <"A finding related to an individual's risk of harm from exposure to a substance or class of substances.">
			name = <"AdverseSensitivityToSubstance">
			ancestors = <"Assertion", ...>
			properties = <
				["substance"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The substance the subject of information is allergic or sensitive to.">
					name = <"substance">
					type = <"Substance">
				>
				["sensitivityType"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"A code that indicates whether this sensitivity is of an allergic nature or an intolerance to a substance.">
					name = <"sensitivityType">
					type = <"Concept">
				>
				["category"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"Category of the identified substance, e.g., food, medication, environment, or biologic. Some substances may fit multiple categories.">
					name = <"category">
					cardinality = <|>=0|>
					type_def = <
						type = <"Concept">
						container_type = <"List">
					>
				>
				["criticality"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The potential seriousness of a future reaction. This represents a clinical judgment about the worst case scenario for a future reaction. It would be based on the severity of past reactions, the dose and route of exposure that produced past reactions, and the life-threatening or organ system threatening potential of the reaction type.">
					name = <"criticality">
					type = <"Concept">
				>
				["associatedReaction"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"A documented adverse reaction(s) that was used as evidence for the allergy&#47;intolerance assertion. 
">
					name = <"associatedReaction">
					cardinality = <|>=0|>
					type_def = <
						type_def = (P_BMM_GENERIC_TYPE) <
							root_type = <"ClinicalStatement">
							generic_parameters = <"AdverseReaction", "FindingContext">
						>
						container_type = <"List">
					>
				>
				["sensitivityTest"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"Tests performed to assess sensitivity to the a suspected entity.">
					name = <"sensitivityTest">
					cardinality = <|>=0|>
					type_def = <
						type_def = (P_BMM_GENERIC_TYPE) <
							root_type = <"ClinicalStatement">
							generic_parameters = <"ProcedureTopic", "Performance">
						>
						container_type = <"List">
					>
				>
			>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <384>
		>
		["WoundAssertion"] = <
			documentation = <"A determination that a wound exists at a particular body site, as well as the properties or condition of that wound. ">
			name = <"WoundAssertion">
			ancestors = <"FindingSiteAssertion", ...>
			properties = <
				["woundIdentifier"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"A human-readable identifier for the lesion; e.g., a letter or integer.">
					name = <"woundIdentifier">
					type = <"Identifier">
				>
				["periwoundCondition"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Description of the skin around the wound in terms of color, induration, warmth and edema. ">
					name = <"periwoundCondition">
					type = <"Concept">
				>
				["woundSize"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The dimensional features of the wound such as length, width, perimeter, etc...">
					name = <"woundSize">
					type = <"DimensionalFeature">
				>
				["tunneling"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"Description of tunneling observed for this wound.">
					name = <"tunneling">
					cardinality = <|>=0|>
					type_def = <
						type_def = (P_BMM_GENERIC_TYPE) <
							root_type = <"Component">
							generic_parameters = <"Tunneling", ...>
						>
						container_type = <"List">
					>
				>
				["undermining"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"Description of undermining observed for this wound.">
					name = <"undermining">
					cardinality = <|>=0|>
					type_def = <
						type_def = (P_BMM_GENERIC_TYPE) <
							root_type = <"Component">
							generic_parameters = <"Undermining", ...>
						>
						container_type = <"List">
					>
				>
				["woundBed"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Description of the bed of a wound.">
					name = <"woundBed">
					type = <"WoundBed">
				>
				["woundEdge"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Description of the edge of a wound.">
					name = <"woundEdge">
					type = <"WoundEdge">
				>
				["exudate"] = (P_BMM_GENERIC_PROPERTY) <
					documentation = <"Description of the exudate observed on this wound.">
					name = <"exudate">
					type_def = <
						root_type = <"Component">
						generic_parameters = <"WoundExudate", "StatementContext">
					>
				>
				["visibleInternalStructure"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"Internal structure that is visible outside the body.">
					name = <"visibleInternalStructure">
					cardinality = <|>=0|>
					type_def = <
						type = <"Concept">
						container_type = <"List">
					>
				>
				["trend"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"A measure of improvement or deterioration in wound healing.">
					name = <"trend">
					type = <"Concept">
				>
				["visibleStructure"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"Devices and&#47;or foreign bodies visible in a wound.">
					name = <"visibleStructure">
					cardinality = <|>=0|>
					type_def = <
						type = <"Concept">
						container_type = <"List">
					>
				>
				["pressureUlcerAssociation"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Is the wound associated with a device or pressure point?">
					name = <"pressureUlcerAssociation">
					type = <"Concept">
				>
				["wouldTypeEtiology"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The causative agent that contributes to the formation and persistence of a wound.">
					name = <"wouldTypeEtiology">
					type = <"Concept">
				>
			>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <385>
		>
		["Tunneling"] = <
			documentation = <"A description of wound tunneling, a track that extends from the surface of an organ to an underlying area or abscess cavity. ">
			name = <"Tunneling">
			ancestors = <"Assertion", ...>
			properties = <
				["direction"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Direction from center of wound to undermining, expressed using the face of the clock for orientation with 12 o'clock being toward the head of the patient and 6 o'clock toward the feet.">
					name = <"direction">
					type = <"Concept">
				>
				["length"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"distance from the wound edge to the farthest extent of the tunneling">
					name = <"length">
					type = <"Quantity">
				>
			>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <386>
		>
		["Undermining"] = <
			documentation = <"Assessment of deep tissue (subcutaneous fat and muscle) damage around the wound margin.">
			name = <"Undermining">
			ancestors = <"Assertion", ...>
			properties = <
				["direction"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Direction from center of wound to undermining, expressed using the face of the clock for orientation with 12 o'clock being toward the head of the patient and 6 o'clock toward the feet. Reference: Brown, P., 2009">
					name = <"direction">
					type = <"Concept">
				>
				["length"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The distance from the wound edge to the farthest extent of the undermining.">
					name = <"length">
					type = <"Quantity">
				>
			>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <387>
		>
		["WoundExudate"] = <
			documentation = <"Assertion about the exudate associated with a wound.">
			name = <"WoundExudate">
			ancestors = <"Assertion", ...>
			properties = <
				["consistency"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The consistency of exudate that is present in a wound.">
					name = <"consistency">
					type = <"Concept">
				>
				["odor"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The odor of the exudate.">
					name = <"odor">
					type = <"Concept">
				>
				["color"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The color of exudate that is present in a wound.">
					name = <"color">
					type = <"Concept">
				>
				["drainageAmountQuantitative"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The exudate drainage amount when quantifiable.">
					name = <"drainageAmountQuantitative">
					type = <"Quantity">
				>
				["drainageAmountQualitative"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The exudate drainage amount assessed using a qualitative scale, for example, none, scant, small, moderate, large. Use of the Bates-Jenson wound assessment tool is recommended.">
					name = <"drainageAmountQualitative">
					type = <"Concept">
				>
			>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <388>
		>
		["WoundBed"] = <
			documentation = <"Characteristics of the wound's base.">
			name = <"WoundBed">
			ancestors = <"Locatable", ...>
			properties = <
				["appearance"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"Wound bed appearance is how the base of the wound looks and depends upon the stage of healing; if healing well, may not be differentiated from the edge.">
					name = <"appearance">
					cardinality = <|>=0|>
					type_def = <
						type = <"WoundBedAppearance">
						container_type = <"List">
					>
				>
				["color"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"Colors within the base of the wound.">
					name = <"color">
					cardinality = <|>=0|>
					type_def = <
						type = <"WoundBedColor">
						container_type = <"List">
					>
				>
			>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <389>
		>
		["BradenScaleAssessmentResult"] = <
			documentation = <"The BradenScaleAssessmentResult class captures the results of evaluating a patient with the Braden Scale to assess an adult patient's susceptibility to skin breakdown. The summation of the scores ranges from 6-23.

Note: this class does not represent the assessment instrument itself which is considered to be a knowledge artifact rather than an entry in a patient record.">
			name = <"BradenScaleAssessmentResult">
			ancestors = <"Assertion", ...>
			properties = <
				["moistureExposure"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The moisture exposure attribute is an element of the braden score skin assessment tool. It evaluates the degree to which skin is exposed to moisture. Values range from 1-4 and correspond as follows: '1'corresponds to the patients being constantly moist, '2' corresponds to Moist, '3' to Occasionally moist, and a '4' to Rarely moist.">
					name = <"moistureExposure">
					type = <"Concept">
				>
				["sensoryPerception"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"An element of the braden score skin assessment tool. This section evaluates a patient's ability to respond meaningfully to pressure-related discomfort. Values range from 1-4 and correspond as follows: '1' corresponds completely limited ability, '2' corresponds to a Very Limited ability, '3' to a Slightly Limited ability, and a '4' to No Impairment.">
					name = <"sensoryPerception">
					type = <"Concept">
				>
				["physicalActivity"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"An element of the braden score skin assessment tool. This section evaluates the patient's degree of physical activity. Values range from 1-4 and the numbers correspond as follows: '1'corresponds to the patients being bedfast, '2' corresponds to Chairfast, '3' to Walks occasionally, and a '4' to Walks frequently.">
					name = <"physicalActivity">
					type = <"Concept">
				>
				["physicalMobility"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"An element of the braden score skin assessment tool. This section evaluates the patient's ability to change and control their body position. Values range from 1-4 and correspond as follows: '1'corresponds to the patient being completely immobile, '2' corresponds to 'Very limited' mobility, '3' to 'Slightly Limited' mobility, and a '4' to 'No limitations'.">
					name = <"physicalMobility">
					type = <"Concept">
				>
				["nutritionIntakePattern"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"An element of the braden score skin assessment tool. This section evaluates the patient's usual food intake pattern. Values range from 1-4 and correspond as follows: '1'corresponds to 'very poor' nutrition, '2' corresponds to 'probably inadequate' nutrition, '3' to 'Adequate' nutrition, and a '4' to 'Excellent'.">
					name = <"nutritionIntakePattern">
					type = <"Concept">
				>
				["frictionAndShear"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"An element of the braden score skin assessment tool. This section evaluates the patient's potential exposure to skin friction and shear. Values range from 1-3 and correspond as follows: '1' corresponds to 'Problem' with friction and shear, '2' corresponds to 'Potential problem', '3' to 'No apparent problem'.">
					name = <"frictionAndShear">
					type = <"Concept">
				>
				["totalScore"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The summation of the 6 elements of the braden score skin assessment tool. Values range from 6-23.">
					name = <"totalScore">
					type = <"Quantity">
				>
				["riskLevel"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The overall, qualitative risk to the patient based on the Braden Total Score and the answers are No Risk: Total score 19-23 , Mild risk: total score 15-18 , Moderate risk: total score 13-14 , High risk: total score 10-12 , and Very high risk: total score 9 or lower . ">
					name = <"riskLevel">
					type = <"Concept">
				>
			>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <390>
		>
		["WoundEdge"] = <
			documentation = <"Characteristics of the wound's edge.">
			name = <"WoundEdge">
			ancestors = <"Locatable", ...>
			properties = <
				["appearance"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The appearance of the edge of a wound.">
					name = <"appearance">
					type = <"Concept">
				>
				["color"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Color of wound edge">
					name = <"color">
					type = <"Concept">
				>
			>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <391>
		>
		["TunnelingComponent"] = <
			documentation = <"Dependent statement indicating the presence or absence of tunneling.">
			name = <"TunnelingComponent">
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <392>
		>
		["UnderminingComponent"] = <
			documentation = <"Dependent statement indicating the presence or absence of undermining.">
			name = <"UnderminingComponent">
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <393>
		>
		["WoundExudateComponent"] = <
			documentation = <"Dependent statement indicating whether the wound has exudate and the nature of that exudate.">
			name = <"WoundExudateComponent">
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <394>
		>
		["WoundBedAppearance"] = <
			documentation = <"The area of identified wound bed appearance (necrotic, sloughing, etc.; see LOINC 72371-8) compared to the total area of the wound bed. For example, 40% of the wound bed is necrotic. Results can either be subjective or measured.">
			name = <"WoundBedAppearance">
			ancestors = <"Locatable", ...>
			properties = <
				["appearance"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Wound bed appearance is how the base of the wound looks and depends upon the stage of healing; if healing well, may not be differentiated from the edge.">
					name = <"appearance">
					type = <"Concept">
				>
				["percentCovered"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The percentage of the wound with the given appearance.">
					name = <"percentCovered">
					type = <"Quantity">
				>
			>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <395>
		>
		["WoundBedColor"] = <
			documentation = <"The area of identified wound bed color (red, pink, black, white) compared to the total area of the wound bed. For example, 40% of the wound bed is black. Results can either be subjective or measured.">
			name = <"WoundBedColor">
			ancestors = <"Locatable", ...>
			properties = <
				["color"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Colors within the base of the wound.">
					name = <"color">
					type = <"Concept">
				>
				["percentCovered"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The percent of the wound bed with the given color.">
					name = <"percentCovered">
					type = <"Quantity">
				>
			>
			source_schema_id = <"cimi_rm_clinical_0.0.4">
			uid = <396>
		>
		["Archetyped"] = <
			documentation = <"Archetypes act as the configuration basis for the particular structures of instances defined by the reference model. To enable archetypes to be used to create valid data, key classes in the reference model act as root points for archetyping; accordingly, these classes have the archetype_details attribute set.

An instance of the class ARCHETYPED contains the relevant archetype identification information, allowing generating archetypes to be matched up with data instances.">
			name = <"Archetyped">
			properties = <
				["archetype_id"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Globally unique archetype identifier.">
					name = <"archetype_id">
					type = <"String">
					is_mandatory = <True>
				>
				["rm_version"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Version of the CIMI reference model used to create this object. Expressed in terms of the release version string, e.g. 1.0 , 1.2.4 .">
					name = <"rm_version">
					type = <"String">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"cimi_rm_core_0.0.4">
			uid = <397>
		>
		["Locatable"] = <
			documentation = <"Most classes in the CIMI reference model inherit from the Locatable class, which defines the idea of 'locatability in an archetyped structure'. Locatable defines a runtime name and an archetype_node_id. The archetype_node_id is the standardised semantic code for a node and comes from the corresponding node in the archetype used to create the data. The only exception is at archetype root points in data, where archetype_node_id carries the archetype identifier in string form rather than an interior node id from an archetype. Locatable also provides the attribute archetype_details, which is non-Void for archetype root points in data, and carries meta-data relevant to root points. The name attribute carries a name created at runtime. The 'meaning' of any node is derived formally from the archetype by obtaining the text value for the archetype_node_id code from the archetype ontology section, in the language required.">
			name = <"Locatable">
			properties = <
				["archetype_node_id"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The standardised semantic code for a node, which comes from the corresponding node in the archetype used to create the data. For archetype root points, the archetype_node_id carries the archetype identifier in string form rather than an interior node id from an archetype. ">
					name = <"archetype_node_id">
					type = <"String">
					is_mandatory = <True>
				>
				["name"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"A name created at runtime">
					name = <"name">
					type = <"String">
					is_mandatory = <True>
				>
				["archetype_details"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Archetype_details carries meta-data relevant to root points. It is null for non-root points in data.">
					name = <"archetype_details">
					type = <"Archetyped">
				>
			>
			source_schema_id = <"cimi_rm_core_0.0.4">
			uid = <398>
		>
		["NumericalValue"] = <
			documentation = <"Abstract class defining quantified amounts. ">
			name = <"NumericalValue">
			ancestors = <"OrderedValue", ...>
			properties = <
				["precision"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The accuracy of the value, in terms of number of significant figures. For example, a number like 12,345.67 might be declared as accurate to 3 significant digits, meaning digits in the 10's place, 1's place, or to the right of the decimal represent false precision. ">
					name = <"precision">
					type = <"Integer">
				>
			>
			source_schema_id = <"cimi_rm_core_0.0.4">
			uid = <399>
		>
		["CodedText"] = <
			documentation = <"A Text in a human language whose meaning is captured as concept in a formal terminology. Since CodedText is a subtype of Text, it can be used in place of it, effectively allowing the type Text to mean a text that may optionally be coded. A common use is to record the coded version of a verbatim text (a text originally selected or entered by a human). ">
			name = <"CodedText">
			ancestors = <"Text", ...>
			properties = <
				["concept"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"A concept from a formal terminology that is equivalent to the semantics of  CodedText.value.">
					name = <"concept">
					type = <"Concept">
				>
				["mapping"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"Modified the definition further as follows: A concept, usually drawn from an alternative code system, that is related to CodedText.concept. Mapping may be used, for instance, when the originator uses a local terminology but also supplies one or more equivalents from standard terminologies (e.g. LOINC).">
					name = <"mapping">
					cardinality = <|>=0|>
					type_def = <
						type = <"TermMapping">
						container_type = <"List">
					>
				>
			>
			source_schema_id = <"cimi_rm_core_0.0.4">
			uid = <400>
		>
		["IntegerType"] = <
			documentation = <"A countable quantity, used for values such as number of pregnancies or number of cigarettes smoked in a day. Not to be used for amounts that have units.">
			name = <"IntegerType">
			ancestors = <"NumericalValue", ...>
			properties = <
				["value"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The integer count value.">
					name = <"value">
					type = <"Integer">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"cimi_rm_core_0.0.4">
			uid = <401>
		>
		["DataType"] = <
			documentation = <"Serves as a common ancestor of all CIMI simple and complex data types.">
			name = <"DataType">
			source_schema_id = <"cimi_rm_core_0.0.4">
			uid = <402>
		>
		["Date"] = <
			documentation = <"Represents one day in time, as measured on the Gregorian calendar, used for recording time when the exact time is unknown or excessive precision is undesired, such as birth dates. Date uses the semantics defined by ISO 8601.">
			name = <"Date">
			ancestors = <"TemporalValue", ...>
			source_schema_id = <"cimi_rm_core_0.0.4">
			uid = <403>
		>
		["TemporalValue"] = <
			documentation = <"An abstract class representing a point in time to some accuracy, following the semantics of ISO 8601.">
			name = <"TemporalValue">
			ancestors = <"OrderedValue", ...>
			properties = <
				["value"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"A date&#47;time string following the semantics of ISO8601.">
					name = <"value">
					type = <"String">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"cimi_rm_core_0.0.4">
			uid = <404>
		>
		["Duration"] = <
			documentation = <"Represents a length of time, independent of any specific point time. Duration is expressed in customary format, i.e. days, hours, minutes, etc. Note that durations cannot be used to represent points or intervals in time.">
			name = <"Duration">
			ancestors = <"Quantity", ...>
			properties = <
				["durationText"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"An string expressed in terms of days, hours, minutes, seconds, whose semantics follow ISO8601.">
					name = <"durationText">
					type = <"String">
				>
			>
			source_schema_id = <"cimi_rm_core_0.0.4">
			uid = <405>
		>
		["EmbeddedContent"] = <
			documentation = <"Abstract parent class for all types of encapsulated data, such as media files.">
			name = <"EmbeddedContent">
			ancestors = <"DataType", ...>
			source_schema_id = <"cimi_rm_core_0.0.4">
			uid = <406>
		>
		["IntervalValue"] = <
			documentation = <"A generic class defining an interval (i.e. range) of any ordered value type. The type T must be a descendant of the type OrderedValue.">
			name = <"IntervalValue">
			generic_parameter_defs = <
				["T"] = <
					name = <"T">
					conforms_to_type = <"OrderedValue">
				>
			>
			ancestors = <"DataType", ...>
			properties = <
				["lowerIncluded"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"A flag, when true, indicates the specified lower bound is part of the interval. If the interval is lower unbounded, this flag is ignored.">
					name = <"lowerIncluded">
					type = <"Boolean">
					is_mandatory = <True>
				>
				["lowerUnbounded"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"A flag indicating the interval does not have a lower bound. If true, a lower bound may not be specified.">
					name = <"lowerUnbounded">
					type = <"Boolean">
					is_mandatory = <True>
				>
				["upperIncluded"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"A flag, when true, indicates the specified upper bound is part of the interval. If the interval is upper unbounded, this flag is ignored.">
					name = <"upperIncluded">
					type = <"Boolean">
					is_mandatory = <True>
				>
				["upperUnbounded"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"A flag indicating the interval does not have an upper bound. If true, an upper bound may not be specified">
					name = <"upperUnbounded">
					type = <"Boolean">
					is_mandatory = <True>
				>
				["lower"] = (P_BMM_SINGLE_PROPERTY_OPEN) <
					documentation = <"The lower bound of the interval. Values below the lower bound lie outside the interval.">
					name = <"lower">
					type = <"T">
				>
				["upper"] = (P_BMM_SINGLE_PROPERTY_OPEN) <
					documentation = <"The upper bound of the interval. Values above the upper bound lie outside the interval.">
					name = <"upper">
					type = <"T">
				>
			>
			source_schema_id = <"cimi_rm_core_0.0.4">
			uid = <407>
		>
		["Multimedia"] = <
			documentation = <"A representation of media files, such as audio, visual, biosignal, and similar types.">
			name = <"Multimedia">
			ancestors = <"EmbeddedContent", ...>
			properties = <
				["alternateText"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Text to display in lieu of multimedia display&#47;replay.">
					name = <"alternateText">
					type = <"Byte">
				>
				["data"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"The actual data found at uri, if supplied inline.">
					name = <"data">
					cardinality = <|>=0|>
					type_def = <
						type = <"Byte">
						container_type = <"List">
					>
				>
				["mediaType"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Data media type representing the mime type of the content.">
					name = <"mediaType">
					type = <"Concept">
					is_mandatory = <True>
				>
				["resourceIdentifier"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"URI reference to electronic information stored outside the record as a file, database entry etc, if supplied as a reference.">
					name = <"resourceIdentifier">
					type = <"UriType">
				>
			>
			source_schema_id = <"cimi_rm_core_0.0.4">
			uid = <408>
		>
		["OrdinalConcept"] = <
			documentation = <"Represents rankings and scores, e.g. pain, Apgar values, etc, where there is a) an implied ordering, b) no implication that the distance between each value is constant, and c) the total number of values is finite. This class can be used for recording symbolic values, e.g., the results on a urinalysis strip {neg, trace, moderate, ...} or numbers like Agar values {0, 1, 2, 3, ...}.
Note that although the term &quot;ordinal&quot; in mathematics means natural numbers only, here any integer is allowed, since negative and zero values are often used by medical professionals for values around a neutral point, for example {-3, -2, -1, 0, 1, 2, 3} for reflex response values.
">
			name = <"OrdinalConcept">
			ancestors = <"Concept", ...>
			properties = <
				["positionInSet"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The rank order in the enumeration of values, used for sorting. While any integer value can be used, the values need to reflect the order in the set. For example, ordering as {1, 2, 3, ...} has the same effect as ordering as {0, 1, 2, ...}">
					name = <"positionInSet">
					type = <"Integer">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"cimi_rm_core_0.0.4">
			uid = <409>
		>
		["ParsableContent"] = <
			documentation = <"Encapsulated data expressed as a parsable text. The internal syntax of the data item is not described, but must follow the given formalism.">
			name = <"ParsableContent">
			ancestors = <"EmbeddedContent", ...>
			properties = <
				["formalism"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Name of the formalism, e.g. GLIF 1.0 , Proforma etc.">
					name = <"formalism">
					type = <"Concept">
					is_mandatory = <True>
				>
				["value"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The string, which may validly be empty in some syntaxes.">
					name = <"value">
					type = <"String">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"cimi_rm_core_0.0.4">
			uid = <410>
		>
		["PlainText"] = <
			documentation = <"A text with optional human language. While the attributes of PlainText and Text are the same, the PlainText class should be used when the text will not be coded (since CodedText is a child of Text but not PlainText).  ">
			name = <"PlainText">
			ancestors = <"Text", ...>
			source_schema_id = <"cimi_rm_core_0.0.4">
			uid = <411>
		>
		["OrderedValue"] = <
			documentation = <"Abstract class defining a value on a number line or time line, whose location (magnitude) may be given precisely, or bounded by another value. ">
			name = <"OrderedValue">
			ancestors = <"DataType", ...>
			source_schema_id = <"cimi_rm_core_0.0.4">
			uid = <412>
		>
		["Quantity"] = <
			documentation = <"Quantified type representing scientific quantities, i.e. quantities expressed as a magnitude and units of measure. Quantities can also be used for time durations, where it is more convenient to treat these as simply a number of seconds rather than days, months, years.">
			name = <"Quantity">
			ancestors = <"NumericalValue", ...>
			properties = <
				["units"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Units, expressed expressed as codes (generally UCUM), e.g. &quot;kg&#47;m2&quot;, &quot;mm[Hg]&quot;, &quot;ms-1&quot;, &quot;km&#47;h&quot;. Implemented accordingly in subtypes.">
					name = <"units">
					type = <"Concept">
					is_mandatory = <True>
				>
				["value"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Numeric magnitude of the quantity.

">
					name = <"value">
					type = <"Real">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"cimi_rm_core_0.0.4">
			uid = <413>
		>
		["TermMapping"] = <
			documentation = <"Represents an alternative (&quot;mapped&quot;) Concept associated with a source concept (i.e., CodedText.concept or the textual value of the CodedText when no equivalent concept has been defined), and the relative match of the mapped Concept with respect to the source Concept. Mappings may be used to add classification terms (e.g. adding ICD classifiers to SNOMED descriptive terms), for computational convenience, or to provide equivalents in other terminologies (e.g. across nursing vocabularies).">
			name = <"TermMapping">
			properties = <
				["match"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The relative match of the mapped concept to the original (target) concept. Examples include broader (i.e., the mapped term is more general than the original), equivalent, narrower (e.g. mapped concept is &quot;atypical diabetes mellitus&quot; and the original term is &quot;diabetes mellitus&quot;), or unknown. ">
					name = <"match">
					type = <"Concept">
					is_mandatory = <True>
				>
				["purpose"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The purpose of the mapping, e.g., automated data mining, billing, or interoperability.">
					name = <"purpose">
					type = <"Concept">
				>
				["target"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The target concept of the mapping, i.e., the original concept that has been mapped. ">
					name = <"target">
					type = <"Concept">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"cimi_rm_core_0.0.4">
			uid = <414>
		>
		["Text"] = <
			documentation = <"Abstract parent for plain textual and coded text items, which may contain any amount of legal characters arranged as e.g. words, sentences etc (i.e. one Text may be more than one word). Visual formatting and hyperlinks may be included.">
			name = <"Text">
			ancestors = <"DataType", ...>
			properties = <
				["value"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The text itself, which may contain any amount of legal characters arranged as e.g. words, sentences etc. Visual formatting and hyperlinks may be included.">
					name = <"value">
					type = <"String">
					is_mandatory = <True>
				>
				["language"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The text's language.">
					name = <"language">
					type = <"Concept">
				>
			>
			source_schema_id = <"cimi_rm_core_0.0.4">
			uid = <415>
		>
		["Time"] = <
			documentation = <"Represents a point in time from an origin usually interpreted as meaning the start of the current day. Used for recording a time of (any) day, not an absolute point in time. Typically used for times of events such as substance administrations.">
			name = <"Time">
			ancestors = <"TemporalValue", ...>
			source_schema_id = <"cimi_rm_core_0.0.4">
			uid = <416>
		>
		["UriType"] = <
			documentation = <"A reference to an object which conforms to the Universal Resource Identifier (URI) standard. See &quot;Universal Resource Identifiers in WWW&quot; by Tim Berners-Lee at http:&#47;&#47;www.ietf.org&#47;rfc&#47;rfc3986.txt.">
			name = <"UriType">
			ancestors = <"DataType", ...>
			properties = <
				["value"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Value of URI">
					name = <"value">
					type = <"String">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"cimi_rm_core_0.0.4">
			uid = <417>
		>
		["Instant"] = <
			documentation = <"An instant in time - known at least to the second and always includes a time zone. Note: This is intended for precisely observed times (typically system logs etc.), and not human-reported times - for them, use date and dateTime. instant is a more constrained dateTime">
			name = <"Instant">
			ancestors = <"DateTime", ...>
			source_schema_id = <"cimi_rm_core_0.0.4">
			uid = <418>
		>
		["PositiveInteger"] = <
			documentation = <"An integer whose value is greater than zero.">
			name = <"PositiveInteger">
			ancestors = <"UnsignedInteger", ...>
			source_schema_id = <"cimi_rm_core_0.0.4">
			uid = <419>
		>
		["UnsignedInteger"] = <
			documentation = <"An integer whose value is greater or equal to zero.">
			name = <"UnsignedInteger">
			ancestors = <"IntegerType", ...>
			source_schema_id = <"cimi_rm_core_0.0.4">
			uid = <420>
		>
		["Ratio"] = <
			documentation = <"A parameterizable ratio, where the numerator and denominator should not be reduced to a decimal, such as 3 tablets&#47;day. ">
			name = <"Ratio">
			generic_parameter_defs = <
				["T"] = <
					name = <"T">
					conforms_to_type = <"NumericalValue">
				>
			>
			ancestors = <"DataType", ...>
			properties = <
				["denominator"] = (P_BMM_SINGLE_PROPERTY_OPEN) <
					documentation = <"The denominator of the ratio.">
					name = <"denominator">
					type = <"T">
				>
				["numerator"] = (P_BMM_SINGLE_PROPERTY_OPEN) <
					documentation = <"The numerator of the ratio.">
					name = <"numerator">
					type = <"T">
				>
			>
			source_schema_id = <"cimi_rm_core_0.0.4">
			uid = <421>
		>
		["Concept"] = <
			documentation = <"The representation of a conceptual idea represented by an ontology or controlled vocabulary. ">
			name = <"Concept">
			ancestors = <"DataType", ...>
			properties = <
				["code"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"code">
					type = <"TerminologyCode">
					is_mandatory = <True>
				>
				["display"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The preferred language-specific textual rendition of the code attribute, preferably as specified by the code system.">
					name = <"display">
					type = <"String">
				>
			>
			source_schema_id = <"cimi_rm_core_0.0.4">
			uid = <422>
		>
		["CodeSystem"] = <
			documentation = <"A formal terminology system.">
			name = <"CodeSystem">
			ancestors = <"DataType", ...>
			properties = <
				["name"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The human-readable designation of the code system, for example, LOINC or SNOMED-CT.">
					name = <"name">
					type = <"String">
					is_mandatory = <True>
				>
				["version"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The version of the vocabulary being used, if applicable.">
					name = <"version">
					type = <"String">
					is_mandatory = <True>
				>
				["uri"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The URI formally identifying the code system in a version-independent manner.  ">
					name = <"uri">
					type = <"UriType">
				>
			>
			source_schema_id = <"cimi_rm_core_0.0.4">
			uid = <423>
		>
		["GpsLocation"] = <
			documentation = <"A location on the surface of the Earth, described by a latitude and longitude (and optional altitude).">
			name = <"GpsLocation">
			ancestors = <"DataType", ...>
			properties = <
				["longitude"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Longitude with WGS84 datum">
					name = <"longitude">
					type = <"Real">
					is_mandatory = <True>
				>
				["latitude"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Latitude with WGS84 datum">
					name = <"latitude">
					type = <"Real">
					is_mandatory = <True>
				>
				["altitude"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Altitude with WGS84 datum">
					name = <"altitude">
					type = <"Real">
				>
			>
			source_schema_id = <"cimi_rm_core_0.0.4">
			uid = <424>
		>
		["DateTime"] = <
			documentation = <"A date, date and time or partial date (e.g. just year or year + month) as used in human communication. If hours and minutes are specified, a time zone SHALL be populated. Seconds must be provided due to schema type constraints but may be zero-filled and may be ignored. Dates SHALL be valid dates. The time &quot;24:00&quot; is not allowed.">
			name = <"DateTime">
			ancestors = <"TemporalValue", ...>
			source_schema_id = <"cimi_rm_core_0.0.4">
			uid = <425>
		>
		["Decimal"] = <
			documentation = <"Rational numbers that have a decimal representation. Decimals may not use exponents, and leading 0 digits are not allowed.">
			name = <"Decimal">
			ancestors = <"NumericalValue", ...>
			properties = <
				["value"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The value of the decimal number.">
					name = <"value">
					type = <"Real">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"cimi_rm_core_0.0.4">
			uid = <426>
		>
		["Any"] = <
			documentation = <"Abstract supertype. Usually maps to a type like &quot;Any&quot; or &quot;Object&quot; in an object system. Defined here to provide the value and reference equality semantics.">
			name = <"Any">
			source_schema_id = <"cimi_rm_core_0.0.4">
			uid = <427>
		>
		["Array"] = <
			documentation = <"A collection of ordered items that may be are indexed by number.">
			name = <"Array">
			generic_parameter_defs = <
				["T"] = <
					name = <"T">
					conforms_to_type = <"Any">
				>
			>
			source_schema_id = <"cimi_rm_core_0.0.4">
			uid = <428>
		>
		["List"] = <
			documentation = <"An ordered collection of items with non-unique membership.">
			name = <"List">
			generic_parameter_defs = <
				["T"] = <
					name = <"T">
					conforms_to_type = <"Any">
				>
			>
			source_schema_id = <"cimi_rm_core_0.0.4">
			uid = <429>
		>
		["Boolean"] = <
			documentation = <"logical True&#47;False values; usually physically represented as an integer, but need not be">
			name = <"Boolean">
			source_schema_id = <"cimi_rm_core_0.0.4">
			uid = <430>
		>
		["Byte"] = <
			documentation = <"a type whose value is an 8-bit value.">
			name = <"Byte">
			source_schema_id = <"cimi_rm_core_0.0.4">
			uid = <431>
		>
		["Character"] = <
			documentation = <"a type whose value is a member of an 8-bit character-set (ISO: &quot;repertoire&quot;).">
			name = <"Character">
			source_schema_id = <"cimi_rm_core_0.0.4">
			uid = <432>
		>
		["Integer"] = <
			documentation = <"An integer type">
			name = <"Integer">
			source_schema_id = <"cimi_rm_core_0.0.4">
			uid = <433>
		>
		["Real"] = <
			documentation = <"32-bit real numbers in any interoperable representation, including single-width IEEE floating point">
			name = <"Real">
			source_schema_id = <"cimi_rm_core_0.0.4">
			uid = <434>
		>
		["String"] = <
			documentation = <"represents unicode-enabled strings">
			name = <"String">
			source_schema_id = <"cimi_rm_core_0.0.4">
			uid = <435>
		>
		["Uri"] = <
			documentation = <"A URI">
			name = <"Uri">
			source_schema_id = <"cimi_rm_core_0.0.4">
			uid = <436>
		>
		["TerminologyCode"] = <
			name = <"TerminologyCode">
			ancestors = <"Any", ...>
			properties = <
				["terminologyId"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"terminologyId">
					type = <"String">
					is_mandatory = <True>
				>
				["terminologyVersion"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"terminologyVersion">
					type = <"String">
				>
				["codeString"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"codeString">
					type = <"String">
					is_mandatory = <True>
				>
				["uri"] = (P_BMM_SINGLE_PROPERTY) <
					name = <"uri">
					type = <"Uri">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"cimi_rm_core_0.0.4">
			uid = <437>
		>
		["Address"] = <
			documentation = <"Base class for addresses to be specialized based on regional and realm-specific needs.">
			name = <"Address">
			ancestors = <"Locatable", ...>
			properties = <
				["use"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Concept indicating purpose of this address such as whether the address is a home address or a work address.">
					name = <"use">
					type = <"Concept">
				>
				["preferenceIndicator"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Concept indicating whether this address is preferred.">
					name = <"preferenceIndicator">
					type = <"Concept">
				>
				["noFixedAddressIndicator"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Concept indicating whether a person has no fixed address.">
					name = <"noFixedAddressIndicator">
					type = <"Concept">
				>
				["addressAsText"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Unstructured address when a structured address is not obtainable or for systems that cannot process structured addresses.">
					name = <"addressAsText">
					type = <"PlainText">
				>
			>
			source_schema_id = <"cimi_rm_foundation_0.0.4">
			uid = <438>
		>
		["GenericAddress"] = <
			documentation = <"A generic and not fully structured address expressed using postal conventions (as opposed to GPS or other location definition formats).">
			name = <"GenericAddress">
			ancestors = <"Address", ...>
			properties = <
				["line"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"This component contains the house number, apartment number, street name, street direction, P.O. Box number, delivery hints, and similar address information.">
					name = <"line">
					cardinality = <|>=0|>
					type_def = <
						type = <"PlainText">
						container_type = <"List">
					>
				>
				["city"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The name of the city, town, village or other community or delivery center.">
					name = <"city">
					type = <"CodedText">
				>
				["district"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The name of the administrative area (county).">
					name = <"district">
					type = <"CodedText">
				>
				["state"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Sub-unit of a country with limited sovereignty in a federally organized country. A code may be used if codes are in common use (i.e. US 2 letter state codes).">
					name = <"state">
					type = <"CodedText">
				>
				["postalCode"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"A postal code designating a region defined by the postal service.">
					name = <"postalCode">
					type = <"CodedText">
				>
				["country"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Country - a nation as commonly understood or generally accepted.">
					name = <"country">
					type = <"CodedText">
				>
				["periodOfUse"] = (P_BMM_GENERIC_PROPERTY) <
					documentation = <"Time period when address was&#47;is in use.">
					name = <"periodOfUse">
					type_def = <
						root_type = <"IntervalValue">
						generic_parameters = <"Date", ...>
					>
				>
			>
			source_schema_id = <"cimi_rm_foundation_0.0.4">
			uid = <439>
		>
		["ElectronicContact"] = <
			documentation = <"Data structure representing an electronic contact such as an email address or a phone number.">
			name = <"ElectronicContact">
			ancestors = <"Locatable", ...>
			properties = <
				["protocol"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Telecommunications form for contact point - what communications system is required to make use of the contact (e.g., phone, fax, email, pager, url, sms, other).">
					name = <"protocol">
					type = <"Concept">
					is_mandatory = <True>
				>
				["value"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The electronic contact address.">
					name = <"value">
					type = <"PlainText">
					is_mandatory = <True>
				>
				["use"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Identifies the purpose for the contact point.">
					name = <"use">
					type = <"Concept">
				>
				["rank"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Specifies a preferred order in which to use a set of contacts. Contacts are ranked with lower values coming before higher values.">
					name = <"rank">
					type = <"IntegerType">
				>
				["periodOfUse"] = (P_BMM_GENERIC_PROPERTY) <
					documentation = <"Time period when the contact point was&#47;is in use">
					name = <"periodOfUse">
					type_def = <
						root_type = <"IntervalValue">
						generic_parameters = <"Date", ...>
					>
				>
				["preferredTime"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The period of day during which the contact should be used.">
					name = <"preferredTime">
					type = <"Time">
				>
				["preferenceIndicator"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Concept indicating whether the contact information is the preferred means of communication.">
					name = <"preferenceIndicator">
					type = <"Concept">
				>
			>
			source_schema_id = <"cimi_rm_foundation_0.0.4">
			uid = <440>
		>
		["Name"] = <
			documentation = <"Abstract supertype for the name of an entity.">
			name = <"Name">
			ancestors = <"Locatable", ...>
			properties = <
				["nameAsText"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The name as plain unstructured or semi-structured text.">
					name = <"nameAsText">
					type = <"PlainText">
				>
				["use"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"Context of use">
					name = <"use">
					cardinality = <|>=0|>
					type_def = <
						type = <"Concept">
						container_type = <"List">
					>
				>
				["periodOfUse"] = (P_BMM_GENERIC_PROPERTY) <
					documentation = <"Time period when name was&#47;is in use">
					name = <"periodOfUse">
					type_def = <
						root_type = <"IntervalValue">
						generic_parameters = <"Date", ...>
					>
				>
			>
			source_schema_id = <"cimi_rm_foundation_0.0.4">
			uid = <441>
		>
		["PersonName"] = <
			documentation = <"Common human name format.">
			name = <"PersonName">
			ancestors = <"Name", ...>
			properties = <
				["preferredFlag"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Code indicating the preference associated with the use of this name.">
					name = <"preferredFlag">
					type = <"Concept">
				>
				["title"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"The person's title - e.g., Dr, Mr, etc... - as text and optionally coded.">
					name = <"title">
					cardinality = <|>=0|>
					type_def = <
						type = <"Concept">
						container_type = <"List">
					>
				>
				["givenName"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"The person's given name - e.g., John">
					name = <"givenName">
					cardinality = <|>=0|>
					type_def = <
						type = <"PlainText">
						container_type = <"List">
					>
				>
				["middleName"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"The person's middle name.">
					name = <"middleName">
					cardinality = <|>=0|>
					type_def = <
						type = <"PlainText">
						container_type = <"List">
					>
				>
				["familyName"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"The person's surname (family name).">
					name = <"familyName">
					cardinality = <|>=0|>
					type_def = <
						type = <"PlainText">
						container_type = <"List">
					>
				>
				["suffix"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"The suffix for the name as text and optionally coded.">
					name = <"suffix">
					cardinality = <|>=0|>
					type_def = <
						type = <"Concept">
						container_type = <"List">
					>
				>
			>
			source_schema_id = <"cimi_rm_foundation_0.0.4">
			uid = <442>
		>
		["UniqueDeviceIdentifier"] = <
			documentation = <"Unique device identifier (UDI) assigned to device label or package.">
			name = <"UniqueDeviceIdentifier">
			ancestors = <"Locatable", "Identifier">
			properties = <
				["deviceIdentifier"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The device identifier (DI) is a mandatory, fixed portion of a UDI that identifies the labeler and the specific version or model of a device.">
					name = <"deviceIdentifier">
					type = <"PlainText">
					is_mandatory = <True>
				>
				["udiLabelName"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Name of device as used in labeling or catalog.">
					name = <"udiLabelName">
					type = <"PlainText">
				>
				["jurisdiction"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The identity of the authoritative source for UDI generation within a jurisdiction. All UDIs are globally unique within a single namespace. with the appropriate repository uri as the system. For example, UDIs of devices managed in the U.S. by the FDA, the value is http:&#47;&#47;hl7.org&#47;fhir&#47;NamingSystem&#47;fda-udi.">
					name = <"jurisdiction">
					type = <"UriType">
				>
				["carrierHrf"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The full UDI carrier as the human readable form (HRF) representation of the barcode string as printed on the packaging of the device.">
					name = <"carrierHrf">
					type = <"PlainText">
				>
				["carrierAidc"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The full UDI carrier of the Automatic Identification and Data Capture (AIDC) technology representation of the barcode string as printed on the packaging of the device - E.g a barcode or RFID. Because of limitations on character sets in XML and the need to round-trip JSON data through XML, AIDC Formats SHALL be base64 encoded.">
					name = <"carrierAidc">
					type = <"ParsableContent">
					is_mandatory = <True>
				>
				["issuer"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Organization that is charged with issuing UDIs for devices. For example, the US FDA issuers include : 1) GS1: http:&#47;&#47;hl7.org&#47;fhir&#47;NamingSystem&#47;gs1-di, 2) HIBCC: http:&#47;&#47;hl7.org&#47;fhir&#47;NamingSystem&#47;hibcc-dI, 3) ICCBBA for blood containers: http:&#47;&#47;hl7.org&#47;fhir&#47;NamingSystem&#47;iccbba-blood-di, 4) ICCBA for other devices: http:&#47;&#47;hl7.org&#47;fhir&#47;NamingSystem&#47;iccbba-other-di.">
					name = <"issuer">
					type = <"UriType">
				>
				["entryType"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"A coded entry to indicate how the data was entered.">
					name = <"entryType">
					type = <"Concept">
				>
			>
			source_schema_id = <"cimi_rm_foundation_0.0.4">
			uid = <443>
		>
		["Occupation"] = <
			documentation = <"Describes the kind of job a person has held.">
			name = <"Occupation">
			ancestors = <"Locatable", ...>
			properties = <
				["code"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"An occupation. Likely to be realm-specific.">
					name = <"code">
					type = <"Concept">
					is_mandatory = <True>
				>
				["category"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The job category, such as retail, banking, construction, or healthcare ontologist. ">
					name = <"category">
					type = <"Concept">
				>
				["durationInOccupation"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Duration of time performing this occupation such as 3 years, 16 months.">
					name = <"durationInOccupation">
					type = <"Duration">
				>
				["periodInOccupation"] = (P_BMM_GENERIC_PROPERTY) <
					documentation = <"Period of time in occupation.">
					name = <"periodInOccupation">
					type_def = <
						root_type = <"IntervalValue">
						generic_parameters = <"Date", ...>
					>
				>
			>
			source_schema_id = <"cimi_rm_foundation_0.0.4">
			uid = <444>
		>
		["Qualification"] = <
			documentation = <"Education, training or special skills.">
			name = <"Qualification">
			ancestors = <"Locatable", ...>
			properties = <
				["code"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Concept representing the type of qualification">
					name = <"code">
					type = <"Concept">
					is_mandatory = <True>
				>
				["level"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The level of the qualification">
					name = <"level">
					type = <"Concept">
				>
				["issuingOrganization"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The organization responsible for issuing the qualification.">
					name = <"issuingOrganization">
					type = <"Organization">
				>
				["issuingEntityUri"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The issuing country where the qualification is valid.">
					name = <"issuingEntityUri">
					type = <"UriType">
					is_mandatory = <True>
				>
				["dateIssued"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The date the qualification was issued.">
					name = <"dateIssued">
					type = <"Date">
				>
				["role"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"The roles where the qualification applies - e.g. registered nurse, physician">
					name = <"role">
					cardinality = <|>=0|>
					type_def = <
						type = <"Concept">
						container_type = <"List">
					>
				>
			>
			source_schema_id = <"cimi_rm_foundation_0.0.4">
			uid = <445>
		>
		["Residency"] = <
			documentation = <"Type supporting the capture of residency information.">
			name = <"Residency">
			ancestors = <"Locatable", ...>
			properties = <
				["region"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The country or state of residence.">
					name = <"region">
					type = <"Concept">
					is_mandatory = <True>
				>
				["dateRange"] = (P_BMM_GENERIC_PROPERTY) <
					documentation = <"Period when residency was in effect.">
					name = <"dateRange">
					type_def = <
						root_type = <"IntervalValue">
						generic_parameters = <"Date", ...>
					>
				>
			>
			source_schema_id = <"cimi_rm_foundation_0.0.4">
			uid = <446>
		>
		["LanguageCapability"] = <
			documentation = <"Type representing proficiency in a language.">
			name = <"LanguageCapability">
			ancestors = <"Locatable", ...>
			properties = <
				["languageCode"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"ISO code representing the language name. ">
					name = <"languageCode">
					type = <"Concept">
					is_mandatory = <True>
				>
				["mode"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The channel of communication evaluated; e.g., spoken, written, heard.">
					name = <"mode">
					type = <"Concept">
				>
				["proficiency"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Degree of fluency in the language.">
					name = <"proficiency">
					type = <"Concept">
				>
				["translatorRequired"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Code indicating need for translator.">
					name = <"translatorRequired">
					type = <"Concept">
				>
				["preferenceIndicator"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Code indicating whether the language is preferred for communication.">
					name = <"preferenceIndicator">
					type = <"Concept">
				>
			>
			source_schema_id = <"cimi_rm_foundation_0.0.4">
			uid = <447>
		>
		["BirthData"] = <
			documentation = <"Type supporting the capture of birth-related information.">
			name = <"BirthData">
			ancestors = <"Locatable", ...>
			properties = <
				["birthDatetime"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"When the birth occurred.">
					name = <"birthDatetime">
					type = <"TemporalValue">
					is_mandatory = <True>
				>
				["birthAddress"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Address where birth occurred.">
					name = <"birthAddress">
					type = <"Address">
				>
				["multipleBirthIndicator"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Indicates whether the birth event was a multiple birth event.">
					name = <"multipleBirthIndicator">
					type = <"Concept">
				>
				["birthPlurality"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The number of babies resulting from a single pregnancy">
					name = <"birthPlurality">
					type = <"IntegerType">
				>
				["birthOrder"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Integer indicating the sequence number of this birth.">
					name = <"birthOrder">
					type = <"IntegerType">
				>
				["birthCertificateNumber"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The birth certificate number associated with this birth.">
					name = <"birthCertificateNumber">
					type = <"PlainText">
				>
			>
			source_schema_id = <"cimi_rm_foundation_0.0.4">
			uid = <448>
		>
		["Citizenship"] = <
			documentation = <"Type supporting the capture of citizenship information. ">
			name = <"Citizenship">
			ancestors = <"Locatable", ...>
			properties = <
				["country"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Code representing the country of citizenship.">
					name = <"country">
					type = <"Concept">
					is_mandatory = <True>
				>
				["dateRange"] = (P_BMM_GENERIC_PROPERTY) <
					documentation = <"The period when the citizenship was held.">
					name = <"dateRange">
					type_def = <
						root_type = <"IntervalValue">
						generic_parameters = <"Date", ...>
					>
				>
			>
			source_schema_id = <"cimi_rm_foundation_0.0.4">
			uid = <449>
		>
		["DeathData"] = <
			documentation = <"Information of about a death event.">
			name = <"DeathData">
			ancestors = <"Locatable", ...>
			properties = <
				["deceasedIndicator"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Code indicating whether the patient is deceased.">
					name = <"deceasedIndicator">
					type = <"Concept">
				>
				["deathDatetime"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The time of death to the level of granularity known.">
					name = <"deathDatetime">
					type = <"TemporalValue">
				>
				["ageAtDeath"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The age of the person at death">
					name = <"ageAtDeath">
					type = <"Duration">
				>
				["recordedBy"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Identifier for the entity that provided information about the deceased status of the person.">
					name = <"recordedBy">
					type = <"Identifier">
				>
				["deathAddress"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Address where the patient expired.">
					name = <"deathAddress">
					type = <"Address">
				>
				["deathCertificateNumber"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The death certificate number.">
					name = <"deathCertificateNumber">
					type = <"PlainText">
				>
			>
			source_schema_id = <"cimi_rm_foundation_0.0.4">
			uid = <450>
		>
		["GenericIdentifier"] = <
			documentation = <"Type for representing identifiers of real-world entities. Typical identifiers include drivers licence number, social security number, veterans affairs number, prescription id, order id, and so on.">
			name = <"GenericIdentifier">
			ancestors = <"Identifier", ...>
			properties = <
				["use"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The purpose of this identifier. Use is considered a modifying attribute because applications should not mistake a temporary id for a permanent one. Applications can assume that an identifier is permanent unless it explicitly says that it is temporary.">
					name = <"use">
					type = <"Concept">
				>
				["type"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Optional identifier type, such as prescription, or Social Security Number. One day a controlled vocabulary might be possible for this.">
					name = <"type">
					type = <"Concept">
					is_mandatory = <True>
				>
				["issuingOrganization"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Organization that assigned the id to the item being identified.">
					name = <"issuingOrganization">
					type = <"Organization">
				>
				["issuingEntityUri"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"URI of the issuing entity when the issuing entity is not an organization.">
					name = <"issuingEntityUri">
					type = <"UriType">
				>
				["namespace"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The namespace in which the id is unique.">
					name = <"namespace">
					type = <"UriType">
				>
				["id"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The identifier value. Often structured, according to the definition of the issuing authority's rules.">
					name = <"id">
					type = <"String">
					is_mandatory = <True>
				>
			>
			source_schema_id = <"cimi_rm_foundation_0.0.4">
			uid = <451>
		>
		["Identifier"] = <
			documentation = <"Base class representing an identifier scheme.">
			name = <"Identifier">
			source_schema_id = <"cimi_rm_foundation_0.0.4">
			uid = <452>
		>
		["Accreditation"] = <
			documentation = <"Type supporting the capture of accreditation information.">
			name = <"Accreditation">
			ancestors = <"Locatable", ...>
			properties = <
				["identifier"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"An identifier for the accreditation.">
					name = <"identifier">
					type = <"Identifier">
				>
				["type"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The type of accreditation - e.g., degree, board certified, license.">
					name = <"type">
					type = <"Concept">
				>
				["validityPeriod"] = (P_BMM_GENERIC_PROPERTY) <
					documentation = <"The period of validity for the accreditation.">
					name = <"validityPeriod">
					type_def = <
						root_type = <"IntervalValue">
						generic_parameters = <"Date", ...>
					>
				>
				["accreditationOrganization"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The organization that supplies the accreditation.">
					name = <"accreditationOrganization">
					type = <"Organization">
				>
			>
			source_schema_id = <"cimi_rm_foundation_0.0.4">
			uid = <453>
		>
		["Content"] = <
			documentation = <"Abstract ancestor of all concrete content types. A unit of content that makes up a composition - e.g., a clinical statement in a patient record, a simple or composite action is a knowledge document, a catalog entry in a catalog.">
			name = <"Content">
			ancestors = <"Locatable", ...>
			source_schema_id = <"cimi_rm_foundation_0.0.4">
			uid = <454>
		>
		["Entry"] = <
			documentation = <"An ENTRY is the minimal unit of logical information or knowledge documented within a composition such as a clinical statement in a patient record, a knowledge entry in a knowledge artifact, a product in a product catalog, etc...

">
			name = <"Entry">
			ancestors = <"Content", ...>
			source_schema_id = <"cimi_rm_foundation_0.0.4">
			uid = <455>
		>
		["Composition"] = <
			documentation = <"A composition represents a document such as a patient record, a knowledge artifact, or a catalog definition.">
			name = <"Composition">
			ancestors = <"Locatable", ...>
			properties = <
				["content"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"The content that makes up a composition.">
					name = <"content">
					cardinality = <|>=0|>
					type_def = <
						type = <"Content">
						container_type = <"List">
					>
				>
			>
			source_schema_id = <"cimi_rm_foundation_0.0.4">
			uid = <456>
		>
		["Section"] = <
			documentation = <"Represents a heading in a heading structure, or section tree . Can also be used to represent a collection of entries without metadata.">
			name = <"Section">
			ancestors = <"Content", ...>
			properties = <
				["content"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"The content that makes up a section in a composition.">
					name = <"content">
					cardinality = <|>=0|>
					type_def = <
						type = <"Content">
						container_type = <"List">
					>
				>
			>
			source_schema_id = <"cimi_rm_foundation_0.0.4">
			uid = <457>
		>
		["Entity"] = <
			documentation = <"Root class for entities such as people, organizations, and devices that have a separately identifiable existence.">
			name = <"Entity">
			ancestors = <"Party", ...>
			properties = <
				["identifier"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"An identifier for an entity such as a person's social security number or a device UDI.">
					name = <"identifier">
					cardinality = <|>=0|>
					type_def = <
						type = <"Identifier">
						container_type = <"List">
					>
				>
				["description"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"A human-readable description of the entity.">
					name = <"description">
					type = <"Text">
				>
				["image"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"One or more images of this entity such as a profile image or a product image for a catalog.">
					name = <"image">
					cardinality = <|>=0|>
					type_def = <
						type = <"Multimedia">
						container_type = <"List">
					>
				>
			>
			source_schema_id = <"cimi_rm_foundation_0.0.4">
			uid = <458>
		>
		["Person"] = <
			documentation = <"Base person class.">
			name = <"Person">
			ancestors = <"Entity", ...>
			properties = <
				["personName"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The person's name.">
					name = <"personName">
					type = <"PersonName">
				>
				["address"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"The person's address.">
					name = <"address">
					cardinality = <|>=0|>
					type_def = <
						type = <"Address">
						container_type = <"List">
					>
				>
				["electronicContact"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"Contact information for the person.
">
					name = <"electronicContact">
					cardinality = <|>=0|>
					type_def = <
						type = <"ElectronicContact">
						container_type = <"List">
					>
				>
				["administrativeGender"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The administrative gender of the person.
">
					name = <"administrativeGender">
					type = <"Concept">
				>
				["maritalStatus"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The person's marital status.">
					name = <"maritalStatus">
					type = <"Concept">
				>
				["birth"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Information about the birth of the person.">
					name = <"birth">
					type = <"BirthData">
				>
				["death"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Information about the death of the person.">
					name = <"death">
					type = <"DeathData">
				>
			>
			source_schema_id = <"cimi_rm_foundation_0.0.4">
			uid = <459>
		>
		["Organization"] = <
			documentation = <"A description of a social or legal structure formed by human beings. ">
			name = <"Organization">
			ancestors = <"Entity", ...>
			properties = <
				["organizationName"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The name of the organization.">
					name = <"organizationName">
					type = <"Name">
				>
				["address"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"The address of the organization">
					name = <"address">
					cardinality = <|>=0|>
					type_def = <
						type = <"Address">
						container_type = <"List">
					>
				>
				["electronicContact"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"The electronic contact information for this organization.">
					name = <"electronicContact">
					cardinality = <|>=0|>
					type_def = <
						type = <"ElectronicContact">
						container_type = <"List">
					>
				>
				["departmentOrUnit"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The department or unit in question.">
					name = <"departmentOrUnit">
					type = <"Text">
				>
				["industry"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The industry code associated with this organization.">
					name = <"industry">
					type = <"Concept">
				>
				["status"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The status of the organization.">
					name = <"status">
					type = <"Concept">
				>
				["validityPeriod"] = (P_BMM_GENERIC_PROPERTY) <
					documentation = <"The date range associated with the existence or relevance of the organization in the given context.">
					name = <"validityPeriod">
					type_def = <
						root_type = <"IntervalValue">
						generic_parameters = <"Date", ...>
					>
				>
			>
			source_schema_id = <"cimi_rm_foundation_0.0.4">
			uid = <460>
		>
		["Device"] = <
			documentation = <"This resource identifies an instance or a type of a manufactured item that is used in the provision of healthcare without being substantially changed through that activity. The device may be a medical or non-medical device. Medical devices includes durable (reusable) medical equipment, implantable devices, as well as disposable equipment used for diagnostic, treatment, and research for healthcare and public health. Non-medical devices may include items such as a machine, cellphone, computer, application, etc.">
			name = <"Device">
			ancestors = <"Entity", ...>
			properties = <
				["key"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Concept representing the type of device.">
					name = <"key">
					type = <"Concept">
					is_mandatory = <True>
				>
				["lotNumber"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Lot number assigned by the manufacturer.">
					name = <"lotNumber">
					type = <"PlainText">
				>
				["manufacturer"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"A name of the manufacturer.">
					name = <"manufacturer">
					type = <"Organization">
				>
				["manufactureDate"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The date and time when the device was manufactured.">
					name = <"manufactureDate">
					type = <"DateTime">
				>
				["expirationDate"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The date and time beyond which this device is no longer valid or should not be used (if applicable).">
					name = <"expirationDate">
					type = <"DateTime">
				>
				["model"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The &quot;model&quot; is an identifier assigned by the manufacturer to identify the product by its type. This number is shared by the all devices sold as the same type.">
					name = <"model">
					type = <"PlainText">
				>
				["version"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The device software or firmware version label.">
					name = <"version">
					type = <"PlainText">
				>
				["url"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"A network address on which the device may be contacted directly.">
					name = <"url">
					type = <"UriType">
				>
			>
			source_schema_id = <"cimi_rm_foundation_0.0.4">
			uid = <461>
		>
		["DetailedPerson"] = <
			documentation = <"Refinement of the Person class with additional attributes.">
			name = <"DetailedPerson">
			ancestors = <"Person", ...>
			properties = <
				["race"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"A subjective association of a person with a named category of humans sharing common history, traits, place of origin, or other inherited background. (US only) The race code associated with this person.">
					name = <"race">
					cardinality = <|>=0|>
					type_def = <
						type = <"Concept">
						container_type = <"List">
					>
				>
				["ethnicity"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"Identification with or belonging to a social group that has a common national or cultural tradition. (US only) An indicator of Hispanic or Latino origin.">
					name = <"ethnicity">
					cardinality = <|>=0|>
					type_def = <
						type = <"Concept">
						container_type = <"List">
					>
				>
				["citizenship"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"The person's citizenship.">
					name = <"citizenship">
					cardinality = <|>=0|>
					type_def = <
						type = <"Citizenship">
						container_type = <"List">
					>
				>
				["residency"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"The person's country of residence.">
					name = <"residency">
					cardinality = <|>=0|>
					type_def = <
						type = <"Residency">
						container_type = <"List">
					>
				>
				["religion"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The religion of the person">
					name = <"religion">
					type = <"Concept">
				>
				["educationLevel"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The education level of the person.">
					name = <"educationLevel">
					type = <"Concept">
				>
				["qualification"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"The qualifications of the person.">
					name = <"qualification">
					cardinality = <|>=0|>
					type_def = <
						type = <"Qualification">
						container_type = <"List">
					>
				>
				["disability"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"A physical or mental impairment that substantially limits one or more major life activity, for example, caring for oneself, performing manual tasks, seeing, hearing, eating, sleeping, walking, etc. ">
					name = <"disability">
					cardinality = <|>=0|>
					type_def = <
						type = <"Concept">
						container_type = <"List">
					>
				>
				["occupation"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"Person's occupation">
					name = <"occupation">
					cardinality = <|>=0|>
					type_def = <
						type = <"Occupation">
						container_type = <"List">
					>
				>
				["language"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"The language(s) spoken by the individual.">
					name = <"language">
					cardinality = <|>=0|>
					type_def = <
						type = <"LanguageCapability">
						container_type = <"List">
					>
				>
			>
			source_schema_id = <"cimi_rm_foundation_0.0.4">
			uid = <462>
		>
		["Location"] = <
			documentation = <"A description of a location in terms of who to contact at the location, and activities that may take place at the location. The subclasses of Location, GeographicalLocation and HealthCareFacilityLocation, define the actual location of the Location.">
			name = <"Location">
			ancestors = <"Entity", ...>
			properties = <
				["name"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Names associated with this location. E.g., 10 West Bed 2">
					name = <"name">
					type = <"Name">
				>
				["type"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Indicates the type of location.">
					name = <"type">
					type = <"Concept">
				>
				["condition"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"A description of the condition of the location.">
					name = <"condition">
					type = <"Concept">
				>
				["electronicContact"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"Contact information associated with this location - for instance, contact information to reserve the location.">
					name = <"electronicContact">
					cardinality = <|>=0|>
					type_def = <
						type = <"ElectronicContact">
						container_type = <"List">
					>
				>
				["validityPeriod"] = (P_BMM_GENERIC_PROPERTY) <
					documentation = <"The interval of time when this location is relevant or available.">
					name = <"validityPeriod">
					type_def = <
						root_type = <"IntervalValue">
						generic_parameters = <"TemporalValue", ...>
					>
				>
				["status"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"A code representing the status of the location.">
					name = <"status">
					type = <"Concept">
				>
				["purpose"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Indicates the purpose of this location.">
					name = <"purpose">
					type = <"Concept">
				>
			>
			source_schema_id = <"cimi_rm_foundation_0.0.4">
			uid = <463>
		>
		["GeographicalLocation"] = <
			documentation = <"A position, site, point in space, or polygon, designated either by altitude, latitude, and longitude or a postal address, and may be navigated to via directions.">
			name = <"GeographicalLocation">
			ancestors = <"Location", ...>
			properties = <
				["gpsLocation"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"The location's geospatial coordinates such as latitude and longitude.">
					name = <"gpsLocation">
					cardinality = <|>=0|>
					type_def = <
						type = <"GpsLocation">
						container_type = <"List">
					>
				>
				["address"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The postal address associated with this location.">
					name = <"address">
					type = <"Address">
				>
				["directions"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"How to navigate to the location. May be context-sensitive.">
					name = <"directions">
					type = <"PlainText">
				>
			>
			source_schema_id = <"cimi_rm_foundation_0.0.4">
			uid = <464>
		>
		["Role"] = <
			documentation = <"Capacity in which an actor is involved in an activity. For instance, 'attending physician'.

Note that attributes of the actor (an entity) that remain constant regardless of the role the actor plays should be part of the entity and not the role. For instance, a person may be a practitioner and a patient. In both cases their date of birth will be the same and thus such information should not be part of the role.">
			name = <"Role">
			ancestors = <"Party", ...>
			properties = <
				["identifier"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"An identifier for the role such as a patient identifier within the scope of an institution. ">
					name = <"identifier">
					cardinality = <|>=0|>
					type_def = <
						type = <"Identifier">
						container_type = <"List">
					>
				>
				["type"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The type of role taken on by an entity participating in an activity.">
					name = <"type">
					type = <"Concept">
					is_mandatory = <True>
				>
				["actor"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The entity performing the role. ">
					name = <"actor">
					type = <"Entity">
				>
				["actingOnBehalfOf"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"Populate this field if the party is acting on behalf of another party.">
					name = <"actingOnBehalfOf">
					type = <"Party">
				>
			>
			source_schema_id = <"cimi_rm_foundation_0.0.4">
			uid = <465>
		>
		["Party"] = <
			documentation = <"A party may be either an entity such as a specific person or organization or a role played by an entity such as patient or care provider.">
			name = <"Party">
			ancestors = <"Locatable", ...>
			properties = <
				["associatedWith"] = (P_BMM_CONTAINER_PROPERTY) <
					documentation = <"Used to capture a relationship between two parties outside of the already specified 'actor' and 'actingOnBehalfOf' relationships.">
					name = <"associatedWith">
					cardinality = <|>=0|>
					type_def = <
						type = <"PartyAssociation">
						container_type = <"List">
					>
				>
			>
			source_schema_id = <"cimi_rm_foundation_0.0.4">
			uid = <466>
		>
		["PartyAssociation"] = <
			documentation = <"A directed association to a party (i.e., a role or an entity). The PartyAssociation pattern can be used to represent a participation in an activity or a relationship that exists between two parties.">
			name = <"PartyAssociation">
			generic_parameter_defs = <
				["P"] = <
					name = <"P">
					conforms_to_type = <"Party">
				>
			>
			ancestors = <"Locatable", ...>
			properties = <
				["type"] = (P_BMM_SINGLE_PROPERTY) <
					documentation = <"The type of association between an activity, a party, or an information entry to a party. For instance,  the association may be that between two people (a relationship) such as a brother or mother relationship to a patient or the association between the performer of an activity and the activity itself (performance) or the subject of an entry in the patient's record and the subject of the record.">
					name = <"type">
					type = <"Concept">
					is_mandatory = <True>
				>
				["validityPeriod"] = (P_BMM_GENERIC_PROPERTY) <
					documentation = <"The period of time when the relationship holds or held.">
					name = <"validityPeriod">
					type_def = <
						root_type = <"IntervalValue">
						generic_parameters = <"Date", ...>
					>
				>
				["target"] = (P_BMM_SINGLE_PROPERTY_OPEN) <
					documentation = <"That target of the relationship. For instance, in a participation, the performer of a clinical action such as Dr. Smith.

Note that the target is optional when it is understood based on the party association type (e.g., a 'self' relationship for the subject of information).">
					name = <"target">
					type = <"P">
				>
			>
			source_schema_id = <"cimi_rm_foundation_0.0.4">
			uid = <467>
		>
	>
	model_name = <"CORE">
	passed = <True>
	missed_class_count = <0>
