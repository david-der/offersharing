
<%@ page import="offersharing.Offer" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'offer.label', default: 'Offer')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-offer" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-offer" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list offer">
			
				<g:if test="${offerInstance?.bkgrImage}">
				<li class="fieldcontain">
					<span id="bkgrImage-label" class="property-label"><g:message code="offer.bkgrImage.label" default="Bkgr Image" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${offerInstance?.blastImage}">
				<li class="fieldcontain">
					<span id="blastImage-label" class="property-label"><g:message code="offer.blastImage.label" default="Blast Image" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${offerInstance?.blastMessage}">
				<li class="fieldcontain">
					<span id="blastMessage-label" class="property-label"><g:message code="offer.blastMessage.label" default="Blast Message" /></span>
					
						<span class="property-value" aria-labelledby="blastMessage-label"><g:fieldValue bean="${offerInstance}" field="blastMessage"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${offerInstance?.headerText}">
				<li class="fieldcontain">
					<span id="headerText-label" class="property-label"><g:message code="offer.headerText.label" default="Header Text" /></span>
					
						<span class="property-value" aria-labelledby="headerText-label"><g:fieldValue bean="${offerInstance}" field="headerText"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${offerInstance?.hex1}">
				<li class="fieldcontain">
					<span id="hex1-label" class="property-label"><g:message code="offer.hex1.label" default="Hex1" /></span>
					
						<span class="property-value" aria-labelledby="hex1-label"><g:fieldValue bean="${offerInstance}" field="hex1"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${offerInstance?.hex2}">
				<li class="fieldcontain">
					<span id="hex2-label" class="property-label"><g:message code="offer.hex2.label" default="Hex2" /></span>
					
						<span class="property-value" aria-labelledby="hex2-label"><g:fieldValue bean="${offerInstance}" field="hex2"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${offerInstance?.logoHt}">
				<li class="fieldcontain">
					<span id="logoHt-label" class="property-label"><g:message code="offer.logoHt.label" default="Logo Ht" /></span>
					
						<span class="property-value" aria-labelledby="logoHt-label"><g:fieldValue bean="${offerInstance}" field="logoHt"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${offerInstance?.logoImage}">
				<li class="fieldcontain">
					<span id="logoImage-label" class="property-label"><g:message code="offer.logoImage.label" default="Logo Image" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${offerInstance?.logoWd}">
				<li class="fieldcontain">
					<span id="logoWd-label" class="property-label"><g:message code="offer.logoWd.label" default="Logo Wd" /></span>
					
						<span class="property-value" aria-labelledby="logoWd-label"><g:fieldValue bean="${offerInstance}" field="logoWd"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${offerInstance?.offerUrl}">
				<li class="fieldcontain">
					<span id="offerUrl-label" class="property-label"><g:message code="offer.offerUrl.label" default="Offer Url" /></span>
					
						<span class="property-value" aria-labelledby="offerUrl-label"><g:fieldValue bean="${offerInstance}" field="offerUrl"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${offerInstance?.id}" />
					<g:link class="edit" action="edit" id="${offerInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
