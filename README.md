![CEDS Ontology Logo](/res/CEDS-Ontology-Logo.png "CEDS Ontology")

# CEDS Ontology
The CEDS Ontology is a new way of looking at CEDS. The purpose of an ontology is to describe things and the relationships that exist between them. In education, we may describe an Organization as a K12 School, a Postsecondary Institution, or an Early Learning Program. We can also describe the relationship that exists between a Person and that Organization. We may describe it as Enrollment, Assignment, or Employment. The CEDS Ontology builds on the CEDS Integrated Data Store Model by not only demonstrating that relationships exist between elements through Primary and Foreign Key relationships, it begins to provide definitions and meaning about those relationships through Object Properties.

The purpose of the ontology is to describe CEDS at the most granular level possible. From this machine-readable understanding, additional resources can be created such as JSON, JSON-LD, XML, and a host of other machine readable standards. It will also become easier to link CEDS to other ontologies and standards through the use of equivalencies (an indication when one standard's element is equivalent to another standard's element) making translation a much more intuitive process and, again, machine-readable. We will also be able to indicate where CEDS ends and another standard begins allowing for the adoption of multiple standards in the same ecosystem.

Watch the informational webinar that was presented on Thursday, September 14, 2023: [CEDS Ontology Webinar Recording](https://www.youtube.com/watch?v=aJ5F_6-l5m0)

## First Draft Release

Comment Period - August 31, 2023 through November 29, 2023

This first release is a draft of some of the core Organization, Person, Membership elements expressed through Classes and Properties. This draft period will last 90 days after which we will assess the comments received, make changes based on those comments and release an updated version for review. During this initial draft period, we are looking for feedback specifically related to the following things:
1. Overall - We welcome any comments related to this project. To comment, simply open an [issue](https://github.com/CEDStandards/CEDS-Ontology/issues). Commenting does require a GitHub account, but you can create one for free. Feel free to comment about anything, ask questions, and respond to comments other stakeholders have made.
2. Relationships - Do they make sense? Are we missing any "in between" relationships - As an example. We could have said a Person (Class) isMember (Object Property) of an Organization (Class), but we determined that many additional elements will be needed to describe the Membership itself. When you need to describe something with multiple additional elements or options, it is best made into a class. Thus we have in this model that a Person (Class) isMember (Object Property) to Membership (Class) and that Membership (Class) isMemberOf (Object Property) Organization (Class). This allows us to still relate a Person to an Organization but through a class called Membership through which we can describe things like Entry Dates, Exit Dates and Full Time Equivalency. 
3. Classes - As described above, a class is a way of grouping resources with similar characteristics. Are the classes named clearly? Would you recommend a different name? In some instances, the class IS a CEDS element, but in many cases, we are creating the classes through existing terminology related to Domains and Entities already defined in the CEDS Domain Entity Schema or through decisions made through the CEDS JSON working group. Would you name any classes differently? Are you aware of other open standards that have a class name that we could use intsead or in addition?
4. Object Properties - These describe the relationships between classes. This is new territory for CEDS. Do they make sense? Are you aware of object properties from other open standards that we should use instead of what we have selected here? It's always better to reuse rather than reinvent. Are the draft definitions clear?
5. Data Properties - These are directly linked to a CEDS element. If a CEDS element has an option set, it is identified as a class. If it does not have an option set, it is identified as a Data Property. We should not need to change much in the Data Property list as it relates to content, but do we have the data properties associated with the right classes?
6. Individuals - These are the actual option sets that exist within CEDS. We should not need to change anything in here, but do we have the right options associated with the correct elements?
7. Additional Resources - Are you aware of any other additional resources that could be used in the creation or expression of the CEDS Ontology? Are there other ontologies that are connected to education or that are widely adopted in other communities that would be a good resource to review?

## Resources

The primary ontology files are listed in the [src](https://github.com/CEDStandards/CEDS-Ontology/tree/main/src) folder. These are machine-readable documents. As such, they can be difficult to read without a resource created to read them. The CEDS team used a free resource called [Protege](https://protege.stanford.edu/) developed by Stanford to create the ontology. If your organization allows the download and installation of this resource, it provides a way to view the ontology in a more user friendly format. Additional resources are avialable in the the [doc](https://github.com/CEDStandards/CEDS-Ontology/tree/main/doc) folder. These include a [guide](https://github.com/CEDStandards/CEDS-Ontology/blob/main/doc/CEDS%20Ontology%20Guide%20Version%2011%20Draft%20August%202023.pdf) which goes into a little more detail about the various entities that exist within the ontology and some example diagrams to explain relationships and a [spreadsheet](https://github.com/CEDStandards/CEDS-Ontology/raw/main/doc/CEDSOntologyCoreDraftV11.0.0.0.xlsx) of the entities along with metadata about each entity.

Additional resources may be added for reviewing the ontology throughout the 90 day review period. Feel free to provide any you create for the community to use.


## Versioning

We use a customized version of [Explicit Versioning](https://github.com/exadra37-versioning/explicit-versioning) for versioning.  To keep the various CEDS Open Source projects in alignment with the CEDS Elements, we are replacing the concept of "disruptive" releases with "alignment" releases.  These releases ensure that the data models are in sync with the official, community approved list of CEDS Elements.  For the versions available, see the [tags on this repository](https://github.com/CEDStandards/CEDS-Ontology/tags). 

## Authors

See the list of [contributors](/Contributors.md) who participated in this project.

## License

This project is licensed under the Apache 2.0 License - see the [LICENSE](LICENSE) file for details.
