# FinSTCSoftwareTest

# Пункт 1. XSLT test task

Здесь создан файл  **test.xsl** для обработки **test.xml**. Этот xslt создаёт файл **result.xml** (на основе данных **test.xml**) по следующим условиям:
* отфильтрованы accountTransaction узлы, которые имеют ноду updateDate со значением 2012-12-12 И значение ноды spValue начинается на BT.

## Конфигурация и настройка запуска

Необходимо установить Python.
Для того, чтобы получить файл **result.xml**, воспользуемся скриптом, который написал я.
Для начала нам необходимо установить библеотеку lxml, сделать это можно введя в командную строку  
`pip install lxml`

Далее, в папку со скриптом необходимо поместить файлы **test.xml** и **test.xsl**. В командной строке ввести команду  
`python main.py test.xml test.xsl`  
Названия файлов могут быть любыми, главное xml должен быть первым аргументом, а xsl вторым.

После выполнения данной команды в текущей папке будет создан конечный файл **result.xml**.

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
