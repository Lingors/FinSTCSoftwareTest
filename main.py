import sys

import lxml.etree as ET


def xslt_transform(xml_filename, xsl_filename):
    xml = ET.parse(xml_filename)
    xslt = ET.parse(xsl_filename)
    transform = ET.XSLT(xslt)
    result = transform(xml)
    infile = ET.tostring(result, pretty_print=True, method='xml')
    outfile = open('result.xml', 'wb')
    outfile.write(infile)
    outfile.close()


if __name__ == '__main__':
    if len(sys.argv) == 3:
        xslt_transform(sys.argv[1], sys.argv[2])
    else:
        print('Invalid number of parameters.')
