<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text"/>
    <xsl:template match="/">
        <xsl:apply-templates select="list"/>
    </xsl:template>
    <xsl:template match="list">
        <xsl:param name="numbering"/>
        <xsl:if test="$numbering != ''">
            <xsl:value-of select="$numbering"/><xsl:text> </xsl:text>
        </xsl:if>
        <xsl:value-of select="@title"/>
        <xsl:text>&#10;</xsl:text>
        <xsl:apply-templates select="item">
            <!-- concat the empty string with the title to sort properly-->
            <xsl:sort select="concat(./list/@title, text())"/>
            <!-- . instead of text() will get data for subchildren of list, text() will just get data of that node -->


            <xsl:with-param name="numbering">
                <xsl:value-of select="$numbering"/>
            </xsl:with-param>
        </xsl:apply-templates>
    </xsl:template>
    <xsl:template match="item">
        <xsl:param name="numbering"/>
        <xsl:choose>
            <xsl:when test="list">
                <xsl:apply-templates select="list">
                    <xsl:with-param name="numbering"><xsl:value-of select="$numbering"/><xsl:value-of select="position()"/>.</xsl:with-param>
                </xsl:apply-templates>
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="$numbering"/><xsl:value-of select="position()"/>.<xsl:text> </xsl:text><xsl:value-of select="."/>
                <xsl:text>&#10;</xsl:text>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>


</xsl:stylesheet>
