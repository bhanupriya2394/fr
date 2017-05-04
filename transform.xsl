<?xml version='1.0'?>
<xsl:stylesheet version="1.0"
      xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	  
	  <xsl:output method="xml" indent="yes"/>
	<xsl:template match="/">  
	<portfolio>
	  <xsl:for-each select="investment/item[@type='stock']">
		<stock>
			<xsl:attribute name="exchange">
				<xsl:value-of select="@exch"/>
			</xsl:attribute>
			<name>
				<xsl:value-of select="@company"/>
			</name>
			<symbol>
				<xsl:value-of select="@symbol"/>
			</symbol>
			<price>
				<xsl:value-of select="@price"/>
			</price>
		</stock>
	  </xsl:for-each>
	</portfolio>
	</xsl:template>
</xsl:stylesheet>	  