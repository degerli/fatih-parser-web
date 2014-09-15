<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/jsp/common/taglibs.jsp"%>
<s:layout-render name="/WEB-INF/jsp/common/layout_main.jsp" title="El ile çözümlenmiş Türkmence kelimeler" turkmen_words="selected">
    <s:layout-component name="body">


        <p>Elimizde Türkmence için morfolojik kelime çözümleyicisi bulunmadığından sınırlı sayıda kelimeyi el ile çözümlemek durumunda kaldık. Sistem aşağıdaki kelimelerle kurulmuş cümleleri analiz edebilmektedir.</p>
        <p><strong>Zamirler</strong></p>
        <p>men             men/pron<br />
            sen             sen/pron<br />
            ol              ol/pron         ol/adj<br />
            o               o/pron          o/adj<br />
            biz             biz/pron<br />
            siz             siz/pron<br />
            olar            olar/pron<br />
            meniñ           men/pron+iñ/gen<br />
            seniñ           sen/pron+iñ/gen<br />
            onuñ            o/pron+nuñ/gen<br />
            biziñ           biz/pron+iñ/gen<br />
            siziñ           siz/pron+iñ/gen<br />
            olarıñ          olar/pron+ıñ/gen<br />
            meni            men/pron+i/acc<br />
            seni            sen/pron+i/acc<br />
            onı             o/pron+ı/acc<br />
            bizi            biz/pron+i/acc<br />
            sizi            siz/pron+i/acc<br />
            oları           olar/pron+ı/acc<br />
            maña            men/pron+a/dat<br />
            saña            sen/pron+a/dat<br />
            oña             o/pron+ña/dat<br />
            bize            biz/pron+e/dat<br />
            size            siz/pron+e/dat<br />
            olara           olar/pron+a/dat<br />
            mende           men/pron+de/loc<br />
            sende           sen/pron+de/loc<br />
            onda            o/pron+nda/loc<br />
            bizde           biz/pron+de/loc<br />
            sizde           siz/pron+de/loc<br />
            olarda          olar/pron+da/loc<br />
            menden          men/pron+den/abl<br />
            senden          sen/pron+den/abl<br />
            ondan           o/pron+ndan/abl<br />
            bizden          biz/pron+den/abl<br />
            sizden          siz/pron+den/abl<br />
            olardan         olar/pron+dan/abl</p>
        <p><strong>İşaret zamirleri</strong></p>
        <p><br />
            bu              bu/adj          bu/pron<br />
            şol             şol/adj         şol/pron<br />
            bular           bular/pron<br />
            şular           şular/pron</p>
        <p><strong> Fiil Çekimleri</strong></p>
        <p><br />
            # dönmek - bilinen geçmiş zaman<br />
            gaytdım	gayt/verb+dı/tense+m/1sg<br />
            gaytdıñ         gayt/verb+dı/tense+ñ/2sg<br />
            gaytdı          gayt/verb+dı/tense<br />
            gaytdık         gayt/verb+dı/tense+k/1pl<br />
            gaytdıñız       gayt/verb+dı/tense+ñız/2pl<br />
            gaytdılar       gayt/verb+dı/tense+lar/3pl</p>
        <p><br />
            # anlamak - bilinen geçmiş zaman<br />
            düşündim        düşün/verb+di/tense+m/1sg<br />
            düşündiñ        düşün/verb+di/tense+ñ/2sg<br />
            düşündi         düşün/verb+di/tense<br />
            düşündik        düşün/verb+di/tense+k/1pl<br />
            düşündiñiz      düşün/verb+di/tense+ñiz/2pl<br />
            düşündiler      düşün/verb+di/tense+ler/3pl</p>
        <p><br />
            #gitmek - öğrenilen geçmiş zaman<br />
            barıpdırın      bar/verb+ıpdır/tense+ın/1sg<br />
            barıpdırsıñ     bar/verb+ıpdır/tense+sıñ/2sg<br />
            barıpdır        bar/verb+ıpdır/tense<br />
            barıpdırıs      bar/verb+ıpdır/tense+ıs/1pl<br />
            barıpdırsıñız   bar/verb+ıpdır/tense+sıñız/2pl<br />
            barıpdırlar     bar/verb+ıpdır/tense+lar/3pl<br />
            geldim          gel/verb+di/tense+m/1sg<br />
            övyää           öv/verb+yää/tense</p>
        <p><strong> İsim ve Sıfat Tamlamaları için Çözümlemeler</strong><br />
            erkinliğiñ      erkinlik/noun+iñ/gen<br />
            aaşığı          aaşık/noun+ı/p3s<br />
            bääğüliñ        bääğül/noun+iñ/gen<br />
            açılışı         açılış/noun+ı/p3s<br />
            salkın          salkın/adj<br />
            saaya           saaya/noun<br />
            tolkunlı        tolkun/noun+lı/-lU<br />
            deñiz           deñiz/noun<br />
            çağa            çağa/noun<br />
            ayal            ayal/noun<br />
            söz             söz/noun<br />
            suv             suv/noun<br />
            suvum           suv/noun+um/p1s<br />
            kitap           kitap/noun<br />
            kitabım         kitap/noun+ım/p1s<br />
            iş              iş/noun<br />
            gız             gız/noun<br />
            yerim           yer/noun+im/p1s<br />
            göz             göz/noun<br />
            ot              ot/noun<br />
            yara            yara/noun<br />
            pulum           pul/noun+um/p1s<br />
            adam            adam/noun<br />
            dil             dil/noun<br />
            işe             iş/noun+e/dat<br />
            adamlar         adam/noun+lar/plu<br />
            nöker           nöker/noun<br />
            arılar          arı/noun+lar/plu<br />
            güllerden       gül/noun+ler/plu+den/abl<br />
            güllere         gül/noun+ler/plu+e/dat<br />
            başını          baş/noun+ın/p3s+ı/acc<br />
            yerden          yer/noun+den/abl<br />
            ay              ay/noun<br />
            parçası         parça/noun+sı/p3s<br />
            palavdan        palav/noun+dan/abl<br />
            säher           säher/noun<br />
            çağına          çağ/noun+ı/p3s+na/dat<br />
            it              it/noun<br />
            azatlık         azatlık/noun<br />
            ölüm            ölüm/noun<br />
            çalasın         çalasın/adj<br />
            edenli          edenli/adj<br />
            goñşı           goñşı/noun<br />
            dost            dost/noun<br />
            halkını         halk/noun+ı/p3s+nı/acc<br />
            özüni           öz/noun+ü/p3s+ni/acc<br />
            ene             ene/noun<br />
            ata             ata/noun<br />
            doğan           doğan/noun<br />
            gözler          göz/noun+ler/plu<br />
            oğlanlar        oğlan/noun+lar/plu<br />
            aşık            aşık/noun<br />
            arzuv           arzuv/noun<br />
            ayan            ayan/noun<br />
            azap            azap/noun<br />
            yağtı           yağtı/adj<br />
            dünyäämize      dünyää/noun+miz/p1p+e/dat<br />
            yañadaan        yañadaan/adv<br />
            obada           oba/noun+da/loc<br />
            yaşulı          yaşulı/adj<br />
            yok             yok/pre<br />
            bilbil          bilbil/noun<br />
            ovazını         ovaz/noun+ı/p3s+nı/acc<br />
            şahırlar        şahır/noun+lar/plu</p>
        <p><strong> Sıfat Fiiller</strong><br />
            gülen           gül/verb+en/-An<br />
            ağlan           ağla/verb+n/-An<br />
            aydılmadık      aydıl/verb+madık/-mAdIk<br />
            içen            iç/verb+en/-An<br />
            okamadık        oka/verb+madık/-mAdIk<br />
            görmedik        gör/verb+medik/-mAdIk<br />
            gülyään         gül/verb+yään/-yAAn<br />
            geplemeyään     geple/verb+me/neg+yään/-yAAn<br />
            gidyään         gid/verb+yään/-yAAn<br />
            akar            ak/verb+ar/-Ar<br />
            görer           gör/verb+er/-Ar<br />
            öçmez           öç/verb+mez/-mAz<br />
            bitmez          bit/verb+mez/-mAz<br />
            bilmez          bil/verb+mez/-mAz<br />
            yazılcak        yaz/verb+ıl/psv+cak/-cAk<br />
            işlencek        işle/verb+ncek/-cAk<br />
            geçcek          geç/verb+cek/-cAk<br />
            uklamacak       ukla/verb+ma/neg+cak/-cAk<br />
            bercek          ber/verb+cek/-cAk<br />
            baraağada       bar/verb+aağada/-AAğAdA<br />
            gelääğede       gel/verb+ääğede/-AAğAdA<br />
            alanda          al/verb+anda/-AndA<br />
            diyende         de/verb+ende/-AndA<br />
            gelenimde       gel/verb+en/-An+im/1sg+de/-dA<br />
            baranıñda       bar/verb+an/-An+ıñ/2sg+da/-dA<br />
            barıp           bar/verb+ıp/-Up<br />
            gonup           gon/verb+up/-Up<br />
            başlap          başla/verb+p/-Up<br />
            okap            oka/verb+p/-Up<br />
            däälkää         dääl/verb+kää/-kAA<br />
            alyarkaañız     al/verb+yar/tense+kaa/-kAA+ñız/2pl<br />
            bilmään         bil/verb+mään/-mAAn<br />
            yatmaan         yat/verb+maan/-mAAn<br />
            galdırmaan      galdır/verb+maan/-mAAn<br />
        </p>
        <p><strong>Tekrar Grubu</strong><br />
            böreñ-böreñ     böreñ/bs+böreñ/rdp<br />
            bala-çağa       bala/bs+çağa/rdp<br />
            geyim-gecim     geyim/bs+gecim/rdp<br />
            barı-yoğı       barı/bs+yoğı/rdp<br />
        </p>
        <p><strong>Edatlar</strong><br />
            bakan           bakan/posp<br />
            başğa           başğa/posp<br />
            bilen           bilen/posp      bilen/conj<br />
            çen             çen/posp<br />
            dek             dek/posp<br />
            diyip           diyip/posp<br />
            öñ              öñ/posp<br />
            üçin            üçin/posp<br />
            yaalı           yaalı/posp<br />
            soñ             soñ/posp<br />
        </p>
        <p><strong>Bağlama grubu</strong><br />
            hem             hem/conj        hem/2conj       hem/conj2<br />
            ne              ne/conj2        ne/conj<br />
            yaa             yaa/conj        yaa/conj2<br />
        </p>
        <p><strong>Ünvanlar</strong><br />
            Ata                 ata/ttl<br />
            Ece                 ece/ttl<br />
            Bacı                bacı/ttl<br />
            Molla               molla/ttl<br />
            Ağa                 ağa/ttl<br />
            Han                 han/ttl</p>
        <p><strong>Şahıs İsimleri</strong><br />
            Adam                Adam/prop<br />
            Aylar               Aylar/prop<br />
            Baharğül            Baharğül/prop<br />
            Berdi               Berdi/prop<br />
            Mırat               Mırat/prop<br />
            Kasım               Kasım/prop<br />
            Nurbadov            Nurbadov/prop<br />
            Saparmırat          Saparmırat/prop<br />
            Karatayev           Karatayev/prop<br />
            Mayor               mayor/ttl           Mayor/prop<br />
            Atakov              Atakov/prop<br />
            Kömek               Kömek/prop</p>
        <p><strong>Ünlemler</strong><br />
            a                   a/intj<br />
            ah                  ah/intj<br />
            ey                  ey/intj<br />
            vah                 vah/intj<br />
        </p>
        <p><strong>Sayılar</strong><br />
            kaç                 kaç/adj                 kaç/verb<br />
            sıfır               bir/adj<br />
            bir                 bir/num                 bir/adj<br />
            iki                 iki/num                 iki/adj<br />
            üç                  üç/num                  üç/adj<br />
            dört                dört/num                dört/adj<br />
            bäş                 bäş/num                 bäş/adj<br />
            altı                altı/num                altı/adj<br />
            yedi                yedi/num                yedi/adj<br />
            sekiz               sekiz/num               sekiz/adj<br />
            dokuz               dokuz/num               dokuz/adj<br />
            on                  on/num                  on/adj<br />
            yiğrimi             yiğrimi/num             yiğrimi/adj<br />
            otuz                otuz/num                otuz/adj<br />
            kırk                kırk/num                kırk/adj<br />
            elli                elli/num                elli/adj<br />
            altmış              altmış/num              altmış/adj<br />
            yetmiş              yetmiş/num              yetmiş/adj<br />
            seksen              seksen/num              seksen/adj<br />
            toğsan              toğsan/num              toğsan/adj<br />
            yüz                 yüz/num                 yüz/adj<br />
            müñ                 müñ/num                 müñ/adj<br />
            million             million/num             million/adj<br />
        </p>
        <p><strong>Birleşik fiiller</strong><br />
            bol                 bol/verb       bol/auxv<br />
            eyle                eyle/verb      eyle/auxv<br />
            et                  et/verb        et/auxv<br />
            ber                 ber/verb       ber/auxv<br />
        </p>
        <p></p>





    </s:layout-component>
</s:layout-render>