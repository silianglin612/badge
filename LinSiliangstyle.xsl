<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html"/>

<xsl:template match="/">
  <html><body>
    <h1>Activity Badges</h1>
    <xsl:apply-templates select="badges/badge[@type='activity']">
      <xsl:sort select="name"/>
    </xsl:apply-templates>
    <p><i>&#xA9; College Productions Ltd</i></p>
  </body></html>
</xsl:template>

<xsl:template match="badge">
  <h2><xsl:value-of select="name"/></h2>
  <p><xsl:value-of select="description"/></p>
  <xsl:apply-templates select="levels/availability"/>
  <hr/>
</xsl:template>

<xsl:template match="availability">
  <xsl:choose>
    <xsl:when test="@level='beaver'">Beaver: </xsl:when>
    <xsl:when test="@level='cub'">Cub: </xsl:when>
    <xsl:when test="@level='scout'">Scout: </xsl:when>
  </xsl:choose>
  <xsl:value-of select="."/>
  <br/>
</xsl:template>

</xsl:stylesheet>