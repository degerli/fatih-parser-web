/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package fatihparser.ext;


import java.util.Collection;
import java.util.Locale;

import com.hrzafer.fatihparser.format.ParseLanguage;
import net.sourceforge.stripes.validation.TypeConverter;
import net.sourceforge.stripes.validation.ValidationError;

/**
 *
 * @author test
 */
public class ParseLanguageTypeConverter implements TypeConverter<ParseLanguage> {

    public ParseLanguage convert(String input, Class<? extends ParseLanguage> targetType, Collection<ValidationError> errors) {
        if (input.equals("english")) {
            return ParseLanguage.English;
        }
        return ParseLanguage.Turkish;
    }

    public void setLocale(Locale locale) {
    }
}
