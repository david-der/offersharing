<%@ page import="offersharing.Offer" %>



<div class="fieldcontain ${hasErrors(bean: offerInstance, field: 'bkgrImage', 'error')} required">
	<label for="bkgrImage">
		<g:message code="offer.bkgrImage.label" default="Bkgr Image" />
		<span class="required-indicator">*</span>
	</label>
	<input type="file" id="bkgrImage" name="bkgrImage" />
</div>

<div class="fieldcontain ${hasErrors(bean: offerInstance, field: 'blastImage', 'error')} required">
	<label for="blastImage">
		<g:message code="offer.blastImage.label" default="Blast Image" />
		<span class="required-indicator">*</span>
	</label>
	<input type="file" id="blastImage" name="blastImage" />
</div>

<div class="fieldcontain ${hasErrors(bean: offerInstance, field: 'blastMessage', 'error')} ">
	<label for="blastMessage">
		<g:message code="offer.blastMessage.label" default="Blast Message" />
		
	</label>
	<g:textField name="blastMessage" value="${offerInstance?.blastMessage}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: offerInstance, field: 'headerText', 'error')} ">
	<label for="headerText">
		<g:message code="offer.headerText.label" default="Header Text" />
		
	</label>
	<g:textField name="headerText" value="${offerInstance?.headerText}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: offerInstance, field: 'hex1', 'error')} ">
	<label for="hex1">
		<g:message code="offer.hex1.label" default="Hex1" />
		
	</label>
	<g:textField name="hex1" value="${offerInstance?.hex1}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: offerInstance, field: 'hex2', 'error')} ">
	<label for="hex2">
		<g:message code="offer.hex2.label" default="Hex2" />
		
	</label>
	<g:textField name="hex2" value="${offerInstance?.hex2}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: offerInstance, field: 'logoHt', 'error')} required">
	<label for="logoHt">
		<g:message code="offer.logoHt.label" default="Logo Ht" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="logoHt" type="number" value="${offerInstance.logoHt}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: offerInstance, field: 'logoImage', 'error')} required">
	<label for="logoImage">
		<g:message code="offer.logoImage.label" default="Logo Image" />
		<span class="required-indicator">*</span>
	</label>
	<input type="file" id="logoImage" name="logoImage" />
</div>

<div class="fieldcontain ${hasErrors(bean: offerInstance, field: 'logoWd', 'error')} required">
	<label for="logoWd">
		<g:message code="offer.logoWd.label" default="Logo Wd" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="logoWd" type="number" value="${offerInstance.logoWd}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: offerInstance, field: 'offerUrl', 'error')} ">
	<label for="offerUrl">
		<g:message code="offer.offerUrl.label" default="Offer Url" />
		
	</label>
	<g:textField name="offerUrl" value="${offerInstance?.offerUrl}"/>
</div>

