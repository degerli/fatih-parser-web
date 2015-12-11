<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/jsp/common/taglibs.jsp"%>

<s:layout-definition>
    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN"
        "http://www.w3.org/TR/html4/strict.dtd">
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <meta name="viewport" content="initial-scale=1.0, user-scalable=no">
            <link rel="stylesheet" type="text/css" href="${contextPath}/css/style.css">
            <title>${title}</title>
            <script type="text/javascript" src="js/util.js"></script>
    </head>

    <body>
    <div id="wrapper">
        <div class="demo">
            <a href="http://nlp.ceng.fatih.edu.tr/blog/tr/"  target="_blank" class="demo">Fatih Üniversitesi <span>Doğal Dil İşleme</span> Grubu</a>
        </div>
        <div id="content">
            <div id="tab-container">
                <ul>
                    <li class="${index}"><a href="index.jsp">Ana Sayfa</a></li>
                    <li class="${about}"><a href="About.action">Hakkında</a></li>
                    <li class="${example}"><a href="Example.action">Örnekler</a></li>
                    <li class="${faq}"><a href="Faq.action">SSS</a></li>
                    <li class="${version}"><a href="Version.action">Sürüm Notları</a></li>
                    <li class="${contact}"><a href="Contact.action">İletişim</a></li>
                    <li class="${parse_turkmen}"><a href="Parse.action?parseTurkmen">Türkmence</a></li>
                    <li class="${turkmen_words}"><a href="TurkmenWords.action">Türkmence Kelimeler</a></li>
                </ul>
            </div>
            <div id="main-container" class="shadow">
                <h1>${title}</h1>
                <s:layout-component name="body"/>
            </div>
        </div>
        <div id="footer" class="footer">
            © 2008 - 2014 Fatih Üniversitesi Doğal Dil İşleme Grubu.
            Uygulama <a target="_blank" href="http://www.mozilla.org/tr/firefox/fx/">Mozilla Firefox</a> ile sorunsuz çalışmaktadır. 
        </div>
    </div>

    <script>
      (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
      (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
      m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
      })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

      ga('create', 'UA-37739872-4', 'auto');
      ga('send', 'pageview');

    </script>
</body>


</html>
</s:layout-definition>

