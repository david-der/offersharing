<%@ page import="offersharing.Account" %>



<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'lastPaymentDate', 'error')} ">
	<label for="lastPaymentDate">
		<g:message code="account.lastPaymentDate.label" default="Last Payment Date" />
		
	</label>
	<g:datePicker name="lastPaymentDate" precision="day"  value="${accountInstance?.lastPaymentDate}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'nextPaymentDate', 'error')} ">
	<label for="nextPaymentDate">
		<g:message code="account.nextPaymentDate.label" default="Next Payment Date" />
		
	</label>
	<g:datePicker name="nextPaymentDate" precision="day"  value="${accountInstance?.nextPaymentDate}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'ccNumber', 'error')} ">
	<label for="ccNumber">
		<g:message code="account.ccNumber.label" default="Cc Number" />
		
	</label>
	<g:textField name="ccNumber" value="${accountInstance?.ccNumber}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'expMonth', 'error')} required">
	<label for="expMonth">
		<g:message code="account.expMonth.label" default="Exp Month" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="expMonth" type="number" value="${accountInstance.expMonth}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'expYear', 'error')} required">
	<label for="expYear">
		<g:message code="account.expYear.label" default="Exp Year" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="expYear" type="number" value="${accountInstance.expYear}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'expirationDate', 'error')} required">
	<label for="expirationDate">
		<g:message code="account.expirationDate.label" default="Expiration Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="expirationDate" precision="day"  value="${accountInstance?.expirationDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'memberSinceDate', 'error')} required">
	<label for="memberSinceDate">
		<g:message code="account.memberSinceDate.label" default="Member Since Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="memberSinceDate" precision="day"  value="${accountInstance?.memberSinceDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'nextPaymentBalance', 'error')} required">
	<label for="nextPaymentBalance">
		<g:message code="account.nextPaymentBalance.label" default="Next Payment Balance" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="nextPaymentBalance" value="${fieldValue(bean: accountInstance, field: 'nextPaymentBalance')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'offersAllowed', 'error')} required">
	<label for="offersAllowed">
		<g:message code="account.offersAllowed.label" default="Offers Allowed" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="offersAllowed" type="number" value="${accountInstance.offersAllowed}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'secCode', 'error')} required">
	<label for="secCode">
		<g:message code="account.secCode.label" default="Sec Code" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="secCode" type="number" value="${accountInstance.secCode}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'subscriptionPerMonth', 'error')} required">
	<label for="subscriptionPerMonth">
		<g:message code="account.subscriptionPerMonth.label" default="Subscription Per Month" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="subscriptionPerMonth" value="${fieldValue(bean: accountInstance, field: 'subscriptionPerMonth')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'totalBalance', 'error')} required">
	<label for="totalBalance">
		<g:message code="account.totalBalance.label" default="Total Balance" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="totalBalance" value="${fieldValue(bean: accountInstance, field: 'totalBalance')}" required=""/>
</div>

