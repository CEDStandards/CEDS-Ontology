![CEDS Ontology Logo](/res/CEDS-Ontology-Logo.png "CEDS Ontology")

# CEDS Ontology
The CEDS Ontology is a new way of looking at CEDS. The purpose of an ontology is to describe things and the relationships that exist between them. In education, we may describe an Organization as a K12 School, a Postsecondary Institution, or an Early Learning Program. We can also describe the relationship that exists between a Person and that Organization. We may describe it as Enrollment, Assignment, or Employment. The CEDS Ontology builds on the CEDS Integrated Data Store Model by not only demonstrating that relationships exist between elements through Primary and Foreign Key constraints, it begins to provide definitions and meaning about those relationships through Object Properties.

The purpose of the ontology is to describe CEDS at the most granular level possible. From this machine readable understanding, additional resources can be created such as JSON, JSON-LD, XML, and a host of other machine readable standards. It will also become easier to link CEDS to other ontologies and standards through the use of equivalencies (an indication when one standard's element is equivalent to another standard's element) making translation a much more intuative process and, again, machine readable. We will also be able to indicate where CEDS ends and another standard begins allowing for the adoption of multiple standard in the same ecosystem.

## First Draft Release

This first release is a draft of some of the core Organization, Person, Relationship elements expressed through Classes and Properties. During this initial draft period, we are looking for feedback specifically related to the following things:
1. Relationships - Do they make sense? Are we missing any "in between" relationships - As an example. We could have said a Person (Class) isMember (Object Property) of an Organization (Class), but we determined that we will need many additional elements that we will need to associate to the membership to describe the Membership itself. When you need to describe something with multiple additional elements or options, it is best made into a class. Thus we have in this model that a Person (Class) isMember to Membership (Class) and that Membership (Class) isMemberOf (Object Property) Organization (Class). This allows us to still related a Person to an Organization but through a class called Membership through which we can describe things like Entry Dates, Exit Dates and Full Time Equivalency. 
2. Classes - As described above, a class is a way of grouping resources with similar characteristics. Are the classes named clearly? Would you recommend a different name? In some instances, the class IS a CEDS element, but in many cases, we are creating the classes through existing terminology related to Domains and Entities already defined in the CEDS Domain Entity Schema or through decisions made through the CEDS JSON working group.
3. Object Properties - These describe the relationships between classes. This is new territory for CEDS. Do they make sense? Are you aware of object properties from other open standards that we should use instead of what we have selected here? It's always better to reuse rather than reinvent.
4. Data Properties - These are directly linked to a CEDS element. If a CEDS element has an option set, it is identified as a class. If it does not have an option set, it is identified as a Data Property. We should not need to change much in the Data Property list as it relates to content, but do we have the data properties associated with the right classes?
5. Individuals - These are the actual option sets that exist within CEDS. We should not need to change anything in here, but do we have the right options associated with the correct elements?


## Versioning

We use a customized version of [Explicit Versioning](https://github.com/exadra37-versioning/explicit-versioning) for versioning.  To keep the various CEDS Open Source projects in alignment with the CEDS Elements, we are replacing the concept of "disruptive" releases with "alignment" releases.  These releases ensure that the data models are in sync with the official, community approved list of CEDS Elements.  For the versions available, see the [tags on this repository](https://github.com/CEDStandards/CEDS-Ontology/tags). 

## Authors

See the list of [contributors](/Contributors.md) who participated in this project.

## License

This project is licensed under the Apache 2.0 License - see the [LICENSE](LICENSE) file for details.
