<%@ page import="grails_demo.User" %>



<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="user.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="username" required="" value="${userInstance?.username}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="user.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="password" required="" value="${userInstance?.password}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'role', 'error')} required">
	<label for="role">
		<g:message code="user.role.label" default="Role" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="role" from="${userInstance.constraints.role.inList}" required="" value="${userInstance?.role}" valueMessagePrefix="user.role"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'emailAddress', 'error')} required">
	<label for="emailAddress">
		<g:message code="user.emailAddress.label" default="Email Address" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="emailAddress" required="" value="${userInstance?.emailAddress}"/>

</div>

