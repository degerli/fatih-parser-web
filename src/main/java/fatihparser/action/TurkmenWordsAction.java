/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package fatihparser.action;

import net.sourceforge.stripes.action.ActionBeanContext;
import net.sourceforge.stripes.action.DefaultHandler;
import net.sourceforge.stripes.action.ForwardResolution;
import net.sourceforge.stripes.action.Resolution;

/**
 *
 * @author hrzafer
 */
public class TurkmenWordsAction extends BaseActionBean{
    private ActionBeanContext ctx;
    @Override
    public ActionBeanContext getContext() { return ctx; }
    @Override
    public void setContext(ActionBeanContext ctx) { this.ctx = ctx; }

    @DefaultHandler
    public Resolution currentDate() {
        return new ForwardResolution(VIEW);
    }

    private static final String VIEW = "/WEB-INF/jsp/turkmen_words.jsp";
}
