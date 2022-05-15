---
title: Sharable glossary use cases
linkTitle: Use cases
menu:
  glossaries:
    weight: 140
draft: false
lastmod: 2022-05-15T06:10:35.507Z
---

This page lists the various use cases enabled by glossaries.

## Website toolkit

Viral uptake of _sharable glossaries_ depends upon the realization of two key use cases:

* **Hover-over term popups:** As owner of a website with domain specific terms,
    * I want to add a glossary file into my website folder,
    * I want my website to automatically recognize this glossary file,
    * I want my website to provide "hover-over popup definitions" for my domain specific terms, which are sourced from my glossary file.

* **A ```build-glossary``` tool:** As owner of a website with domain specific terms,
    * I want a ```build-glossary``` tool which finds all the technical terms in my website, as sourced from authoritative glossaries.
    * I want the tool to suggest technical terms I should define. (The terms not found in my source dictionary or glossaries.)

## Discover term meaning

* As a general document reader, I want to find definitions for the terms and acronyms in the document I am reading.
* As a technical writer, I want to find the preferred spelling, capitalization and word choice for a term.
* As an advanced document reader, I want to know of alternate definitions for a term.
* As an advanced document reader, I want to understand the inheritance path back to upstream source definitions, where I may find more information.

## Translation

* As a translator, I want glossary terms to be translated into my target languages, so I can consistently translate a source term to the same target term.

## Information mining

* As a search engine or software algorithm building knowledge graphs, I want to use glossaries to help extract meaning from textual information sources.
* As a researcher, I want to be able to find related information even if it uses different terms for the same concepts.

## Governance

* As a glossary owner, I want a governance framework to help resolve terminology management conflicts between:
   * My content authors.
   * Upstream glossary sources.
   * My downstream content consumers.
* As a glossary owner, I want access to version history to allow predictable baseline updates and understand historical updates.
* As a glossary owner, I want to track a term's source glossary, so I can update my term if the source term definition changes.
* As a glossary user, I want to be able to suggest new terms to an upstream glossary.

_Note: A glossary might be targeting terms from a document, a website, a project, an organization, a domain, or a foundation._

_Note: Sources for glossaries can be both:_

* _More authoritative (such as from upstream standards), and_
* _Less authoritative (such as from downstream community users)._

## License

* As a glossary user, I want terms published under an open license, such as [CC-By](https://creativecommons.org/licenses/by/4.0/), so I can republish terms. 

## Tooling

* As a software developer, I want terms and relationships between glossaries in a machine-readable form so that I can integrate glossary functionality into software.
* As a data modeler, I want to align the terms I use with others in my domain so that we can seamlessly integrate our data models.
