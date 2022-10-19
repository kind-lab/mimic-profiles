MimicSpecimen is mapped from both MIMIC-IV tables labevents and microbiologyevents. 

MIMIC Table|MIMIC Data Element|FHIR Data Element|FHIR Profile|Notes| 
|---|---|---|---|---|
|labevents|specimen_id|Specimen.id|[MimicSpecimen]|Convert to UUID5|
|labevents|specimen_id|Specimen.identifier|[MimicSpecimen]||
|labevents|subject_id|Specimen.subject|[MimicSpecimen]|Convert to UUID5|
|labevents|charttime|Specimen.collection.collectedDateTime|[MimicSpecimen]||
|labevents|fluid|Specimen.type.coding.code|[MimicSpecimen]||
|microbiologyevents|micro_specimen_id|Specimen.id|[MimicSpecimen]|Convert to UUID5|
|microbiologyevents|micro_specimen_id|Specimen.identifier|[MimicSpecimen]||
|microbiologyevents|subject_id|Specimen.subject|[MimicSpecimen]|Convert to UUID5|
|microbiologyevents|charttime|Specimen.collection.collectedDateTime|[MimicSpecimen]||
|microbiologyevents|spec_itemid|Specimen.type.coding.code|[MimicSpecimen]||
|microbiologyevents|spec_type_desc|Specimen.type.coding.code|[MimicSpecimen]||

{: .grid #grid}
{% include link-list.md %}
