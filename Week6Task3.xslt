<xsl:stylesheet
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
 version="1.0" >
<xsl:template match="/">
<html>
 <head>
 <title>Information about <xsl:value-of select="count(musiclibrary/song) " /> songs.</title>
 </head>
 <body>
 <h3>Information about <xsl:value-of select="count(musiclibrary/song) " /> songs.</h3>
 <xsl:apply-templates select="musiclibrary/song" />
 </body>
</html>
</xsl:template>
<xsl:template match="song">
<table border="1">
<tr>
<th>Title</th>
<th>Artist</th>
</tr>
<tr>
<td><xsl:value-of select="title" /></td>
<td><xsl:value-of select="artist" /></td>
</tr>
</table>

</xsl:template>
</xsl:stylesheet>
