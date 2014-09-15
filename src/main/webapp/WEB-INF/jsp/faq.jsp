<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/jsp/common/taglibs.jsp"%>
<s:layout-render name="/WEB-INF/jsp/common/layout_main.jsp" title="Muhtemel Sorular" faq="selected">
    <s:layout-component name="body">
        
    
    <p><b>S:</b> FatihParser neden yalnızca Türkçe için çalışıyor?</p>
    <p><b>C:</b> FatihParser'ın her hangi bir Türkî dil ile çalışabilmesi için 2 ana gereksinimi vardır.
    Birincisi sözdizim kuralları gibi dile ait bilgileri içeren dil paketi. 
    Böyle bir paketi hazırlamak biraz araştırma ve gayretle mümkün. Nitekim sistem 
    Türkçe ile test edildikten sonra Türkmence için böyle bir paket hazırlanmıştır.</p>
    <p>İkinci gereksinim ise kelime çözümleyicidir. Türkçe için mevcut açık kaynak ve
    tatminkar düzeyde doğru çalışan bir çözümleyici (Zemberek 2) mevcuttur. Ancak diğer 
    Türkî diller için mevcut tek çalışma Dilmaç'tır. Dilmaç projesi kendi içinde iyi çalışan
    ve üzerinde çok emek sarf edilmiş bir proje ancak Zemberek gibi bir kütüphane (api) mantığında
    tasarlanmadığından sistemimizle adapte etmek şimdilik mümkün olmadı.</p>
    
    <p>Bu nedenle sınırlı sayıda Türkmence kelimeyi manuel olarak çözümleyerek sistemi Türkmence için de test 
    ettik.</p>
    
    <p><b>S:</b> FatihParser bilinen eksiklikleri nelerdir?</p>
    <p><b>C:</b> Hangi birini sayalım? Henüz ele alamadığı pek çok durum var.</p>
    
    </s:layout-component>
</s:layout-render>