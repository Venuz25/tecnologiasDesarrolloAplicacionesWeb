<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
    <html>
        <style>
        table{
            border: 3px double black;
            padding: 5px;
        }
        #titulo{
            text-align: center;
            background-color:#5a036f;
            color: white;
            font-size: 24px;
        }
        .elementos{
            color: black;
            font-weight: bold;
            text-align: center;
            font-size: 20px;
            background-color:#e09ef1;
        }
        td{
            border: 1px solid black;
        }
        .leche{
            color: blue;
        }
        .yogurt{
            color: violet;
        }
        </style>
        <body>
            <h1>Practica #5</h1>
            <table>
                <tr>    
                    <td colspan="4" id="titulo">Paleteria Don Ramon</td>
                </tr>
                <tr>
                    <td class="elementos">Sabor</td>
                    <td class="elementos">Tamaño</td>
                    <td class="elementos">Ingrediente</td>
                    <td class="elementos">Precio</td>
                </tr>

                <xsl:for-each select ="paleteria/paleta">
                <tr>
                   <td><xsl:value-of select="sabor"/></td>
                    <td><xsl:value-of select="tamaño"/></td>
                    <td><xsl:value-of select="ingrediente"/></td>
                    <td><xsl:value-of select="precio"/></td>
                </tr>
                </xsl:for-each>

                <!--<xsl:for-each select ="paleteria/paleta">
                <xsl:if test="precio >=35">
                <tr>
                    <td><xsl:value-of select="sabor"/></td>
                    <td><xsl:value-of select="tamaño"/></td>
                    <td><xsl:value-of select="ingrediente"/></td>
                    <td style="color: EC00EB"><xsl:value-of select="precio"/></td>
                </tr>
                </xsl:if>
                </xsl:for-each>-->
        
                <!--<xsl:for-each select ="paleteria/paleta">
                <xsl:if test="@categoria = 'Leche'">
                <tr>
                    <td class="leche"><xsl:value-of select="sabor"/></td>
                    <td class="leche"><xsl:value-of select="tamaño"/></td>
                    <td class="leche"><xsl:value-of select="ingrediente"/></td>
                    <td class="leche"><xsl:value-of select="precio"/></td>
                </tr>
                </xsl:if>
                <xsl:if test="@categoria = 'Yogurt'">
                <tr>
                    <td class="yogurt"><xsl:value-of select="sabor"/></td>
                    <td class="yogurt"><xsl:value-of select="tamaño"/></td>
                    <td class="yogurt"><xsl:value-of select="ingrediente"/></td>
                    <td class="yogurt"><xsl:value-of select="precio"/></td>
                </tr>
                </xsl:if>
                </xsl:for-each>-->
            </table>
    </body>
    </html>
</xsl:template>
</xsl:stylesheet>