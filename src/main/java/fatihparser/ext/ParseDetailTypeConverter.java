/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package fatihparser.ext;


import com.hrzafer.fatihparser.format.ParseDetail;
import net.sourceforge.stripes.validation.TypeConverter;
import net.sourceforge.stripes.validation.ValidationError;

import java.util.Collection;
import java.util.Locale;

/**
 * @author test
 */
public class ParseDetailTypeConverter implements TypeConverter<ParseDetail> {

    public void setLocale(Locale locale) {

    }

    public ParseDetail convert(String input, Class<? extends ParseDetail> targetType, Collection<ValidationError> errors) {

        if (input.equals("level1")) {
            return ParseDetail.Level_1;
        } else if (input.equals("level2")) {
            return ParseDetail.Level_2;
        } else if (input.equals("level3")) {
            return ParseDetail.Level_3;
        } else if (input.equals("level4")) {
            return ParseDetail.Level_4;
        }
        return ParseDetail.Level_0;

    }

}
