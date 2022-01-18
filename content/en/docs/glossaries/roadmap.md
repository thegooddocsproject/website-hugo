---
title: "Sharable glossaries roadmap"
linkTitle: "Roadmap"
menu:
  glossaries:
    weight: 120
draft: false
---

This roadmap describes steps planned by open source collaborators to realize the potential for large-scale sharing of glossary terms between disparate organizations and projects.  

It is designed to help collaborators understand how they can join and benefit from the initiative.

## How can we bootstrap sharable glossaries?

How can we push through existing hurdles and bootstrap a _sharable glossary_ framework, and achieve widespread adoption? It will involve a multi-phased approach, addressing key challenges which have hindered prior attempts:

+   Establish a core _sharable glossary_ format, with help from domain modelers from ISO and OGC standards communities.
+   Publish prominent glossaries as a web service, starting initially with committed stakeholders from within the geospatial domain.
+   Scale, by making it super-easy for projects to auto-generate a glossary file for their websites from authoritative glossaries.
+   Incrementally add tooling to realize high value glossary use cases.
+   Help projects mature by introducing glossary management processes.

## Implementation phases

### Phase 1 Define problem and establish a community

**Challenge**  
Define the problem and attract collaborators.

**How**

+   Within this website, we describe the business, architecture, collaboration and technical challenges that require addressing.
+   We have broken problems into modular components, are engaging domain experts to focus on their area, and coordinating contributions into a holistic solution.

### Phase 2 Establish a defacto glossary standard

**Challenge**  
Defining a glossary format is illusively difficult.

+   It needs to be simple and easily understood by the masses for common use cases.
+   It needs to expand to support edge use cases, including referencing source terms.
+   It should be interoperable with existing Knowledge Organization Systems (KOS).

**How**

+   We are working with domain modeling experts, from ISO and OGC standards organizations to define a _sharable glossary _schema format.
+   This will extend to establishing a defacto web service API.
+   We need to reconcile different sentence structure guidance for writing glossary definitions.

**Further information**

+   [Rules for making a vocabulary Findable Accessible Interoperable Reusable (FAIR)](https://journals.plos.org/ploscompbiol/article?id=10.1371/journal.pcbi.1009041).
+   Schema standards: [SKOS](https://www.w3.org/TR/skos-reference/), [Dublin Core Terms](https://www.dublincore.org/specifications/dublin-core/dcmi-terms/), [DCAT](https://www.w3.org/TR/vocab-dcat-2/), [JSON-LD](https://json-ld.org/) and [SHACL](https://www.w3.org/TR/shacl/).
+   [SKOS Primer](https://www.w3.org/TR/skos-primer/).

### Phase 3 Publish prominent glossaries

**Challenge**  
To bootstrap a sharable glossary network, we want to stand up large, authoritative glossaries behind a web service using the _common glossary_ format. This will enable downstream projects to build derived, project-specific glossaries.

**How**  
The authors of the open source [Paneron](https://github.com/paneron/paneron) glossary have committed to publishing glossaries via the _common glossary_ format, once developed.  

This software is used by large glossary publishers, such as:

+   The 180,000+ entries in the [IEC Electropedia](https://www.electropedia.org/),  the world's authoritative electrotechnical terminology-set.
+   The glossary of spatial terms from the Open Geospatial Consortium and ISO TC211.

We will reach out to other glossary publishers and encourage their participation. If you own a glossary you'd like to publish, then please connect with us.

**Further information**

+   [Proposal for a glossary publishing pilot at larger organizations](https://docs.google.com/document/d/1KNh8OcLlqkwX4ocUxoAYUGuOAU_ny0Ma_qm-2i_vDj4/edit).

### Phase 4 Scale: a glossary for every website

**Goal**  
Provide a compelling reason for all technical websites to create a glossary for their website, and make it very easy to do so.

**Challenge**  
Building and maintaining a non-trivial glossary is difficult. It typically requires rallying and continued engagement from many stakeholders. However, if we have a sharable glossary framework, and access to an authoritative glossary, we can search our website for glossary terms.

Example use of a script to build a glossary:

```
build-glossary
  --source https://my-standards.org/glossary \
  --source https://my-domain.org/glossary \
  --website https://my-website.com \
  --out my-glossary.json
```

For the simple use case, the created glossary need only be stored as a file in the root directory of the website and viewed as a table, or as in-line popup help.

![Glossary stored in a machine readable .json file in website.](../images/glossaries-machine-readable.svg "Glossary stored in a machine readable .json file in website.")

**How**

+   We aim to attract a developer to create a _build-glossary_ tool, and introduce a means to publish the glossary within a website. Initially the tool could be a simple command-line script. Over time, it will likely gain more features and grow into a web service.
+   These will be accompanied by how-to guides, written by technical writers from The Good Docs Project.
+   Initially we will pilot this approach with ~ 50 open source geospatial projects we have a relationship with within The Open Source Geospatial Foundation. Later we will evangelize to technical writers and website builders through forums such as Write the Docs and The Good Docs Project.

### Phase 5 Tooling to address high value use cases

Once a sharable glossary framework is established, and a critical mass of websites starts to build, there will a compelling business case to integrate tools with glossaries, such as:

+   Web-hosting platforms including hover-over popups for terms.
+   Spell and grammar check tools to source glossary terms.
+   More accurate translation applied to translation tools.
+   Smarter search algorithms.

### Phase 6 Glossary management processes and tooling

As projects mature, glossary owners will adopt tools and processes to support the maintenance, versioning, and cross-domain management of terms.  

This will typically involve moving glossary terms from a glossary file into a specialized hosting tool such as the [Paneron](https://github.com/paneron/paneron) open source glossary management tool.  

This will be supported by documented best practice processes.

![Process for sourcing and reviewing glossary terms.](../images/glossaries-governed.svg "Possible glossary governance process.")