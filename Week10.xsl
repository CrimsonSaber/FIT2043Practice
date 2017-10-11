<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">

        <xsl:call-template name="show_title">
            <xsl:with-param name="title" />
        </xsl:call-template>

    </xsl:template>

    <xsl:template name="show_title">
        <xsl:param name="title" />
        <xsl:for-each select="library/book">
            <p>Book
                <xsl:number value="position()" format="1: " />
                <xsl:value-of select="title" /> by
                <xsl:value-of select="author" />
            </p>
        </xsl:for-each>
    </xsl:template>

</xsl:stylesheet>