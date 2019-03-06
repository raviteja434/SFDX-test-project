<?xml version="1.0" encoding="utf-8"?><Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Email_Alert</fullName>
        <description>Email Alert</description>
        <protected>false</protected>
        <recipients>
            <field>Email__c</field>
            <type>email</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/SalesNewCustomerEmail</template>
    </alerts>
    <rules>
        <fullName>Send Course Email</fullName>
        <actions>
            <name>Email_Alert</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Course__c.Email__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Sends email when course created</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
</Workflow>
