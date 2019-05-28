<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">
  <html>
  <body>
 <h4>Error by project - <xsl:value-of select="ERROR_Container/Header/ProjectName"/> :</h4>
    <table border="0">
      <tr bgcolor="#D2D0D4">
	    <th style="text-align:left">Service Name</th>
	    <th style="text-align:left">Error Code</th>
		<th style="text-align:left">Error Severity</th>
        <th style="text-align:left">Date</th>
        <th style="text-align:left">Instance Name</th>
        <th style="text-align:left">Error Description</th>
      </tr>
      <tr bgcolor="#DFE0FF">
        <td><xsl:value-of select="ERROR_Container/Header/ProjectName"/></td>
		<td><xsl:value-of select="ERROR_Container/Header/ErrorCode"/></td>
		<xsl:choose>
				<xsl:when test="ERROR_Container/Header/ErrorSeverity=3">
					<td bgcolor="#DFE0FF" align="center">
					LOW
					</td>
				</xsl:when>
				<xsl:when test="ERROR_Container/Header/ErrorSeverity=2">
					<td bgcolor="#F7FF00" align="center">
					MEDIUM
					</td>
				</xsl:when>
				<xsl:when test="ERROR_Container/Header/ErrorSeverity=1">
					<td bgcolor="#E90C0C" align="center">
					HIGH
					</td>
				</xsl:when>
				<xsl:otherwise>
					<td align="center">
					<xsl:value-of select="ERROR_Container/Header/ErrorSeverity"/>
					</td>
				</xsl:otherwise>
		</xsl:choose>
		<td><xsl:value-of select="ERROR_Container/Header/TimeStamp"/></td>
        <td><xsl:value-of select="ERROR_Container/Header/InstanceName"/></td>
        <td><xsl:value-of select="ERROR_Container/Header/ErrorDescription"/></td>
      </tr>
    </table>
<h4>Note: The error detail is recorded in the table DBSDI..TIB_LOG_ERROR en el Server SXD201080</h4>
<h4>Favor de revisar el servicio, en caso de ser necesario, contactar a la Guardia de TIBCO</h4>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>
