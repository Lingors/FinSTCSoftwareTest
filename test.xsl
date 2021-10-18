<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"
                xmlns:eag="http://www.eagleinvsys.com/2011/EagleML-2-0">
    <xsl:template match="node()|@*">
        <xsl:copy>
            <xsl:apply-templates select="node()|@*"/>
        </xsl:copy>
    </xsl:template>
    <xsl:template
            match="eag:accountTransaction[not(eag:rating/eag:updateDate='2012-12-12' and eag:rating/eag:ratingDataModel/eag:spValue[starts-with(text(), 'BT')])]">
    </xsl:template>
</xsl:stylesheet>