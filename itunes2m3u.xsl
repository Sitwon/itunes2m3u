<?xml version="1.0"?>

<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" version="1.0">
	<xsl:output method="text"/>

	<xsl:template match="/">
		<xsl:text>#EXTM3U
</xsl:text>
		<xsl:apply-templates select="/plist/dict/array[preceding-sibling::key[1]='Playlists']/dict/array[preceding-sibling::key[1]='Playlist Items']/dict"/>
	</xsl:template>

	<xsl:template match="/plist/dict/array/dict/array/dict">
		<xsl:variable name="key" as="xs:string">
			<xsl:value-of select="integer"/>
		</xsl:variable>
		<xsl:text>#EXTINF:</xsl:text>
		<xsl:number value="round(/plist/dict/dict/dict[preceding-sibling::key=$key][1]/integer[preceding-sibling::key='Total Time'][1] div 1000)" format="1"/>
		<xsl:text>,</xsl:text>
		<xsl:value-of select="/plist/dict/dict/dict[preceding-sibling::key=$key][1]/string[preceding-sibling::key='Artist'][1]"/>
		<xsl:text> - </xsl:text>
		<xsl:value-of select="/plist/dict/dict/dict[preceding-sibling::key=$key][1]/string[preceding-sibling::key='Name'][1]"/>
		<xsl:text>
</xsl:text>
		<xsl:value-of select="replace(substring(/plist/dict/dict/dict[preceding-sibling::key=$key][1]/string[preceding-sibling::key='Location'][1], 18),'%20',' ')"/>
		<xsl:text>
</xsl:text>
	</xsl:template>
</xsl:transform>
