![CEDS Ontology Logo](/res/CEDS-Ontology-Logo.png "CEDS Ontology")

# CEDS Ontology
The CEDS Ontology is a new way of looking at CEDS. An ontology serves to define entities and the connections between them. In education, we categorize Organizations into types such as a K12 School, a Postsecondary Institution, or an Early Learning Program. We can also describe the relationship that exists between a Person and that Organization such as Enrollment, Assignment, or Employment. The CEDS Ontology builds on the CEDS Integrated Data Store model by not only demonstrating relationships exist between elements through Primary and Foreign Key relationships, but by providing definitions and meaning about those relationships through Object Properties.

The purpose of the Ontology is to describe CEDS at the most granular level possible. From this machine-readable understanding, additional resources can be created such as JSON, JSON-LD, XML, and a host of other machine-readable standards. It will also become easier to link CEDS to other ontologies and standards using equivalencies (an indication when one standard's element is equivalent to another standard's element) making translation a much more intuitive machine-readable process. We can now indicate where CEDS ends and another standard begins, enabling the adoption of multiple standards in the same ecosystem.

## Expectations For This Release

The CEDS Ontology is groundbreaking and will require community review. Below are some expectations for Ontology-related activities through 2024. Through comments, the SLDS project and various other implementations, we expect numerous recommended changes to the Ontology during this time. We are excited to enter this new era of opportunity with you.

1.	Ontology Review. We welcome any comments and questions related to this project and encourage you to respond to others’ comments. To comment, simply open an [issue](https://github.com/CEDStandards/CEDS-Ontology/issues). Commenting requires a GitHub account, which is available for free. 
2.	CEDS JSON-LD Scalable Data Use Project. This project, originating with the National Center for Education Statistics (NCES) State Longitudinal Data Systems (SLDS) grant program, is developing a SHACL/JSON-LD expression of the Ontology. The primary use cases for this are to load the [CEDS Integrated Data Store](https://github.com/CEDStandards/CEDS-IDS) and [CEDS Data Warehouse](https://github.com/CEDStandards/CEDS-Data-Warehouse) resources using JSON-LD. Participants’ review will be invaluable and will likely result in updates to the Ontology between May 2024 and March 2025. This group meets every two weeks. For information about when and where, visit our [CEDS Events Page](https://ceds.communities.ed.gov/#program/events).

## Resources

The Ontology’s primary files are listed in the [src](https://github.com/CEDStandards/CEDS-Ontology/tree/main/src) folder.

Additional resources are available in the [doc](https://github.com/CEDStandards/CEDS-Ontology/tree/main/doc) folder, including a [guide](https://github.com/CEDStandards/CEDS-Ontology/blob/main/doc/CEDS%20Ontology%20Guide%20Version%2011%20Draft%20August%202023.pdf) that provides additional details about the various entites that exist within the Ontology.

Additional resources may be added for reviewing the Ontology. Feel free to provide for community use any you create.

## Versioning

CEDS uses a customized version of [Explicit Versioning](https://github.com/exadra37-versioning/explicit-versioning) for versioning.  To keep the various CEDS Open Source projects in alignment with the CEDS Elements, we are replacing the concept of "disruptive" releases with "alignment" releases.  These releases ensure that the data models are in sync with the official, community approved list of CEDS Elements.  For the versions available, see the [tags on this repository](https://github.com/CEDStandards/CEDS-Ontology/tags). 

## Authors

See the list of [contributors](/Contributors.md) who participated in this project.

## License

This project is licensed under the Apache 2.0 License - see the [LICENSE](LICENSE) file for details.
