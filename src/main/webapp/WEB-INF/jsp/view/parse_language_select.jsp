<jsp:useBean class="fatihparser.view.ParseLanguagesViewHelper" id="languageViewHelper"/>
  <s:select name="selectedLanguage">
    <s:option value="">Select a folder...</s:option>
    <s:options-collection collection="${languageViewHelper.languages}"/>
  </s:select>


