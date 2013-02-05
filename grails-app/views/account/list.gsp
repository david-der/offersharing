
<%@ page import="offersharing.Account" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'account.label', default: 'Account')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-account" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-account" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="lastPaymentDate" title="${message(code: 'account.lastPaymentDate.label', default: 'Last Payment Date')}" />
					
						<g:sortableColumn property="nextPaymentDate" title="${message(code: 'account.nextPaymentDate.label', default: 'Next Payment Date')}" />
					
						<g:sortableColumn property="ccNumber" title="${message(code: 'account.ccNumber.label', default: 'Cc Number')}" />
					
						<g:sortableColumn property="expMonth" title="${message(code: 'account.expMonth.label', default: 'Exp Month')}" />
					
						<g:sortableColumn property="expYear" title="${message(code: 'account.expYear.label', default: 'Exp Year')}" />
					
						<g:sortableColumn property="expirationDate" title="${message(code: 'account.expirationDate.label', default: 'Expiration Date')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${accountInstanceList}" status="i" var="accountInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${accountInstance.id}">${fieldValue(bean: accountInstance, field: "lastPaymentDate")}</g:link></td>
					
						<td><g:formatDate date="${accountInstance.nextPaymentDate}" /></td>
					
						<td>${fieldValue(bean: accountInstance, field: "ccNumber")}</td>
					
						<td>${fieldValue(bean: accountInstance, field: "expMonth")}</td>
					
						<td>${fieldValue(bean: accountInstance, field: "expYear")}</td>
					
						<td><g:formatDate date="${accountInstance.expirationDate}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${accountInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
