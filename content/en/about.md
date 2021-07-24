---
title: About The Good Docs Project
menu:
  main:
    name: About
    weight: 10
---
{{% blocks/lead color="primary" %}}

# About The Good Docs Project

This page introduces the concepts used by [The Good Docs Project](https://thegooddocsproject.dev) for creating, customizing, and using documentation templates. It is designed to help document authors, docset owners, and template authors to get started with The Good Docs Project.

{{% /blocks/lead %}}

{{< blocks/community_links color="200" >}}

{{% blocks/section color="white" type="section" %}}

## Goals of The Good Docs Project

Within The Good Docs Project we are building best practice templates and writing instructions for documenting open source software. (Which incidentally are useful for all software and related domains.)

## Focus on what you’re best at

Templates enable significant efficiencies by allowing experts to focus only on the bits they do best.

1. Various writing experts can embed best practices into a **template**.
2. **Domain experts can write** better content, more efficiently, when they have a template to work against.
3. Writers can polish the content by **reviewing** for compliance against the template.

## Various doctypes

There is no one thing called “Good Docs”; there are multiple doctypes, each with different purposes and needs. Targeting your writing to the purpose will improve the quality and impact of your project’s documentation, often significantly.

![Doc Types Diagram](/uploads/doctypes.svg "Plotting doc types within a maturity model")

Our templates provide tailored guidance with different priorities for each doctype.

For instance:

* Reference documents need to be current, but it is okay if sentence structure is not polished.
* Tutorials should be polished, but they don’t need to cover the latest features.

## Doctype template set

For each doctype, we provide a set of supporting documents, which we call a template-set. These documents are based on our [base-template-set](https://github.com/thegooddocsproject/templates/tree/dev/base), which is effectively our template for templates.

![doctype template-set](/uploads/template-set.svg "doctype template-set")

### Raw template (what - structural): 

* Layout of headings and sample text with embedded writing tips.

### Template guide (how):

* Provides guidance on how to fill out each section in the template.

### Template theory (why - conceptual):

* Provides background theory which supports authors making documentation decisions.
* Empowers an author to “think like a tech writer”.

### Template checklist (how):

* Checklist to confirm you have covered everything.

### Template example (what)

* Filled-in template which describes a fake project.

## Roles

We consider the following primary roles when creating templates:

![Roles in the doc development workflow](/uploads/workflow.svg "Roles in the doc development workflow")

### Template author

* Creates a {doctype}-template set, based on the [base template-set](https://github.com/thegooddocsproject/templates/tree/dev/base).

### Docset owner

* Establish a content strategy.
* Selects a set of doctype templates for a project, and tailors them for the project’s needs.

### Doc author

* Follows the `Quickstart for Document Authors` and the {doctype}-guide to write a document.

### Doc Reader

* Reads intuitive documentation, tailored for this reader’s needs, presented when the reader needs it. 
{{% /blocks/section %}}
