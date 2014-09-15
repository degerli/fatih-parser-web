/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package fatihparser.action;

import com.hrzafer.fatihparser.BracketedTree;
import com.hrzafer.fatihparser.Language;
import com.hrzafer.fatihparser.ParsedSentence;
import com.hrzafer.fatihparser.Parser;
import com.hrzafer.fatihparser.ParserFactory;
import com.hrzafer.fatihparser.analyzer.WordNotAnalyzedException;
import com.hrzafer.fatihparser.format.ParseDetail;
import com.hrzafer.fatihparser.format.ParseLanguage;
import fatihparser.ext.ParseDetailTypeConverter;
import fatihparser.ext.ParseLanguageTypeConverter;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import net.sourceforge.stripes.action.DefaultHandler;
import net.sourceforge.stripes.action.ForwardResolution;
import net.sourceforge.stripes.action.Resolution;
import net.sourceforge.stripes.validation.Validate;

/**
 *
 * @author test
 */
public class ParseAction extends BaseActionBean {

    private String message = "";

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
    public String inputSentence = "";
    private List<ParsedSentence> parsedSentences = Collections.EMPTY_LIST;
    @Validate(converter = ParseDetailTypeConverter.class)
    private ParseDetail selectedDetail = ParseDetail.Level_0;

    public ParseDetail getSelectedDetail() {
        return selectedDetail;
    }

    public void setSelectedDetail(ParseDetail selectedDetail) {
        this.selectedDetail = selectedDetail;
    }
    private boolean debugMode;

    public boolean isDebugMode() {
        return debugMode;
    }

    public void setDebugMode(boolean debugMode) {
        this.debugMode = debugMode;
    }
    
    @Validate(converter = ParseLanguageTypeConverter.class)
    private ParseLanguage selectedLanguage;

    public ParseLanguage getSelectedLanguage() {
        return selectedLanguage;
    }

    public void setSelectedLanguage(ParseLanguage selectedLanguage) {
        this.selectedLanguage = selectedLanguage;
    }

    public void setParsedSentences(List<ParsedSentence> parsedSentences) {
        this.parsedSentences = parsedSentences;
    }

    public List<ParsedSentence> getParsedSentences() {
        if (!debugMode) {
            Iterator<ParsedSentence> parsedSentencesIterator = parsedSentences.iterator();
            while (parsedSentencesIterator.hasNext()) {
                ParsedSentence next = parsedSentencesIterator.next();
                Iterator<BracketedTree> iter = next.getTrees().iterator();
                while (iter.hasNext()) {
                    if (!iter.next().isValid()) {
                        iter.remove();
                    }
                }
                if (next.getTrees().isEmpty()) {
                    parsedSentencesIterator.remove();
                }
            }
        }
        return parsedSentences;
    }

    private void setDetailAndLanguageOfParsedSentences() {
        for (ParsedSentence parsedSentence : parsedSentences) {
            parsedSentence.setFormat(selectedDetail, selectedLanguage);
        }
    }
    
//    private int getStat(Language language){
//        String stat = IO.read(language.getMainDirectoryPath() + "/stat.txt");
//        return Integer.parseInt(stat);
//    }
//
//    private void setStat(Language language, int stat){
//        IO.write(Language.TR.getMainDirectoryPath() + "/stat.txt", Integer.toString(stat));
//    }
    
//    private void incrementStat(Language language){
//        int stat=getStat(language);
//        stat++;
//        setStat(language, stat);
//    }
//
    @DefaultHandler
    public Resolution parse() {
        if (inputSentence == null || inputSentence.isEmpty()) {
            return new ForwardResolution("/WEB-INF/jsp/parse.jsp");
        }

        //incrementStat(Language.TR);
        
        message = selectedLanguage.toString();
        Language language = Language.TR;
        Parser parser = ParserFactory.create(language);
        try {
            parsedSentences = parser.parse(inputSentence, "S");
            setDetailAndLanguageOfParsedSentences();
        } catch (WordNotAnalyzedException e) {
            message = "\"" + e.getWord()+ "\"" + "kelimesi çözümlenemedi";
        }

        return new ForwardResolution("/WEB-INF/jsp/parse.jsp");
    }
    
    public Resolution parseTurkmen(){
        if (inputSentence == null || inputSentence.isEmpty()) {
            return new ForwardResolution("/WEB-INF/jsp/parse_turkmen.jsp");
        }
        message = selectedLanguage.toString();
        Language language = Language.TK;
        Parser parser = ParserFactory.create(language);
        try {
            parsedSentences = parser.parse(inputSentence, "S");
            setDetailAndLanguageOfParsedSentences();
        } catch (WordNotAnalyzedException e) {
            message = "\"" + e.getWord()+ "\"" + "kelimesi çözümlenemedi";
        }        
        return new ForwardResolution("/WEB-INF/jsp/parse_turkmen.jsp");
    }
}
