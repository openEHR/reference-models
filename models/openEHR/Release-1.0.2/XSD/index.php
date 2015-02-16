<?php
require_once($_SERVER['DOCUMENT_ROOT'].'/templates/_functions.php');

//Change page name here:
$PageName = 'openEHR XML Schemas';

require_once($_SERVER['DOCUMENT_ROOT'].'/templates/_header.php');
?>

		<div id="Content">
<!-- - - - - - - - - - - - - - - - - - - - - - - Content starts here - - - - - - - - - - - - - - - - - - - - - - - - - -->
			
			<h1><?php echo "$PageName";?></h1>
			
			<h2>Overview</h2>

			<p>This page provides access to the W3C XML schemas for the <span style="font-style: italic;">open</span>EHR Reference Model (RM) and Archetype Model (AM).</p>
			<h3>Changes from previous release (1.0.1)</h3>
			Basic_types.xsd:<br>
			<ol>
			  <li>UID_BASED_ID is changed to abstract</li>
			  <li>DV_AMOUNT class, a default value is added to accuracy element.
			The default value will be used when the accuracy is empty. However,
			when accuracy is not provided, then there will no default value for
			accuracy. Based on the spec, the DV_AMOUNT.accuracy is optional.</li>
			</ol>
			Resource.xsd:
			<ol>
			  <li>make AUTHORED_RESOURCE abstract</li>
			  <li>make RESOURCE_DESCRIPTION.details element mandatory, i.e. change minOccurs="0" to minOccurs="1"</li>
			</ol>
			No other schemas are changed in this release.
			<h3>Stable Schemas</h3>
			For the RM, separate schemas have been created, as follows:<br>
			<ul>
			  <li><a href="documentation/BaseTypes.xsd.html">Basic types</a> - types from rm.data_types and rm.support.identification packages. (<a href="BaseTypes.xsd">xsd</a> file)</li>
			  <li><a href="documentation/Structure.xsd.html">Structure</a> - types from rm.data_structures and rm.common.generic packages. (<a href="Structure.xsd">xsd</a> file)</li>
			  <li><a href="documentation/Resource.xsd.html">Resource</a> - types from the rm.common.resource package (<a href="Resource.xsd">xsd</a> file)</li>
			  <li><a href="documentation/Content.xsd.html">Content</a> - item, Section, Entry and all subtypes. (<a href="Content.xsd">xsd</a> file)</li>
			  <li><a href="documentation/Composition.xsd.html">Composition</a> - rm.composition. (<a href="Composition.xsd">xsd</a> file)</li>
			  <li><a href="documentation/Version.xsd.html">Version</a> - the Version classes from rm.common.change_control (<a href="Version.xsd">xsd</a> file)</li>
			</ul>
			For the AM, two schemas are provided:<br>
			<ul>
			  <li><a href="documentation/Archetype.xsd.html">Archetype</a> - types from the Archetype Object Model (AOM) (<a href="Archetype.xsd">xsd</a> file)</li>
			  <li><a href="documentation/OpenehrProfile.xsd.html">OpenehrProfile</a> - types from the <span style="font-style: italic;">open</span>EHR  Archetype Profile package (<a href="OpenehrProfile.xsd">xsd</a> file)</li>
			</ul>
			<h3>Schemas in Development</h3>
			Two further schemas are in the draft stage, and are under active development:<br>
			<ul>
			  <li>Extract - types from rm.extract package (<a href="Extract.xsd">xsd</a> file)</li>
			  <li><span style="font-style: italic;">open</span>EHR Template - (coming soon)</li>
			  <ul>
				<li>an&nbsp;interim&nbsp;'.oet' Template schema (<a href="Template.xsd">xsd</a> file) - this file is used for templates created with Ocean tools, and is based on the official <span style="font-style: italic;">open</span>EHR schemas published above. It will be replaced when the <span style="font-style: italic;">open</span>EHR template specification is finalised.</li>
			  </ul>
			</ul>
			<h2>Transformation Rules</h2>
			The following mapping rules were used in order to create the schema from the reference model.<span style="color: rgb(204, 0, 0);"></span><br>
			<h3>Basic type mappings</h3>
			The basic types utilise the internal XML simpleTypes in accordance with the assumed types section in the Support IM. &nbsp;Some changes have been made to the reference model to accommodate these standards.
			<table style="text-align: left;" border="0" cellpadding="2" cellspacing="2">
			  <tbody>
				<tr>
				  <td style="background-color: rgb(153, 255, 255);">
				  <h4>Reference model type</h4>
				  </td>
				  <td style="background-color: rgb(153, 255, 255);">
				  <h4>XML Schema complexType</h4>
				  </td>
				</tr>
				<tr>
				  <td style="background-color: rgb(204, 255, 255);">DV_DATE_TIME</td>
				  <td colspan="1" rowspan="1">value is of type Iso8601DateTime, a restriction of xs:string, matching regular expression <br>
			\d{4}((0[1-9]|1[0-2])((0[1-9]|[12]\d|3[01])(T?([01]\d|2[0-3])([0-5]\d([0-5]\d([,.]\d+)?)?)?(Z|([+\-]((0\d)|(1[0-2]))(00|30)?))?)?)?)?|<br>
			\d{4}(\-(0[1-9]|1[0-2])(\-(0[1-9]|[12]\d|3[01])(T([01]\d|2[0-3])(:[0-5]\d(:[0-5]\d([,.]\d+)?)?)?(Z|([+\-]((0\d)|(1[0-2]))(:(00|30))?))?)?)?)?</td>
				</tr>
				<tr>
				  <td style="background-color: rgb(204, 255, 255);">DV_DATE</td>
				  <td rowspan="1">value is of type Iso8601Date, a restriction of xs:string, matching regular expression <br>
			\d{4}((((0[1-9])|(1[0-2]))((0[1-9])|([12]\d)|(3[01]))?)?<br>
			|(\-(((0[1-9])|(1[0-2]))(\-((0[1-9])|([12]\d)|(3[01])))?)?)?)</td>
				</tr>
				<tr>
				  <td style="background-color: rgb(204, 255, 255);">DV_TIME</td>
				  <td rowspan="1">value is of type Iso8601Time, a restriction of xs:string, matching regular expression<br>
			([01]\d|2[0-3])([0-5]\d([0-5]\d([,.]\d+)?)?)?(Z|([+\-]((0\d)|(1[0-2]))(00|30)?))?|<br>
			([01]\d|2[0-3])(:[0-5]\d(:[0-5]\d([,.]\d+)?)?)?(Z|([+\-]((0\d)|(1[0-2]))(:(00|30))?))? </td>
				</tr>
				<tr>
				  <td style="background-color: rgb(204, 255, 255);">DV_DURATION</td>
				  <td>value is of type DV_Iso8601Duration, a restriction of xs:string, matching regular expression<br>
			P(\d+Y)?(\d+M)?(\d+W)?(\d+D)?(T(\d+H)?(\d+M)?(\d+(\.\d+)?S)?)?</td>
				</tr>
			  </tbody>
			</table>

			<h3>Generic types</h3>
			<p>The <span style="font-style: italic;">open</span>EHR reference model makes use of generic types - including DV_INTERVAL&lt;T&gt; (Data types IM) and VERSION&lt;T&gt; (Common IM) for example. As generic types are now available in C# and Java this is warranted for implementation specifications. Generic types are not available in XML Schema, so specific types prefixed with 'XS_' have been created to provide the same constraints.</p>

			<table style="text-align: left;" cellpadding="2" cellspacing="2">
			  <tbody>
				<tr>
				  <td style="background-color: rgb(153, 255, 255);">
				  <h4>Reference model type</h4>
				  </td>
				  <td style="background-color: rgb(153, 255, 255);">
				  <h4>XML Schema complexType</h4>
				  </td>
				</tr>
				<tr>
				  <td style="background-color: rgb(204, 255, 255);">Interval&lt;Integer&gt;</td>
				  <td>IntervalOfInteger (BaseTypes.xsd)</td>
				</tr>
				<tr>
				  <td style="background-color: rgb(204, 255, 255);">Interval&lt;Real&gt;</td>
				  <td>IntervalOfReal (BaseTypes.xsd)</td>
				</tr>
				<tr>
				  <td style="background-color: rgb(204, 255, 255);">Interval&lt;Date&gt;</td>
				  <td>IntervalOfDate (BaseTypes.xsd)</td>
				</tr>
				<tr>
				  <td style="background-color: rgb(204, 255, 255);">Interval&lt;Time&gt;<span style="font-style: italic;"></span></td>
				  <td>IntervalOfTime (BaseTypes.xsd)</td>
				</tr>
				<tr>
				  <td style="background-color: rgb(204, 255, 255);">Interval&lt;DateTime&gt;<span style="font-style: italic;"></span></td>
				  <td>IntervalOfDateTime (BaseTypes.xsd)</td>
				</tr>
				<tr>
				  <td style="background-color: rgb(204, 255, 255);">Interval&lt;Duration&gt;<span style="font-style: italic;"></span></td>
				  <td>IntervalOfDuration (BaseTypes.xsd)</td>
				</tr>
				<tr>
				  <td style="background-color: rgb(204, 255, 255);">DV_INTERVAL&lt;<span style="font-style: italic;">DV_ORDERED&gt;</span></td>
				  <td>only one type is used, namely DV_INTERVAL, with lower and upper of type DV_ORDERED. Software implementations <br> of the relevant generic types (DV_INTERVAL&lt;DV_DATE&gt; etc) are expected to&nbsp;implement further typing sensibly.<br> (BaseTypes.xsd)</td>
				</tr>
				<tr>
				  <td style="background-color: rgb(204, 255, 255);">VERSION&lt;T&gt;</td>
				  <td>only one type is used, namely VERSION. The subtype ORIGINAL_VERSION has its data attribute of type LOCATABLE<br> (Version.xsd)</td>
				</tr>
			  </tbody>
			</table>

			<h3>Multiple Inheritance</h3>
			<p>There are a couple of places where multiple inheritance occurs in the <span style="font-style: italic;">open</span>EHR reference model. In all cases, only one inheritance branch corresponds to subtyping in the substitutability (i.e. 'is-a') sense; the other branches are always 'facility' &nbsp;or 'mix-in' inheritance. In the RM, classes inheriting in this way include <big><span style="font-family: monospace;">rm.data_types.quantity.DV_INTERVAL</span></big> and the <big><span style="font-family: monospace;">rm.data_types.quantity.date_time</span></big> classes. The latter inherit only interface, which has no visibility in XML-schema. For the former, the inheritance of Interval&lt;T&gt; by DV_INTERVAL&lt;T&gt; is done in the schema simply by direct inclusion, since the other branch of inheritance (of DATA_VALUE) is the one which must be visible to schema processing.</p>

			<h3>Non-included classes and attributes</h3>
			<p>The following RM classes are not included in the schema, as they are not needed in the data view: UID, UUID, INTERNET_ID, ISO_OID, and VERSION_TREE_ID. UID and its subtypes are not needed because OBJECT_ID has a <span style="font-style: italic;">value</span> attribute of type string and its subtypes have a function that return a UID.</p>

			<h3>Added attributes</h3>
			<p>None in the current release.</p>

			<h3>Conditional Rules</h3>
			<p>In instance data, LOCATABLE.archetype_details (of type ARCHETYPED) is only included when template_id exists, since the archetype_id attribute from ARCHETYPED is included by default as the value of LOCATABLE.archetype_node_id on archetype root-point LOCATABLE instances (top of a SECTION structure, OBSERVATION structure etc).</p>

			<h3>XML Attributes and Elements</h3>
			<p>XML attributes are not used with the exception of the LOCATABLE.archetype_node_id RM attribute, which is, from the point of view of RM classes, true meta-data. Making it an attribute allows archetype paths to be easily mapped to Xpaths.</p>

			<h2>Acknowledgements</h2>
			<p>This work was carried out for the <span style="font-style: italic;">open</span>EHR Foundation &nbsp;by <a href="http://www.OceanInformatics.biz">Ocean Informatics</a>. Many thanks to Dr Chunlan Ma, Heath Frankel and Lisa Thurston for maintaining the <span style="font-style: italic;">open</span>EHR schemas. Thanks to the many people in the community including Mattias Forss and Andrew Patterson, who have provided feedback and improved them.</p>

<!-- - - - - - - - - - - - - - - - - - - - - - - Content ends here - - - - - - - - - - - - - - - - - - - - - - - - - -->
		</div>	
<?php require_once($_SERVER['DOCUMENT_ROOT'].'/templates/_footer.php');?>
