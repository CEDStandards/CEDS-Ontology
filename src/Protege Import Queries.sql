-- Classes
select distinct
	  XMLName as Name
	, ElementName as rdfsLabel
	, t.AltName as dcAlternative
	, t.Definition as dcDescription
	, t.UsageNotes as rdfsComment
	, 'Common Education Data Standard' as dcCreator
	, m.GlobalId as dcIdentifier
	, t.Format as dcFormat
	, t.ChangedInThisVersionInd as changedInThisVersion
	, t.ChangeNotes as [changes]
	, replace(xsdBaseType, 'xs:', 'xsd:')
from _CEDStoNDSMapping m
join _CEDSElements e
	on m.GlobalID = e.GlobalID
join ceds.dbo.term t
	on e.GlobalID = t.GlobalID
	and t.Version = '10'
where tablename in ('personAddress', 'persondetail', 'persondemographicrace', 'personothername', 'personrelationship', 'personstatus')
--where (TableName like 'Organization%'
--	and tablename not in (
--			  'OrganizaitonAccreditation'
--			, 'organizationcalendar'
--			, 'OrganizationCalendarCrisis'
--			, 'OrganizationCalendarDay'
--			, 'OrganizationCalendarEvent'
--			, 'OrganizationCalendarSession'
--			, 'OrganizationEmployeeBenefit'
--			, 'OrganizationFederalAccountability'
--			, 'OrganizationFinancial'
--			, 'OrganizationPolicy'
--			, 'OrganizationPopulationServed'
--			, 'OrganizationService'
--			, 'OrganizationTechnicalAssistance'))
--	or TableName in (
--		  'K12School'
--		, 'K12Lea'
--		, 'K12SchoolGradeLevelsApproved'
--		, 'K12SchoolGradeOffered'
--		, 'K12SchoolStatus'
--		, 'K12IndicatorStatus'
--		, 'K12Sea'
--		, 'K12LeaGradeLevelsApproved'
--		, 'K12LeaGradeOffered'
--		)
order by XMLName

--Individuals
select distinct
	  XMLName as parentElement
	, XMLName + '_' + c.Code as Name
	, c.Code as rdfsLabel
	, c.Description as dcDescription
	, 'Common Education Data Standard' as dcCreator
	, m.GlobalId as dcIdentifier
	, SortOrder as sortOrder
from _CEDStoNDSMapping m
join _CEDSElements e
	on m.GlobalID = e.GlobalID
join ceds.dbo.term t
	on e.GlobalID = t.GlobalID
	and t.Version = '10'
join ceds.dbo.TermxCodeSet txc
	on t.termid = txc.TermID
join ceds.dbo.CodeSet cs
	on txc.CodeSetID = cs.CodeSetID
join ceds.dbo.CodeSetxCode csc
	on cs.CodeSetID = csc.CodeSetID
join ceds.dbo.Code c
	on csc.CodeID = c.CodeID
where tablename in ('role')
--where ((TableName like 'Organization%'
--	and tablename not in (
--			  'OrganizaitonAccreditation'
--			, 'organizationcalendar'
--			, 'OrganizationCalendarCrisis'
--			, 'OrganizationCalendarDay'
--			, 'OrganizationCalendarEvent'
--			, 'OrganizationCalendarSession'
--			, 'OrganizationEmployeeBenefit'
--			, 'OrganizationFederalAccountability'
--			, 'OrganizationFinancial'
--			, 'OrganizationPolicy'
--			, 'OrganizationPopulationServed'
--			, 'OrganizationService'
--			, 'OrganizationTechnicalAssistance'))
--	or TableName in (
--		  'K12School'
--		, 'K12Lea'
--		, 'K12SchoolGradeLevelsApproved'
--		, 'K12SchoolGradeOffered'
--		, 'K12SchoolStatus'
--		, 'K12IndicatorStatus'
--		, 'K12Sea'
--		, 'K12LeaGradeLevelsApproved'
--		, 'K12LeaGradeOffered'
--		, 'ProgramType'
--		)
--	)
--	AND XmlName NOT in (
--		 'AddressTypeForOrganization'
--		,'AdultEducationServiceProviderIdentificationSystem'
--		,'ElectronicMailAddressType'
--		,'InstitutionTelephoneNumberType'
--		,'LEAIdentificationSystem'
--		,'OrganizationIdentificationSystem'
--		,'SchoolIdentificationSystem'
--		,'StateAgencyIdentificationSystem'
--		)

order by XMLName


--Disjointed Subclasses
select distinct
	  XMLName as parentElement
	, XMLName + '_' + c.Code  as Name
	, c.Description as rdfsLabel
	, c.CodeDefinition as dcDescription
	, 'Common Education Data Standard' as dcCreator
	, m.GlobalId + '_' + c.Code as dcIdentifier
from _CEDStoNDSMapping m
join _CEDSElements e
	on m.GlobalID = e.GlobalID
join ceds.dbo.term t
	on e.GlobalID = t.GlobalID
	and t.Version = '10'
join ceds.dbo.TermxCodeSet txc
	on t.termid = txc.TermID
join ceds.dbo.CodeSet cs
	on txc.CodeSetID = cs.CodeSetID
join ceds.dbo.CodeSetxCode csc
	on cs.CodeSetID = csc.CodeSetID
join ceds.dbo.Code c
	on csc.CodeID = c.CodeID
where TableName = 'role'
