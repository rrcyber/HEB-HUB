<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">
  <html>
  <body>
 <h4>Misconfigured - <xsl:value-of select="BadData/Type"/> :</h4>
    <table border="0" cellspacing="1">
      <tr bgcolor="#D2D0D4">
	    <th style="text-align:left" valign="top">Data</th>
      </tr>
      <tr bgcolor="#DFE0FF" valign="top">
		<td><xsl:value-of select="BadData/BadMessage"/></td>
      </tr>
    </table>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>