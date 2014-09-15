/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package fatihparser.view;


import com.hrzafer.fatihparser.format.ParseLanguage;

import java.util.List;

/**
 *
 * @author test
 */
public class ParseLanguagesViewHelper {

    public List<ParseLanguage> getLanguages(){
        return ParseLanguage.getAllLanguages();
    }
}
