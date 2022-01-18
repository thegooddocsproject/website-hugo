---
title: "Sharable glossary use cases"
linkTitle: "Use cases"
menu:
  glossaries:
    weight: 140
draft: true
---

This page lists the various use cases enabled by glossaries.

## Discover term meaning

* As a general document reader, I want to find definitions for the terms and acronyms in the document I am reading.
    * Traditionally, glossaries have been presented as a table or list within the associated document or website.
    * Some systems support readers hovering over terms to get a popup with more information.
* As a technical writer, I want to find the preferred spelling, capitalization and word choice for a term.
* As an advanced document reader, I want to know of alternate definitions for a term.
* As an advanced document reader, I want to understand the inheritance path back to upstream source definitions, where I may find more information.

## Translation

* As a document translator, I want glossary terms to be translated into my target languages, so I can consistently translate a source term to the same target term.

## Information mining

* As a search engine or software algorithm building knowledge graphs, I want to use glossaries to help extract meaning from textual information sources.
* As a researcher, I want to be able to find related information even if it uses different terms for the same concepts.

## Governance

* As a glossary owner, I want a governance framework to help resolve terminology management conflicts between terminology sources and stakeholders.
* As a glossary owner, I want access to version history to allow predictable baseline updates and understand historical updates.
* As a downstream glossary owner, I want source glossary terms licensed such that I can republish the terms, (such as Creative Commons By Attribution). 
* As a glossary owner, I want tooling to build and maintain my glossary by matching terms used in my documentation with source glossaries.
* As a term maintainer, I want tooling which allows me to suggest new terms or update existing terms.

_Note: A glossary might be targeting terms from a document, a website, a project, an organization, a domain, or a foundation._

_Note: Sources for glossaries can be both:_

* _More authoritative (such as from upstream standards), and_
* _Less authoritative (such as from downstream community users)._

## Tooling

* As a software developer, I want terms and relationships between glossaries in a machine-readable form so that I can integrate glossary functionality into software.
* As a data modeler, I want to align the terms I use with others in my domain so that we can seamlessly integrate our data models.