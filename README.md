# APEX2EBS Framework

## Background

This APEX to EBS framework was developed in 2009 for a project which was a combination of Agile PLM + EBS workflow and AME functionalities. Version 1.0 was relased to public in 2010. 

Years later Oracle provided a [reference](https://support.oracle.com/epmos/faces/DocumentDisplay?id=1306563.1) for such solution but it does not address the NLS, multi-org, page security, and the two-way integration issue (APEX → EBS and EBS → APEX without additional login). I decided to rewrite this framework and make it's easier to deploy, configure and develop.

In 2024, Oracle provided an upgraded package for this integration, working for EBS 12.2:
[Enhanced Integration with EBS 12.2 and APEX Now Available](https://blogs.oracle.com/ebstech/post/enhanced-integration-with-ebs-122-and-apex-now-available)

Comparing with the solution provided from Oracle, I still believe this framework is easier to deploy and configure. Using the [APEXOTA](https://symbolthree.github.io/tech-doc/apexota/part01.html) architecture gives even more flexibility to integrate with other technologies.

## Features

- Works for Oracle APEX from version 19 and up
- Works for Oracle EBS 11i, R12.1 and R12.2
- Quick and easy setup. Especially suitable for mid-size companies which have limited IT resource to do EBS customization.
- Enforce security with EBS authentication and built-in page authorization
- Combining with the sophistication of APEX technologies, developers can create reports or Form-like application for EBS users easily. Hosting APEX with 
Apache / Tomcat / ORDS (Oracle REST Data Services) can even create more powerful and scalable application for enterprise use.

### The document has moved to [here](https://symbolthree.github.io/tech-doc/apex-ebs/TOC.html).

- Former project home is in [SourceForge](https://sourceforge.net/projects/apex2ebs/)
