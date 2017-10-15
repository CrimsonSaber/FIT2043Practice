<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
   <xsl:template match="album-info">
      <html>
         <body>
            <h1>
               <xsl:value-of select="title"/>
            </h1>
            <img src="http://upload.wikimedia.org/wikipedia/en/3/3b/Dark_Side_of_the_Moon.png" description="White light split into the spectrum by a triangular prism"/>
            <h3>
               Title:
               <xsl:value-of select="title"/>
            </h3>
            <h3>
               Artist:
               <xsl:value-of select="artist"/>
            </h3>
            <h3>
               Release:
               <xsl:value-of select="release-year"/>
            </h3>
            <xsl:for-each select="track-list/track">
               <p>
                  <xsl:number value="position()" format="1. " />
                  <xsl:value-of select="."/>
                  <xsl:if test="@composer">
                     (
                     <xsl:value-of select="@composer"/>
                     )
                  </xsl:if>
               </p>
            </xsl:for-each>
            <xsl:variable name="testVariable" select="amazon-link" />
            <h1><a href='{$testVariable}'>Buy me!</a></h1>
         </body>
      </html>
   </xsl:template>
</xsl:stylesheet>
