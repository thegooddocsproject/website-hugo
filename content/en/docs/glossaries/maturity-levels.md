---
title: "Glossary maturity levels"
linkTitle: "Maturity levels"
menu:
  glossaries:
    weight: 110
draft: false
---

This page proposes maturity levels for _sharable glossary_ use cases, along with expected fields for each level's schema profile.

**Last updated:** January 2022

**Version:** 0.1

**Status:** Unreviewed. (Errors expected in the schema formats.)

## Maturity levels
A glossary should start small, minimizing barriers to implementation. As the glossary matures, more metadata fields can be added to address advanced use cases. 

<style>
table {
  border-collapse:collapse;
  border:1px solid #ccc;
}
tbody, tr, td {
  border:inherit;
  border-collapse:inherit;
  vertical-align: text-top;
}
td {
  padding:5px;
}
.style0 {
  border-collapse:collapse;
  border:1px solid #000000
}
.style1 {
  background-color:#f4cccc;
}
.style2 {
  background-color:#f9cb9c;
}
.style3 {
  background-color:#ffe599;
}
.style4 {
  background-color:#d9ead3;
}
.style5 {
  background-color:#b6d7a8;
}
.style6 {
  background-color:#cfe2f3;
}
</style>
<table class="style0">
<thead>
<tr>
<th class="style0"><strong>Level</strong></th>
<th><strong>Value added</strong></th>
</tr>
</thead>
<tbody>
<tr>
<td class="style1">0 No glossary</td>
<td class="style1"></td>
</tr>
<tr>
<td class="style2">1 Non-sharable</td>
<td class="style2">Help a reader understand locally defined terms.</td>
</tr>
<tr>
<td class="style3">2 Machine readable</td>
<td class="style3">Enables tooling, like domain specific hover-over popups.</td>
</tr>
<tr>
<td class="style4">3 Traced to source</td>
<td class="style4">Know which glossaries terms come from.</td>
</tr>
<tr>
<td class="style5">4 Governed</td>
<td class="style5">Manage glossary maintenance</td>
</tr>
<tr>
<td class="style6">5 Extra metadata</td>
<td class="style6">Support power use cases</td>
</tr>
</tbody>
</table>

### Level 1: Non-sharable

**What**

A non-sharable glossary may be included as a table within a document or website.

![Non-sharable glossary table embedded in a document.](../images/glossaries-not-shared.svg "Non-sharable glossary.")

**Value added**

A glossary is relatively straightforward to establish for a document or small website. It help readers understand terms used.

**How**

Copy domain-specific terms from your documentation into a glossary table. Include columns for Term and Definition. Ideally, source definitions from a more authoritative glossary.

**Example**

<table>
  <tr>
   <td><strong>Term</strong>
   </td>
   <td><strong>Definition</strong>
   </td>
  </tr>
  <tr>
   <td>mercury
   </td>
   <td>metal element which is liquid standard temperatures
   </td>
  </tr>
</table>

### Level 2: Machine readable and reusable

**What**

