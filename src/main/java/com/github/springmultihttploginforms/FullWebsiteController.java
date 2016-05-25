package com.github.springmultihttploginforms;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import java.security.Principal;

@Controller
@RequestMapping("/")
public class FullWebsiteController {


    @RequestMapping(method = RequestMethod.GET)
    public String noRestrictionsPageDefault(HttpServletRequest request, ModelMap modelMap) {
        addUsername(request);
        return "home-page";
    }

    @RequestMapping(value = "/home", method = RequestMethod.GET)
    public String noRestrictionsPage(HttpServletRequest request, ModelMap modelMap) {
        addUsername(request);
        return "home-page";
    }

    /* Member start*/
    @RequestMapping(value = "/member/home", method = RequestMethod.GET)
    public String memberPage(HttpServletRequest request, ModelMap modelMap) {
        addUsername(request);
        return "member/member-page";
    }

    @RequestMapping(value = "/member/account", method = RequestMethod.GET)
    public String memberAccountPage(HttpServletRequest request, ModelMap modelMap) {
        addUsername(request);
        return "member/member-account-page";
    }

    @RequestMapping(value = "/member/orders", method = RequestMethod.GET)
    public String memberOrderstPage(HttpServletRequest request, ModelMap modelMap) {
        addUsername(request);
        return "member/member-order-page";
    }

    @RequestMapping(value = "/member-login", method = RequestMethod.GET)
    public String memberLoginPage(HttpServletRequest request, ModelMap modelMap) {
        addUsername(request);
        return "login-forms/member-login-page";
    }
   /* Member end*/


    /* Admin start */
    @RequestMapping(value = "/admin/home", method = RequestMethod.GET)
    public String adminPage(HttpServletRequest request, ModelMap modelMap) {
        addUsername(request);
        return "admin/admin-page";
    }

    @RequestMapping(value = "/admin/users", method = RequestMethod.GET)
    public String adminUsersPage(HttpServletRequest request, ModelMap modelMap) {
        addUsername(request);
        return "admin/admin-users-page";
    }

    @RequestMapping(value = "/admin-login", method = RequestMethod.GET)
    public String adminLoginPage(HttpServletRequest request, ModelMap modelMap) {
        addUsername(request);
        return "login-forms/admin-login-page";
    }
    /* Admin end */

    private void addUsername(HttpServletRequest request){
        Principal principal = request.getUserPrincipal();
        if(principal != null){
            request.setAttribute("username", principal.getName());
        }
    }
}
