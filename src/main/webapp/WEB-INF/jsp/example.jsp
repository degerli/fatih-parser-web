<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/jsp/common/taglibs.jsp"%>
<s:layout-render name="/WEB-INF/jsp/common/layout_main.jsp" title="Örnek Cümleler" example="selected">
    <s:layout-component name="body">
      
    <s:form target="_blank" id="parse_form" name="parse_form" beanclass="fatihparser.action.ParseAction" >
         <s:hidden id="inputSentence" name="inputSentence" value=""/>
         <s:hidden name="selectedLanguage" value="turkish"/>
         <s:hidden name="selectedDetail" value="level1"/>
    </s:form>
    <p>Sistemi test etmek için kullanılan cümlelerden bazıları:</p>
        

<a href="" onclick="DoSubmit('gittim');">gittim</a><br/>
<a href="" onclick="DoSubmit('ben gittim');">ben gittim</a><br/>
<a href="" onclick="DoSubmit('gittim ben');">gittim ben</a><br/>
<a href="" onclick="DoSubmit('eve gittim');">eve gittim</a><br/>
<a href="" onclick="DoSubmit('gittim eve');">gittim eve</a><br/>
<a href="" onclick="DoSubmit('ben eve gittim');">ben eve gittim</a><br/>
<a href="" onclick="DoSubmit('eve ben gittim');">eve ben gittim</a><br/>
<a href="" onclick="DoSubmit('ben gittim eve');">ben gittim eve</a><br/>
<a href="" onclick="DoSubmit('koşarak eve gittim');">koşarak eve gittim</a><br/>
<a href="" onclick="DoSubmit('ben koşarak eve gittim');">ben koşarak eve gittim</a><br/>
<a href="" onclick="DoSubmit('gelmem ile gitmem bir oldu');">gelmem ile gitmem bir oldu</a><br/>
<a href="" onclick="DoSubmit('gel ki gidelim');">gel ki gidelim</a><br/>
<a href="" onclick="DoSubmit('gerildim, gerildim ve vurdum');">gerildim, gerildim ve vurdum</a><br/>
<a href="" onclick="DoSubmit('istedim, çok istedim ama yapamadım');">istedim, çok istedim ama yapamadım</a><br/>
<a href="" onclick="DoSubmit('biz gelince onlar gitti');">biz gelince onlar gitti</a><br/>
<a href="" onclick="DoSubmit('ben ağlarken sen gülüyordun');">ben ağlarken sen gülüyordun</a><br/>
<a href="" onclick="DoSubmit('sen kimsin, ben kimim ve o kimdir');">sen kimsin, ben kimim ve o kimdir</a><br/>
<a href="" onclick="DoSubmit('kim geldi');">kim geldi?</a><br/>
<a href="" onclick="DoSubmit('kimdi o adam');">kimdi o adam?</a><br/>
<a href="" onclick="DoSubmit('biz gelişen bir ülkeyiz');">biz gelişen bir ülkeyiz</a><br/>
<a href="" onclick="DoSubmit('müdür müdür müdür');">müdür müdür müdür?</a><br/>
<a href="" onclick="DoSubmit('kırmızı kiremitli, beyaz badanalı evleri vardır');">kırmızı kiremitli, beyaz badanalı evleri vardır</a><br/>
<a href="" onclick="DoSubmit('yağız atlar kişnedi');">yağız atlar kişnedi</a><br/>
<a href="" onclick="DoSubmit('bayram ufukta gün bitincedir');">bayram ufukta gün bitincedir</a><br/>
<a href="" onclick="DoSubmit('Cenap Şahabettin çocukluğumdan beri sevdiğim bir şairdir');">Cenap Şahabettin çocukluğumdan beri sevdiğim bir şairdir</a><br/>
<a href="" onclick="DoSubmit('Fatih\'in İstanbul\'u fethettiği yaştasın');">Fatih'in İstanbul'u fethettiği yaştasın</a><br/>
<a href="" onclick="DoSubmit('sahipsiz olan memleketin batması haktır');">sahipsiz olan memleketin batması haktır</a><br/>
<a href="" onclick="DoSubmit('seni ancak bu sabah anlıyorum');">seni ancak bu sabah anlıyorum</a><br/>
<a href="" onclick="DoSubmit('bana düşmez can vermek yumuşak bir yatakta');">bana düşmez can vermek yumuşak bir yatakta</a><br/>
<a href="" onclick="DoSubmit('nasıl böyle bir imanı boğar');">nasıl böyle bir imanı boğar</a><br/>
<a href="" onclick="DoSubmit('muayene odasının kapısı açılır');">muayene odasının kapısı açılır</a><br/>






    </s:layout-component>
</s:layout-render>