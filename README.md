# FinSTCSoftwareTest

# Пункт 1. XSLT test task

Here is a **test.xsl** file created to process **test.xml**. This xslt creates a **result.xml** file (based on **test.xml** data) under the following conditions:  
* filtered out accountTransaction nodes that have an updateDate node with a value 2012-12-12 AND the value of the spValue node starts with BT.

## Configuring and Configuring Launch

Python must be installed.  
In order to get the **result.xml** file, let's use the script I wrote.  
First, we need to install the lxml library, you can do this by entering into the command line  
`pip install lxml`  

Next, the files **test.xml** and **test.xsl** must be placed in the folder with the script. In the command line, enter the command  
`python main.py test.xml test.xsl`  
File names can be anything, the main xml should be the first argument, and xsl the second.  

After executing this command, the final file **result.xml** will be created in the current folder.  

# Пункт 2. What is XSD, examples of financial XSD

XSD (XML Schema Definition), a recommendation of the World Wide Web Consortium (W3C), specifies how to formally describe the elements in an Extensible Markup Language (XML) document. It can be used by programmers to verify each piece of item content in a document, to assure it adheres to the description of the element it is placed in.

Like all XML schema languages, XSD can be used to express a set of rules to which an XML document must conform to be considered "valid" according to that schema. However, unlike most other schema languages, XSD was also designed with the intent that determination of a document's validity would produce a collection of information adhering to specific data types. Such a post-validation infoset can be useful in the development of XML document processing software.

Example of financial XSD:

<https://www.xbrl.org/taxonomy/int/fr/ias/ci/pfs/2002-11-15/Novartis-2002-11-15.xsd>

# Пункт 3. Information about ETL.

ETL (Extract, Transform and Load) is the general procedure of copying data from one or more sources into a destination system which represents the data differently from the source(s) or in a different context than the source(s).
The problem, due to which the need to use ETL solutions was born in principle, is the business need to get reliable reporting from the mess that is created in the data of any ERP-system.

This mess is always, it is of two kinds:
* As a random errors occurred at the level of input, data transfer, or because of bugs;
* As a differences in directories and details of data between related IT systems.

Because of this feature, ETL systems should ideally solve not one, but two tasks:

* Bring all data to a single system of values and detail, simultaneously ensuring their quality and reliability.
* Provide an audit trail when transforming the data, so that after the transformation, you can understand from which source data and amounts each line of the transformed data was collected.
