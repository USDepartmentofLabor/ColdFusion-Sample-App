<cfscript> 
objSDK = CreateObject("component", "gov.dol.govAPISDK.SDK");
</cfscript>

<html>
<head>
	<style>
	td {
	border: 1px solid black;
	}
	</style>
</head>

<body>

	<!--- get your key at http://developer.dol.gov --->
	<cfset objSDK.API_KEY = "2bc4aa85-4d4e-4e33-820e-5ddbc7a1c237">
	<cfset objSDK.API_HOST = "http://api.dol.gov">
	<cfset objSDK.API_URL = "/V1">
	<cfset API_METHOD = "DOLAgency/Agencies">

	<cfscript>myAPICall = objSDK.submitRequest(API_METHOD);</cfscript><br>

	<table>
		<tr>
			<th>Agency</th>
			<th>Full Name</th>
			<th>Web Site</th>
			<th>Mission Page</th>
			<th>Organizational Page</th>
			<th>Key Personnel Page</th>
		</tr>
		<cfloop index="agencyItem" array="#myAPICall.d.results#">
			<cfoutput><tr>
				<td>#agencyItem.Agency#</td>
				<td>#agencyItem.AgencyFullName#</td>
				<td>#agencyItem.WebsiteURL#</td>
				<td>#agencyItem.MissionURL#</td>
				<td>#agencyItem.OrganizationalURL#</td>
				<td>#agencyItem.KeyPersonnelURL#</td>
			<tr></cfoutput>
		</cfloop>
	</table>
</body>
</html>