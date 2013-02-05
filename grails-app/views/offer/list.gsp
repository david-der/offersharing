
<%@ page import="offersharing.Offer" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'offer.label', default: 'Offer')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-offer" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-offer" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="bkgrImage" title="${message(code: 'offer.bkgrImage.label', default: 'Bkgr Image')}" />
					
						<g:sortableColumn property="blastImage" title="${message(code: 'offer.blastImage.label', default: 'Blast Image')}" />
					
						<g:sortableColumn property="blastMessage" title="${message(code: 'offer.blastMessage.label', default: 'Blast Message')}" />
					
						<g:sortableColumn property="headerText" title="${message(code: 'offer.headerText.label', default: 'Header Text')}" />
					
						<g:sortableColumn property="hex1" title="${message(code: 'offer.hex1.label', default: 'Hex1')}" />
					
						<g:sortableColumn property="hex2" title="${message(code: 'offer.hex2.label', default: 'Hex2')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${offerInstanceList}" status="i" var="offerInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${offerInstance.id}">${fieldValue(bean: offerInstance, field: "bkgrImage")}</g:link></td>
					
						<td>${fieldValue(bean: offerInstance, field: "blastImage")}</td>
					
						<td>${fieldValue(bean: offerInstance, field: "blastMessage")}</td>
					
						<td>${fieldValue(bean: offerInstance, field: "headerText")}</td>
					
						<td>${fieldValue(bean: offerInstance, field: "hex1")}</td>
					
						<td>${fieldValue(bean: offerInstance, field: "hex2")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${offerInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
