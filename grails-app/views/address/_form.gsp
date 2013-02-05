<%@ page import="offersharing.Address" %>



<div class="fieldcontain ${hasErrors(bean: addressInstance, field: 'addr2', 'error')} ">
	<label for="addr2">
		<g:message code="address.addr2.label" default="Addr2" />
		
	</label>
	<g:textField name="addr2" value="${addressInstance?.addr2}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: addressInstance, field: 'addr1', 'error')} ">
	<label for="addr1">
		<g:message code="address.addr1.label" default="Addr1" />
		
	</label>
	<g:textField name="addr1" value="${addressInstance?.addr1}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: addressInstance, field: 'city', 'error')} ">
	<label for="city">
		<g:message code="address.city.label" default="City" />
		
	</label>
	<g:textField name="city" value="${addressInstance?.city}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: addressInstance, field: 'state', 'error')} ">
	<label for="state">
		<g:message code="address.state.label" default="State" />
		
	</label>
	<g:textField name="state" value="${addressInstance?.state}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: addressInstance, field: 'zip', 'error')} ">
	<label for="zip">
		<g:message code="address.zip.label" default="Zip" />
		
	</label>
	<g:textField name="zip" value="${addressInstance?.zip}"/>
</div>

