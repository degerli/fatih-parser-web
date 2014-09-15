<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/jsp/common/taglibs.jsp"%>
<s:layout-render name="/WEB-INF/jsp/common/layout_main.jsp" title="Hakkında" about="selected">
    <s:layout-component name="body">
        
        <p> <a href="#01">FatihParser nedir?</a> </p>
        <p> <a href="#02">FatihParser cümleleri hangi bileşenlere göre çözümler?</a>  </p>
        <p> <a href="#03">FatihParser nasıl çalışır?</a>  </p>
        <p> <a href="#04">Türkmenceden Bazı Örnekler</a>  </p>
        <p> <a href="#05">FatihParser projesi nasıl ortaya çıktı ve gelecek için neler planlanıyor?</a>  </p>
        <p> <a href="#06">FatihParser kaynak kodlarına erişmem mümkün mü?</a>  </p>
        
        
        <a name="01"/>
        <h3>FatihParser nedir?</h3>
        <p>FatihParser Türkçe ve diğer Türkî diller için tasarlanmış bir 
        sözdizimsel çözümleyidir. Yani cümleyi sözdizimsel bileşenlerine ayıran
        bir araçtır. Bu bileşenler ögeler, unsurlar, kelime grupları ve 
        kelimelerdir. FatihParser dilbilimcilerin daha aşina oldukları bir ifade ile 
        “cümle tahlili” yapan bir yazılımdır.</p>
        
        <a name="02"/>
        <h3>FatihParser cümleleri hangi bileşenlere göre çözümler?</h3>
        <p> FatihParser cümleleri şu bileşenlere göre çözümler:</p>
        
        <p>
        <b>Ögeler:</b> Özne, yüklem, belirtili nesne, belirtisiz nesne, tümleç, zarf, cümle dışı öge<br/>
        <b>Unsurlar:</b> isim unsuru, sıfat unsuru, zarf unsuru, fiil unsuru vs.<br/>
        <b>Kelime Grupları:</b> isim tamlaması, sıfat tamlaması, isim-fiil grubu, sıfat-fiil grubu, bileşik fiil vs.<br/>
        <b>Kelimeler:</b> isim, fiil, sıfat, ek fiil, zamir, bağlaç vs.<br/>
        </p>
       
        <p>Büyük oranda <b>Leyla Karahan</b>'ın <b>Türkçede Söz Dizimi</b> isimli kitabındaki tahlil 
        metodu temel alınmıştır. </p>
    
        <a name="03"/>
        <h3>FatihParser nasıl çalışır?</h3>
        
        <p> Sistemin çalışma mantığını anlamak adına “Ben bu evde oturuyorum”
            cümlesinin çözümleniş aşamalarını inceleyelim:</p>
            
        <h4>1. Kelimelerin analizi</h4>
        <p>Öncelikle cümledeki her bir kelime mofolojik çözümleyici (Türkçe 
        için <a href="http://code.google.com/p/zemberek/">Zemberek 2</a> kullanılmaktadır) 
        tarafından çözümlenir. Eğer bir kelimenin birden 
        fazla çözümü varsa, her bir çözüm için cümlenin yeni bir türevi 
        oluşturulur. Görüldüğü gibi “ben” kelimesinin biri zamir (1. Tekil 
        şahıs) diğeri isim (yüzdeki ben gibi) olan iki anlamı vardır. 
        Aynı şekilde “bu” kelimesinin de sıfat ve zamir olan iki ayrı anlamı
        (çözümü) vardır. Diğer kelimelerin ise yalnızca bir çözümü vardır. 
        Sonuç olarak 2x2x1x1 = 4 farklı türev aşağıdaki gibi oluşturulur.</p>

        
        <p>
        <b>1. Türev:</b><div id="code"> "ben/pron" "bu/pron" "ev/noun de/loc" "otur/verb uyor/tense um/1sg"</div><br/>
        <b>2. Türev:</b><div id="code"> "ben/pron" "bu/adj" "ev/noun de/loc" "otur/verb uyor/tense um/1sg"</div><br/>
        <b>3. Türev:</b><div id="code"> "ben/noun" "bu/pron" "ev/noun de/loc" "otur/verb uyor/tense um/1sg"</div><br/>
        <b>4. Türev:</b><div id="code"> "ben/noun" "bu/adj" "ev/noun de/loc" "otur/verb uyor/tense um/1sg"</div><br/>
        </p>
        
            
        <p>Sistem şimdilik doğru olan türevi seçme işini kullanıcıya bırakıyor. 
        Biz insanlar için 2. Türevin doğru olduğunu anlamak çok zor değil.
        Ancak bunu sisteme otomatik olarak yaptırabilmek için istatistiki 
        verilere ihtiyaç var ki bu verilerin hazırlanması ve sistemin 
        adaptasyonu bir sonraki versiyon için hedeflenmektedir.</p>
                
        <p>Kalan adımları doğru olan türev üzerinden incelemeye devam edelim.</p>
                
        <h4>2. Çözüm ağaçlarının oluşturulması</h4>

        <p>Bağlamdan bağımsız kurallara göre (Context Free Grammar, CFG) cümlenin
        muhtemel tüm çözüm ağaçları (parse tree) döndürülür.</p>

        <p><div id="code">"ben/pron" "bu/adj" "ev/noun de/loc" "otur/verb uyor/tense um/1sg"</div></p>

        <p>Yukarıdaki türevin aşağıdaki gibi 2 farklı çözüm bulunuyor.</p>

        <p><b>Çözüm 1 :</b> Görüldüğü gibi ögeler özne-özne-tümleç-yüklem şeklindedir.</p>

        <img src="images/ben_bu_evde_oturuyorum_invalid.png" />

        <p><b>Çözüm 2 :</b> Ögeler özne-tümleç-yüklem şeklinde dizilmiştir.</p>
            
        <img src="images/ben_bu_evde_oturuyorum_valid.png" />
            
            
        <p>Bir cümlenin birden fazla çözümünün bulunmasına belirsizlik 
        (ambiguity) denir. Yukarıdaki çözümlerden birincisinin geçersiz 
        olduğu aşikardır. Zira bir cümlenin tek öznesi olur. O halde
        sistem neden böyle bir çözüm bulmuştur? Bu yazılan CFG kurallarının
        yapısı ile ilgili bir durumdur. Bilindiği gibi Türkçe cümlelerde
        ögeler kolayca yer değiştirebilmektedir. Bu yüzden CFG kurallarının
        tüm durumları kapsayıcı bir biçimde yazılması gerekir. 
        Örneğin aşağıdaki iki kural öznenin cümlenin her yerinde bulunabilmesine 
        olanak sağlar.</p>

        <p>
            <div id="code">
                SS -> Sub SS    <br>
                SS -> SS Sub
            </div>
        </p>

        <p>Ancak bu esneklik yukarıdaki gibi bazı dezavantajları da 
        beraberinde getirir. Zira kurallar cümle içerisinde birden
        fazla özne olmasında da müsaade eder. Bu dezavantaj ise 
        üçüncü bir adım olan geçerlilik denetimi ile giderilir.
        </p>

        
       <h4>3. Geçerlilik denetimi</h4>

       <p>Bu son aşamada bulunan her çözümün belirlenmiş geçerlilik 
       kurallarına uygunluğu kontrol edilir. Bir cümlede birden fazla 
       özne bulunamayacağı kural dosyasında tanımlı olduğundan birinci 
       çözüm elenir. Ve geriye yalnızca aşağıdaki çözüm kalıyor.</p>
               
       <img src="images/ben_bu_evde_oturuyorum_valid.png"/>

       <p>Çözüm ağaçları daha az detay içerecek şekilde de üretilebilir.</p>

       <p>Sadece kelime grupları ve ögelerin gösterildiği ağacın çizimi:</p>

       <img src="images/valid_unsurlar_ve_birimler_haric.png" />

       <p>Sadece ögelerin gösterildiği ağacın çizimi:</p>

       <img src="images/valid_sadece_ogeler.png" />

       <br/>
       <br/>
       
       <a name="04"/>
       <h3>Türkmenceden Bazı Örnekler</h3>
       
       <p><b>Cümle:</b> yağtı dünyäämize yañadaan geldim (aydınlık dünyamıza yeniden geldim)</p>
       
       <b>Morfolojik Çözüm:</b> <br/>
       <div id="code"> "yağtı/adj" "dünyää/noun miz/p1p e/dat" "yañadaan/adv" "gel/verb di/tense m/1sg" </div>
       
       <img src="images/turkmen_ornek01.png"/>
       
       <p><b>Cümle:</b> bu obada yaşulı yok (bu köyde yaşlı yok)</p>
       
       <b>Morfolojik Çözüm:</b> <br/>
       <div id="code">  "bu/adj" "oba/noun da/loc" "yaşulı/adj" "yok/pre" </div>
       
       <img src="images/turkmen_ornek02.png"/>
       
       <p><b>Cümle:</b> bilbil ovazını övyää şahırlar (bülbül sesini övüyor şairler) </p>
       
       <b>Morfolojik Çözüm:</b> <br/>
       <div id="code">  "bilbil/noun" "ovaz/noun ı/p3s nı/acc" "öv/verb yää/tense" "şahır/noun lar/plu" </div>
       
       <img src="images/turkmen_ornek02.png"/>
       
       <br/>
       <br/>
       <br/>
       
       <a name="05"/>
       <h3>FatihParser projesi nasıl ortaya çıktı ve gelecek için neler planlanıyor?</h3>
           
       <p>Bir yüksek Lisans 
       <a href="https://www.dropbox.com/s/yxcw35pt2vd48gt/A%20Generic%20Syntactic%20Parser%20for%20Turkic%20Languages.pdf?dl=0">tez çalışması</a>
       olarak başlayan FatihParser projesi,
       Türkî diller için genel bir sözdizimsel çözümleyici geliştirmek hefedi ile 
       başladı. Bir süre sonra <a href="http://arge.fatih.edu.tr/">Fatih 
       Üniversitesi Bilimsel Araştırma Projeleri Fonu</a> tarafından 
       desteklenmeye başlanan proje halen fonun desteği ile geliştirilmeye 
       devam etmektedir.</p>
       
       <p>Projenin öncelikli hedefi tamamen kural tabanlı çalışan sistemin
       zamanla istatistiksel verileri de kullanabilmesidir. Böylelikle 
       cümleler için çok daha az sayıda ve isabetli çözümler (tahliller) bulunabilecektir.      
       </p>

        <a name="06"/>
        <h3>FatihParser kaynak kodlarına erişmem mümkün mü?</h3>

        <p>FatihParser projesi Eylül-2014 itibariyle açık kaynak olmuştur. Kaynak kodlara <a href="https://github.com/hrzafer/fatih-parser">GitHub üzerinden</a> erişilebilir.</p>
       
    </s:layout-component>
</s:layout-render>