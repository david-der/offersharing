
<%@ page import="offersharing.Account" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'account.label', default: 'Account')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-account" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-account" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list account">
			
				<g:if test="${accountInstance?.lastPaymentDate}">
				<li class="fieldcontain">
					<span id="lastPaymentDate-label" class="property-label"><g:message code="account.lastPaymentDate.label" default="Last Payment Date" /></span>
					
						<span class="property-value" aria-labelledby="lastPaymentDate-label"><g:formatDate date="${accountInstance?.lastPaymentDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${accountInstance?.nextPaymentDate}">
				<li class="fieldcontain">
					<span id="nextPaymentDate-label" class="property-label"><g:message code="account.nextPaymentDate.label" default="Next Payment Date" /></span>
					
						<span class="property-value" aria-labelledby="nextPaymentDate-label"><g:formatDate date="${accountInstance?.nextPaymentDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${accountInstance?.ccNumber}">
				<li class="fieldcontain">
					<span id="ccNumber-label" class="property-label"><g:message code="account.ccNumber.label" default="Cc Number" /></span>
					
						<span class="property-value" aria-labelledby="ccNumber-label"><g:fieldValue bean="${accountInstance}" field="ccNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${accountInstance?.expMonth}">
				<li class="fieldcontain">
					<span id="expMonth-label" class="property-label"><g:message code="account.expMonth.label" default="Exp Month" /></span>
					
						<span class="property-value" aria-labelledby="expMonth-label"><g:fieldValue bean="${accountInstance}" field="expMonth"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${accountInstance?.expYear}">
				<li class="fieldcontain">
					<span id="expYear-label" class="property-label"><g:message code="account.expYear.label" default="Exp Year" /></span>
					
						<span class="property-value" aria-labelledby="expYear-label"><g:fieldValue bean="${accountInstance}" field="expYear"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${accountInstance?.expirationDate}">
				<li class="fieldcontain">
					<span id="expirationDate-label" class="property-label"><g:message code="account.expirationDate.label" default="Expiration Date" /></span>
					
						<span class="property-value" aria-labelledby="expirationDate-label"><g:formatDate date="${accountInstance?.expirationDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${accountInstance?.memberSinceDate}">
				<li class="fieldcontain">
					<span id="memberSinceDate-label" class="property-label"><g:message code="account.memberSinceDate.label" default="Member Since Date" /></span>
					
						<span class="property-value" aria-labelledby="memberSinceDate-label"><g:formatDate date="${accountInstance?.memberSinceDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${accountInstance?.nextPaymentBalance}">
				<li class="fieldcontain">
					<span id="nextPaymentBalance-label" class="property-label"><g:message code="account.nextPaymentBalance.label" default="Next Payment Balance" /></span>
					
						<span class="property-value" aria-labelledby="nextPaymentBalance-label"><g:fieldValue bean="${accountInstance}" field="nextPaymentBalance"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${accountInstance?.offersAllowed}">
				<li class="fieldcontain">
					<span id="offersAllowed-label" class="property-label"><g:message code="account.offersAllowed.label" default="Offers Allowed" /></span>
					
						<span class="property-value" aria-labelledby="offersAllowed-label"><g:fieldValue bean="${accountInstance}" field="offersAllowed"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${accountInstance?.secCode}">
				<li class="fieldcontain">
					<span id="secCode-label" class="property-label"><g:message code="account.secCode.label" default="Sec Code" /></span>
					
						<span class="property-value" aria-labelledby="secCode-label"><g:fieldValue bean="${accountInstance}" field="secCode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${accountInstance?.subscriptionPerMonth}">
				<li class="fieldcontain">
					<span id="subscriptionPerMonth-label" class="property-label"><g:message code="account.subscriptionPerMonth.label" default="Subscription Per Month" /></span>
					
						<span class="property-value" aria-labelledby="subscriptionPerMonth-label"><g:fieldValue bean="${accountInstance}" field="subscriptionPerMonth"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${accountInstance?.totalBalance}">
				<li class="fieldcontain">
					<span id="totalBalance-label" class="property-label"><g:message code="account.totalBalance.label" default="Total Balance" /></span>
					
						<span class="property-value" aria-labelledby="totalBalance-label"><g:fieldValue bean="${accountInstance}" field="totalBalance"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${accountInstance?.id}" />
					<g:link class="edit" action="edit" id="${accountInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
