/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package fatihparser.action;

import net.sourceforge.stripes.action.DefaultHandler;
import net.sourceforge.stripes.action.ForwardResolution;
import net.sourceforge.stripes.action.Resolution;

/**
 *
 * @author test
 */
public class DrawAction extends BaseActionBean{
    
    @DefaultHandler
    public Resolution parse() {
        return new ForwardResolution("/WEB-INF/jsp/view/draw_form_post.jsp");
    }
}
