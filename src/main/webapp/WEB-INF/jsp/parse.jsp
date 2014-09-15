<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/jsp/common/taglibs.jsp"%>
<s:layout-render name="/WEB-INF/jsp/common/layout_main.jsp" title="Fatih Parser 1.1 Beta" index="selected">
    <s:layout-component name="body">
        Cümleyi sonuna nokta (.) veya soru işareti (?) koymadan giriniz.
        <s:form beanclass="fatihparser.action.ParseAction">
            <table class="formtable">
                <tr><td>
                        <label>Cümle:</label>
                    </td>
                    <td>
                        <label><s:text name="inputSentence" class="inputtext" maxlength="200"/></label>
                    </td>
                </tr>
                <tr><td>
                        <label>Etiket Dili:</label> 
                    </td>
                    <td>
                        <s:select name="selectedLanguage">
                            <s:option value="turkish">Türkçe</s:option>
                            <s:option value="english">English</s:option>
                        </s:select>
                    </td>
                </tr>
                <tr><td>
                        <label>Detay Seviyesi:</label> 
                    </td>
                    <td>
                        <s:select name="selectedDetail">
                            <s:option value="level0">Tüm Detaylar</s:option>
                            <s:option value="level1">Unsurlar Hariç</s:option>
                            <s:option value="level2">Unsurlar ve Birimler Hariç</s:option>
                            <s:option value="level3">Ögeler ve Kelime Grupları Hariç</s:option>
                            <s:option value="level4">Sadece Ögeler</s:option>
                        </s:select>
                    </td>
                </tr>
                <tr><td>
                         <label>Debug Mode:</label>
                     </td>
                     <td>                   
                <s:checkbox name="debugMode" ></s:checkbox>
                    (Geçersiz çözümleri ve çözümü olmayan türevleri de göster)
            </td>
        </tr>
                    <tr><td><s:submit name="parse" value="Çözümle" class="button"/> </td>                    
                </tr>
            </table>
        </s:form>

        <h3>Cümlenin ${fn:length(actionBean.parsedSentences)} farklı türevi bulundu:</h3>
        
        <p><strong>${actionBean.message}</strong></p>

        <c:forEach var="parsedSentence" items="${actionBean.parsedSentences}" varStatus="i">            
            <h3>${i.index+1}. türev için ${fn:length(parsedSentence.trees)} çözüm bulundu </h3>
            <table class="parsetable">
                <tr>
                    <th>${parsedSentence.sentence}</th>
                    <th>Geçerli mi?</th>
                    <th>Ağacı çiz</th>
                </tr>
                <c:forEach var="tree" items="${parsedSentence.trees}" varStatus="j">
                    
                    <tr>
                        <td>${tree.formattedString}</td>
                        <td><c:choose>
                                <c:when test="${tree.valid}">Evet</c:when>
                                <c:otherwise>${tree.invalidatorDescription}</c:otherwise>
                            </c:choose></td>
                        <td>
                            <form target="_blank" id="phraseform${i.index}${j.index}" action="http://ironcreek.net/phpsyntaxtree/?" method="post" accept-charset="ISO-8859-1">
                                <!-- <textarea id="data" type ="hidden" name="data" cols="70" rows="4">[S [NP phpSyntaxTree][VP [V creates][NP nice syntax trees]]]</textarea> -->                                
                                <input type="hidden" id="data" name="data" value="${tree.formattedString}"/>
                                <input type="hidden" name="opencount"/>
                                <input type="hidden" name="closedcount"/>
                                <input type="hidden" name="font" value="lsansuni"/>
                                <input type="hidden" name="fontsize" value="12"/>
                                <input type="checkbox" name="color" checked="checked" style="visibility:hidden;"/>
                                <input type="checkbox" name="antialias" checked="checked" style="visibility:hidden;"/>
                                <input type="checkbox" name="autosub"   checked="checked" style="visibility:hidden;"/>
                                <input type="checkbox" name="triangles" checked="checked" style="visibility:hidden;"/>
                                <!-- <button name="drawbtn" type="submit"> Draw </button> -->
                            </form>
                                
                            <a href="" target="_blank" onclick="document.getElementById('phraseform${i.index}${j.index}').submit(); return false;">Ağacı Çiz</a> </td>
                    </tr>
                    
                </c:forEach>
            </table>
            <br/>
        </c:forEach>           

    </s:layout-component>
</s:layout-render>