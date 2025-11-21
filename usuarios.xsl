<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="html" encoding="UTF-8"/>

  <xsl:template match="/">
    <html>
      <head>
        <title>Lista de Usuarios</title>
        <style>
          body {
            font-family: Arial, sans-serif;
            padding: 20px;
          }
          table {
            border-collapse: collapse;
            width: 100%;
          }
          th, td {
            border: 1px solid #ccc;
            padding: 10px;
            text-align: left;
          }
          th {
            background-color: #f4f4f4;
          }
          tr:nth-child(even) {
            background-color: #f9f9f9;
          }
        </style>
      </head>
      <body>
        <h2>Usuarios Registrados</h2>
        <table>
          <tr>
            <th>Nombre</th>
            <th>Sexo</th>
            <th>Email</th>
            <th>Videojuego Favorito</th>
          </tr>
          <xsl:for-each select="usuarios/usuario">
            <tr>
              <td><xsl:value-of select="nombre"/></td>
              <td><xsl:value-of select="sexo"/></td>
              <td><xsl:value-of select="email"/></td>
              <td><xsl:value-of select="videojuego"/></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
