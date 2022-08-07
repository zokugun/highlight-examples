<xsl:template match="/">
	{
		"$schema": "****",
		"contentVersion": "*******",
		"functions": [
		],
		"parameters": {
			"par1": {
				"type": "string"
				},
			"par2": {
				"type": "string"
			},
			<xsl:for-each select="Project/Somethnig1/Something2">
				"par3<xsl:value-of select="@Include" />": {
					"type": "string",
					"defaultValue": "7"
				},
			</xsl:for-each>
			"par4": {
				"type": "string"
			},
			<xsl:if test="not(/Project/Somethnig1/Something2/Name='a1))">
				"par5": {
					"type": "string"
				}
			</xsl:if>
		}
	}
</xsl:template>