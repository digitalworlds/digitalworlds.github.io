<?xml version="1.0" encoding="UTF-8"?>
<html xsl:version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<head>
<title>Digital Worlds Institute Research</title>
<link rel="stylesheet" type="text/css" href="style.css"/>
</head>
<body>

<xsl:for-each select="data/publications/publication">
<xsl:sort select="year" order="descending"/>
<b>Publication</b>:
<xsl:value-of select="author"/>
(<xsl:value-of select="year"/>),

  <xsl:value-of select="title"/>, <xsl:value-of select="journal"/>

  <xsl:choose>
        <xsl:when test="volume"><xsl:value-of select="volume"/></xsl:when>
        <xsl:otherwise></xsl:otherwise>
  </xsl:choose>
  <xsl:choose>
        <xsl:when test="number">(<xsl:value-of select="number"/>)</xsl:when>
        <xsl:otherwise></xsl:otherwise>
  </xsl:choose>
  <xsl:choose>
        <xsl:when test="month">, <xsl:value-of select="month"/>, <xsl:value-of select="year"/></xsl:when>
        <xsl:otherwise></xsl:otherwise>
  </xsl:choose>
  <xsl:choose>
        <xsl:when test="pages">, pp. <xsl:value-of select="pages"/></xsl:when>
        <xsl:otherwise></xsl:otherwise>
  </xsl:choose>. 
  <xsl:choose>
        <xsl:when test="doi"><a href="{doi}"><xsl:value-of select="doi"/></a></xsl:when>
        <xsl:otherwise></xsl:otherwise>
  </xsl:choose>
   <xsl:choose>
        <xsl:when test="description"><br/>Abstract: <xsl:value-of select="description"/><br/></xsl:when>
        <xsl:otherwise></xsl:otherwise>
  </xsl:choose>
 <br/>

</xsl:for-each>
</body>
</html>
