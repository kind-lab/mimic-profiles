|MIMIC Table|MIMIC Data Element|FHIR Data Element|FHIR Profile|Notes| 
|---|---|---|---|---|
|transfers|careunit|Location.id|[MimicLocation]|careunit converted to UUID5|
|transfers|careunit|Location.name|[MimicLocation]||
{: .grid #grid}

* Location.physicalType set to a fixed code 'wa' for Wards
* Location.status is set to 'active'
* Location.managingOrganization set to BIDMC

{% include link-list.md %}
