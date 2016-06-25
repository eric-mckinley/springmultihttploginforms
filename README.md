# springmultihttploginforms

Since spring security 3.2 the spring security context xml allows for multiple http elements, and multiple lgoin forms.
This application uses request-matcher 'ant' to split the requests to different login forms.

Simple spring webapp that has two different login forms depending on the area been accessed.

App consists of fake Admin area which is accessed via the admin login form page.
App also has a fake members area which when accessed the user is brought to a member specific login form page.

Use the runJetty command to build and start the jetty server with the built war. 

Server starts on default port `8080` but can be edited in the bash/bat file.

Access the application via `http://localhost:8080`

Username: member
Password: password
Roles:    ROLE_MEMBER

Username: admin
Password: password
Roles:    ROLE_ADMIN

Username: super
Password: password
Roles:    ROLE_MEMBER, ROLE_ADMIN

```xml
<beans:beans xmlns="http://www.springframework.org/schema/security"
             xmlns:beans="http://www.springframework.org/schema/beans"
             xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
             xsi:schemaLocation="http://www.springframework.org/schema/beans
                    http://www.springframework.org/schema/beans/spring-beans-3.0.xsd
                    http://www.springframework.org/schema/security
                    http://www.springframework.org/schema/security/spring-security.xsd">

    <global-method-security secured-annotations="enabled" />

    <http name="member" pattern="/member/*" request-matcher="ant"   auto-config="true" use-expressions="false">
        <csrf disabled="true"/>

        <intercept-url pattern="/member/home" access="ROLE_MEMBER" />
        <intercept-url pattern="/member/account" access="ROLE_MEMBER" />
        <intercept-url pattern="/member/orders" access="ROLE_MEMBER" />

        <form-login login-page="/member-login" always-use-default-target="false"/>
        <logout logout-url="/logout" logout-success-url="/home"/>
    </http>

    <http name="admin" request-matcher="regex"   auto-config="true" use-expressions="false">
        <csrf disabled="true"/>

        <intercept-url pattern="/admin/home" access="ROLE_ADMIN" />
        <intercept-url pattern="/admin/users" access="ROLE_ADMIN" />

        <form-login login-page="/admin-login" always-use-default-target="false"/>
        <logout logout-url="/logout" logout-success-url="/home"/>
    </http>

    <authentication-manager>
        <authentication-provider>
            <user-service>
                <user name="admin" password="password" authorities="ROLE_ADMIN" />
                <user name="member" password="password" authorities="ROLE_MEMBER" />
                <user name="super" password="password" authorities="ROLE_ADMIN,ROLE_MEMBER" />
            </user-service>
        </authentication-provider>
    </authentication-manager>

</beans:beans>
```