* Store terms in a standard, machine readable format. Typically the glossary is stored as a static file, accessible via a URL, such as: [https://mywebsite.org/glossary.json](https://mywebsite.org/glossary.json).

![Glossary stored in a machine readable .json file in website.](../images/glossaries-machine-readable.svg "Glossary stored in a machine readable .json file in website.")

**Value added**

Adding machine readability enables multiple domain specific use cases, such as:

* Hover-over popups for terms within a document.
* Downstream glossaries referencing terms within this glossary.

**How**

* Level 2 of the _shared glossary profile_ involves copying the terms and definitions from your Level 1 table into a glossary file. (Fields from higher maturity levels may additionally be included as needed.)

**Fields for level 2**

* skos:Collection # Glossary’s top level, covering a collection of terms.
* skos:Concept # A term to describe
* skos:prefLabel@en # The preferred term name
* skos:prefLabel@fr # Optional: Other languages can be supported
* skos:altLabel # Optional: Store acronyms and synonyms
* skos:definition # Textual definition

Fields from higher maturity levels may optionally be included.

**Example**

```
{
  ex:chemistry rdf:type skos:Collection : {
    ex:mercury rdf:type skos:Concept : {
      skos:prefLabel "mercury"@en;
      skos:prefLabel "mercure"@fr; # Optionally support multiple languages
      skos:altLabel "hg"@en; # altLabel is optional
      skos:definition "metal element which is liquid standard temperatures"@en;
  }
}
```

### Level 3 Reference source glossaries

**What**

* Source terms from upstream glossaries and retain hyperlink to the source.
* Assign a license which allows repurposing of the glossary by downstream users, such as [Creative Commons By Attribution (CC-By)](https://creativecommons.org/licenses/by/4.0/). 

![Machine readable glossary file referencing terms from source glossary.](../images/glossaries-ref-source.svg "Glossary terms referencing source.")

**Value added**

Adding a reference to the source glossary enables:

* Increased interoperability.
* Suitable attribution provided to address license conditions.
* Term definitions can be refreshed from updated source glossaries.
* A glossary’s credibility will benefit from referencing a more authoritative source.

**Extra fields for level 3**

* dcterms:license
* skos:inScheme
* dcterm:identifier

**Example**

```
{
  ex:chemistry rdf:type skos:Collection : {
    dcterms:license “https://creativecommons.org/licenses/by/4.0/”;
    ex:mercury rdf:type skos:Concept : {
      skos:prefLabel "mercury"@en;
      skos:prefLabel "mercure"@es; # Optionally support multiple languages
      skos:altLabel "hg"@en;
      skos:definition "metal element which is liquid standard temperatures"@en;
      dcterm:identifier “mercury”; #unique identifier
      skos:inScheme “https://authoritative1.org/glossary.json”
      # If term doesn’t have a source, then skos:inScheme isn’t mentioned
  }
}
```
### Level 4 Governed and versioned

**What**

* Apply governance processes to manage glossary updates.
* Identify a glossary custodian
* Apply a unique identifier for each term.
* Apply versioning to terms (skos:Concepts).
* Periodically release a baselined version of the glossary (skos:Collection).
* Publish glossary license information.

![Process for sourcing and reviewing glossary terms.](../images/glossaries-governed.svg "Possible glossary governance process.")

**Value added**

* Managed quality control processes.
* Planned release cycles.
* Reduced accidental inconsistencies.
* Maintainers can recommend updates to source glossaries.

**Extra fields for level 4**

* ex:collectionVersion
* ex:sourceGlossaryVersion
* ex:sourceConceptVersion

**Example**

```
{
  ex:chemistry rdf:type skos:Collection : {
    dcterms:license “https://creativecommons.org/licenses/by/4.0/”;
    ex:collectionVersion rdf:type owl:versionInfo “1.2.1”;
    ex: priorVersion rdf:type owl:priorVersion “1.2.0”;
    ex:mercury rdf:type skos:Concept : {
      skos:prefLabel "mercury"@en;
      skos:altLabel "hg"@en;
      skos:definition "metal element which is liquid standard temperatures"@en;
      dcterm:identifier “mercury”; #unique identifier within Collection
      skos:inScheme “https://authoritative1.org/glossary.json”
      ex:sourceGlossaryVersion rdf:type owl:versionInfo “2.0”;
      ex:sourceConceptVersion rdf:type owl:versionInfo “3”;
}
```

### Level 5 Extra metadata

More extensive use cases may involve adding extra metadata fields to the ConceptCollection and Concepts.

As at January 2022, this section requires further definition.

Possible extra fields for level 5
* skos:note # Comments about the term.
* skos:scopeNote # Clarifications on usage.
* dcterms:creator
* dcterms:created
* dcterms:modified
* dcterms:source
* dcterms:replaces
* rdfs:seeAlso
* skos:broader
* skos:narrower
* skos:related
* skos:broadMatch
* skos:closeMatch
* skos:exactMatch
* skos:narrowMatch
* skos:relatedMatch
* skos:ConceptScheme

**Further reading**

* [Rules for making a vocabulary Findable Accessible Interoperable and Reusable (FAIR)](https://journals.plos.org/ploscompbiol/article?id=10.1371/journal.pcbi.1009041)