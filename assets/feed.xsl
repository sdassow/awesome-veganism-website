<xsl:stylesheet
  version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:atom="http://www.w3.org/2005/Atom"
  exclude-result-prefixes="atom">

  <xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>
  <xsl:template match="/">
    <html xmlns="http://www.w3.org/1999/xhtml">
      <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
        <title><xsl:value-of select="atom:feed/atom:title"/></title>
        <link rel="stylesheet" type="text/css" href="feed.css"/>
      </head>
      <body>
        <section>
          <xsl:apply-templates select="atom:feed" />
        </section>
        <section>
          <h2>Recent Items</h2>
          <xsl:apply-templates select="atom:feed/atom:entry" />
        </section>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="atom:feed">
    <h1>
      <xsl:value-of select="atom:title"/>
    </h1>
    <blockquote>
      <p>
        <xsl:value-of select="atom:subtitle"/>
      </p>
      <p>
        <b>
          This is a styled atom feed for
          <a>
            <xsl:attribute name="href">
              <xsl:value-of select="atom:link[@rel='alternate']/@href"/>
            </xsl:attribute>
            <xsl:value-of select="atom:link[@rel='alternate']/@href"/>
          </a>.
        </b>
        Last update: <xsl:value-of select="atom:updated"/>
      </p>
    </blockquote>
  </xsl:template>

  <xsl:template match="atom:entry">
    <div class="entry">
      <h3>
        <a target="_blank">
          <xsl:attribute name="href">
            <xsl:value-of select="atom:link/@href"/>
          </xsl:attribute>
          <xsl:value-of select="atom:title"/>
        </a>
      </h3>
      <p>
        <xsl:value-of select="atom:summary" disable-output-escaping="yes" />
      </p>
      <small>
        Published: <xsl:value-of select="atom:updated" />
      </small>
    </div>
  </xsl:template>

</xsl:stylesheet>
