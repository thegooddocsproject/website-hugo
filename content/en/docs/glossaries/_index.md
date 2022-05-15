---
title: Sharable glossaries
linkTitle: Glossaries
menu:
  main:
    weight: 100
draft: false
lastmod: 2022-05-15T05:56:34.960Z
---

The _sharable glossaries project_ is developing standards, tools and processes to help establish interoperable glossaries between organizations and projects.

![Glossaries inheriting terms from authoritative glossaries, and suggesting terms to the source.](images/glossaries-inherited-terms.svg "Glossary inheriting terms.")

## About sharable glossaries

Glossaries are easy to set up for simple examples but very hard to scale - especially when you try to scale across use cases, across domains and across different organizations.

Unfortunately, in 2022, the world is yet to:

1. Agree on a common glossary format.
2. See the format widely adopted.

We aim to change this by breaking down technical barriers, raising awareness of solutions, and supporting widespread adoption of _sharable glossaries_.

### Why are glossaries hard?

As projects and their teams grow, documentation becomes increasingly important to enable clear communication. At the same time, it becomes harder to maintain unambiguous terminology due to competing source material and team priorities.

While there are mature standards and supporting tools for publishing and maintaining controlled vocabularies, there is currently a high technical barrier to learning these - something we hope to help simplify.

More details in the [modeling primer](primer).

## Use cases

Viral uptake of _sharable glossaries_ depends upon the realization of two key use cases:

* Hover-over term popups in webpages, sourced from a glossary file.
* A tool which builds a glossary f technical terms in my website, as sourced from authoritative glossaries.

Refer to [glossary use cases](use-cases) for more use cases and more details.

## Maturity levels

A glossary should start small, with minimal metadata fields. As the glossary matures, more metadata fields can be added to address advanced use cases. 

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
<td class="style5">Manage glossary maintenance.</td>
</tr>
<tr>
<td class="style6">5 Extra metadata</td>
<td class="style6">Support power use cases.</td>
</tr>
</tbody>
</table>

More details at [sharable glossary maturity levels](maturity-levels).

## Roadmap to sharable glossaries

Some may think it optimistic to nudge the world toward adopting sharable glossaries. We believe it is achievable, within a few years, by: breaking the problem into solvable components, and collaborating with domain experts for each part of the problem.

These components include:

+   Establish a development community.
+   Establish a _shareable glossary_ standard format.
+   Publish prominent glossaries as a web service using this standard.
+   Scale, by making it super-easy for projects to auto-generate a glossary file for their websites from authoritative glossaries.
+   Incrementally add tooling to realize glossary use cases.
+   Introduce governance best practices.
+   Provide user, and implementation guides.

Refer to our [detailed roadmap](roadmap) and [current status](status) for more details.

## Further reading

* [Rules for making a vocabulary Findable Accessible Interoperable and Reusable (FAIR)](https://journals.plos.org/ploscompbiol/article?id=10.1371/journal.pcbi.1009041).
* [SKOS Primer](https://www.w3.org/TR/skos-primer/).

