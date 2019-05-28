<?xml version="1.0" encoding="UTF-8"?>
<Repository:repository xmlns:Repository="http://www.tibco.com/xmlns/repo/types/2002" xmlns:AESDK="http://www.tibco.com/xmlns/aemeta/adapter/2002" xmlns:AEService="http://www.tibco.com/xmlns/aemeta/services/2002" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
    <ADB:adapter xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002" name="PMMHEB_SDIAFHEE_ADB_Adapter_Cfg">
        <AESDK:instanceId>PMMHEB_SDIAFHEE_ADB_Adapter_Cfg</AESDK:instanceId>
        <AESDK:startup>
            <AESDK:defaultStartup>active</AESDK:defaultStartup>
            <AESDK:banner>true</AESDK:banner>
            <AESDK:hasStdMicroAgent>true</AESDK:hasStdMicroAgent>
            <AESDK:hasClassMicroAgent>%%HawkEnabled%%</AESDK:hasClassMicroAgent>
            <AESDK:classMicroAgentName>COM.TIBCO.adb.%%Deployment%%.%%InstanceId%%</AESDK:classMicroAgentName>
            <AESDK:defaultMicroAgentSession>ADBHawkDefault</AESDK:defaultMicroAgentSession>
            <AESDK:stdMicroAgentName>COM.TIBCO.ADAPTER.adb.%%Deployment%%.%%InstanceId%%</AESDK:stdMicroAgentName>
            <AESDK:startComponent>
                <AESDK:name>ADBHawkDefault</AESDK:name>
                <AESDK:state>active</AESDK:state>
            </AESDK:startComponent>
            <AESDK:startComponent>
                <AESDK:name>JMSQueue</AESDK:name>
                <AESDK:state>active</AESDK:state>
            </AESDK:startComponent>
            <AESDK:startComponent>
                <AESDK:name>ADBAgentJmsSession</AESDK:name>
                <AESDK:state>active</AESDK:state>
            </AESDK:startComponent>
            <AESDK:startComponent>
                <AESDK:name>PMMHEB_SDIAFHEE_Pub_Svc</AESDK:name>
                <AESDK:state>active</AESDK:state>
            </AESDK:startComponent>
        </AESDK:startup>
        <AESDK:deployment>
            <AESDK:sessions>
                <AESDK:messaging>
                    <AESDK:rvSession isRef="true">#rvSession.ADBHawkDefault</AESDK:rvSession>
                    <AESDK:jmsSession isRef="true">#jmsSession.JMSQueue</AESDK:jmsSession>
                    <AESDK:jmsSession isRef="true">#jmsSession.ADBAgentJmsSession</AESDK:jmsSession>
                </AESDK:messaging>
            </AESDK:sessions>
            <AESDK:producers>
                <AESDK:jmsPublisher isRef="true">#jmsProducer.PMMHEB_SDIAFHEE_Pub_Svc</AESDK:jmsPublisher>
            </AESDK:producers>
            <AESDK:advisories xsi:nil="true"/>
        </AESDK:deployment>
        <AESDK:timers xsi:nil="true"/>
        <AESDK:txControls xsi:nil="true"/>
        <AESDK:reporting>
            <AESDK:fileSink>
                <AESDK:name>fileSink</AESDK:name>
                <AESDK:fileName>%%DirTrace%%/%%Deployment%%.%%InstanceId%%.log</AESDK:fileName>
                <AESDK:fileCount>3</AESDK:fileCount>
                <AESDK:fileLimit>30000</AESDK:fileLimit>
                <AESDK:appendMode>true</AESDK:appendMode>
                <AESDK:role>
                    <AESDK:name>infoRole</AESDK:name>
                </AESDK:role>
                <AESDK:role>
                    <AESDK:name>debugRole</AESDK:name>
                </AESDK:role>
                <AESDK:role>
                    <AESDK:name>errorRole</AESDK:name>
                </AESDK:role>
                <AESDK:role>
                    <AESDK:name>warnRole</AESDK:name>
                </AESDK:role>
            </AESDK:fileSink>
            <AESDK:stdioSink>
                <AESDK:name>stdioSink</AESDK:name>
                <AESDK:ioName>stdout</AESDK:ioName>
                <AESDK:role>
                    <AESDK:name>infoRole</AESDK:name>
                </AESDK:role>
                <AESDK:role>
                    <AESDK:name>debugRole</AESDK:name>
                </AESDK:role>
                <AESDK:role>
                    <AESDK:name>errorRole</AESDK:name>
                </AESDK:role>
                <AESDK:role>
                    <AESDK:name>warnRole</AESDK:name>
                </AESDK:role>
            </AESDK:stdioSink>
        </AESDK:reporting>
        <AESDK:metadata>
            <AESDK:loadUrl isRef="false">/AESchemas/ae/ADB/PMMHEB_SDIAFHEE_ADB_Adapter_Cfg.aeschema</AESDK:loadUrl>
            <AESDK:loadUrl isRef="false">/AESchemas/ae/ADB/adbmetadata.aeschema</AESDK:loadUrl>
        </AESDK:metadata>
        <ADB:hawk xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
            <ADB:help>TIB/Adapter for ActiveDatabase MicroAgent</ADB:help>
            <ADB:microAgentName>COM.TIBCO.adb.custom.%%Deployment%%.%%InstanceId%%</ADB:microAgentName>
            <ADB:sessionName isRef="true">#rvSession.ADBHawkDefault</ADB:sessionName>
            <ADB:method xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                <ADB:help>Sets the debug level for the agent (possible values 0-3)</ADB:help>
                <ADB:name>setDebugLevel</ADB:name>
                <ADB:inputParameter>
                    <ADB:help>The debug level</ADB:help>
                    <ADB:name>DebugLevel</ADB:name>
                    <ADB:type>integer</ADB:type>
                </ADB:inputParameter>
            </ADB:method>
            <ADB:method xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                <ADB:help>Retrieve configuration information for the agent.</ADB:help>
                <ADB:name>showConfiguration</ADB:name>
                <ADB:outputParameter>
                    <ADB:help>Verbose flag information</ADB:help>
                    <ADB:name>VerboseInfo</ADB:name>
                    <ADB:type>string</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>Debug level information</ADB:help>
                    <ADB:name>DebugLevelInfo</ADB:name>
                    <ADB:type>string</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>Poll interval information</ADB:help>
                    <ADB:name>PollIntervalInfo</ADB:name>
                    <ADB:type>string</ADB:type>
                </ADB:outputParameter>
            </ADB:method>
            <ADB:method xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                <ADB:help>Terminates the agent</ADB:help>
                <ADB:name>terminateADBagent</ADB:name>
            </ADB:method>
            <ADB:method xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                <ADB:help>Toggles the value of the verbose flag.</ADB:help>
                <ADB:name>toggleVerboseFlag</ADB:name>
            </ADB:method>
            <ADB:method xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                <ADB:help>Gets number of messages waiting in the event queue.</ADB:help>
                <ADB:name>getEventQueueSize</ADB:name>
                <ADB:inputParameter>
                    <ADB:help>Specify subscriber or request/reply listener</ADB:help>
                    <ADB:name>Session</ADB:name>
                    <ADB:type>string</ADB:type>
                    <ADB:legalValueChoices>Subscriber,RequestReply</ADB:legalValueChoices>
                </ADB:inputParameter>
                <ADB:outputParameter>
                    <ADB:help>Number of events in the queue</ADB:help>
                    <ADB:name>QueueCount</ADB:name>
                    <ADB:type>integer</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>Maximum number of events in queue (0 = unlimited)</ADB:help>
                    <ADB:name>QueueLimit</ADB:name>
                    <ADB:type>integer</ADB:type>
                </ADB:outputParameter>
            </ADB:method>
            <ADB:method xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                <ADB:help>Get statistics about the data handled by the adapter instance</ADB:help>
                <ADB:name>getActivityStatistics</ADB:name>
                <ADB:index>Name</ADB:index>
                <ADB:inputParameter>
                    <ADB:help>Get statistics by either service or operation</ADB:help>
                    <ADB:name>Get Subtotal By</ADB:name>
                    <ADB:type>string</ADB:type>
                    <ADB:legalValueChoices>Service,Operation</ADB:legalValueChoices>
                </ADB:inputParameter>
                <ADB:outputParameter>
                    <ADB:help>Service Name</ADB:help>
                    <ADB:name>Name</ADB:name>
                    <ADB:type>string</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>Total number of objects processed</ADB:help>
                    <ADB:name>Total</ADB:name>
                    <ADB:type>integer</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>Total number of objects successfully processed</ADB:help>
                    <ADB:name>Success</ADB:name>
                    <ADB:type>integer</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>Total number of objects that caused an error during processing</ADB:help>
                    <ADB:name>Failure</ADB:name>
                    <ADB:type>integer</ADB:type>
                </ADB:outputParameter>
            </ADB:method>
            <ADB:method xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                <ADB:help>Get statistics about the data handled by a particular adapter service</ADB:help>
                <ADB:name>getActivityStatisticsByService</ADB:name>
                <ADB:index>Operation</ADB:index>
                <ADB:inputParameter>
                    <ADB:help>Name of which service to get the statistic for</ADB:help>
                    <ADB:name>Service Name</ADB:name>
                    <ADB:type>string</ADB:type>
                </ADB:inputParameter>
                <ADB:outputParameter>
                    <ADB:help>The type of operation this service provides</ADB:help>
                    <ADB:name>Operation</ADB:name>
                    <ADB:type>string</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>Name of the top level schema processed by this service, or the subject of a request/response service</ADB:help>
                    <ADB:name>SchemaName</ADB:name>
                    <ADB:type>string</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>Total number of objects processed</ADB:help>
                    <ADB:name>Total</ADB:name>
                    <ADB:type>integer</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>Total number of objects successfully processed</ADB:help>
                    <ADB:name>Success</ADB:name>
                    <ADB:type>integer</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>Total number of objects that caused an error during processing</ADB:help>
                    <ADB:name>Failure</ADB:name>
                    <ADB:type>integer</ADB:type>
                </ADB:outputParameter>
            </ADB:method>
            <ADB:method xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                <ADB:help>Get statistics about one operation</ADB:help>
                <ADB:name>getActivityStatisticsByOperation</ADB:name>
                <ADB:index>ServiceName</ADB:index>
                <ADB:inputParameter>
                    <ADB:help>Name of the operation</ADB:help>
                    <ADB:name>Operation</ADB:name>
                    <ADB:type>string</ADB:type>
                    <ADB:legalValueChoices>fetch,insert,update,delete,request/reply,standard_operation,custom_operation</ADB:legalValueChoices>
                </ADB:inputParameter>
                <ADB:outputParameter>
                    <ADB:help>Name of the Service</ADB:help>
                    <ADB:name>ServiceName</ADB:name>
                    <ADB:type>string</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>Total number of objects processed</ADB:help>
                    <ADB:name>Total</ADB:name>
                    <ADB:type>integer</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>Total number of objects successfully processed</ADB:help>
                    <ADB:name>Success</ADB:name>
                    <ADB:type>integer</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>Total number of objects that caused an error during processing</ADB:help>
                    <ADB:name>Failure</ADB:name>
                    <ADB:type>integer</ADB:type>
                </ADB:outputParameter>
            </ADB:method>
            <ADB:method xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                <ADB:help>Get operation counts of the current threads</ADB:help>
                <ADB:name>getThreadStatistics</ADB:name>
                <ADB:index>TaskType</ADB:index>
                <ADB:outputParameter>
                    <ADB:help>A unique identification of a particular thread</ADB:help>
                    <ADB:name>ThreadID</ADB:name>
                    <ADB:type>string</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>A type that tells what part of the adapter this thread belongs to</ADB:help>
                    <ADB:name>ThreadType</ADB:name>
                    <ADB:type>string</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>Description of the tasks this thread processes</ADB:help>
                    <ADB:name>TaskType</ADB:name>
                    <ADB:type>string</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>Number of tasks processed by this thread</ADB:help>
                    <ADB:name>TaskCount</ADB:name>
                    <ADB:type>integer</ADB:type>
                </ADB:outputParameter>
            </ADB:method>
            <ADB:method xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                <ADB:help>Get statistics about current count of elements in any internal queue</ADB:help>
                <ADB:name>getQueueStatistics</ADB:name>
                <ADB:index>QueueID</ADB:index>
                <ADB:outputParameter>
                    <ADB:help>A unique identification of a particular queue</ADB:help>
                    <ADB:name>QueueID</ADB:name>
                    <ADB:type>string</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>A type that will match this queue to a thread or connection</ADB:help>
                    <ADB:name>QueueType</ADB:name>
                    <ADB:type>string</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>Current number of elements in the queue</ADB:help>
                    <ADB:name>QueueCount</ADB:name>
                    <ADB:type>integer</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>Maximum number of elements that can be held in this queue</ADB:help>
                    <ADB:name>MaxQueueSize</ADB:name>
                    <ADB:type>integer</ADB:type>
                </ADB:outputParameter>
            </ADB:method>
            <ADB:method xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                <ADB:help>Return the state and statistics for all the curent connections used by the adapter</ADB:help>
                <ADB:name>getConnectionStatistics</ADB:name>
                <ADB:index>ConnectionID</ADB:index>
                <ADB:outputParameter>
                    <ADB:help>A unique identification of a particular connection</ADB:help>
                    <ADB:name>ConnectionID</ADB:name>
                    <ADB:type>string</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>Describe the purpose of this connection serves to the adapter</ADB:help>
                    <ADB:name>ConnectionType</ADB:name>
                    <ADB:type>string</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>Current state of the connection</ADB:help>
                    <ADB:name>State</ADB:name>
                    <ADB:type>string</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>Total number of times this connection had been re-established</ADB:help>
                    <ADB:name>NumRetries</ADB:name>
                    <ADB:type>integer</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>Total number of operations processed by this connection</ADB:help>
                    <ADB:name>TotalNumOperations</ADB:name>
                    <ADB:type>integer</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>Total number of operations processed by this connection since the last reconnection</ADB:help>
                    <ADB:name>CurrentNumOperations</ADB:name>
                    <ADB:type>integer</ADB:type>
                </ADB:outputParameter>
            </ADB:method>
            <ADB:method xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                <ADB:help>Reset all the counts for the activity statistics</ADB:help>
                <ADB:name>resetActivityStatistics</ADB:name>
            </ADB:method>
            <ADB:method xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                <ADB:help>Reset all the counts for the thread statistics</ADB:help>
                <ADB:name>resetThreadStatistics</ADB:name>
            </ADB:method>
            <ADB:method xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                <ADB:help>Reset all the counts for the connection statistics</ADB:help>
                <ADB:name>resetConnectionStatistics</ADB:name>
            </ADB:method>
            <ADB:method xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                <ADB:help>Set the polling interval setting</ADB:help>
                <ADB:name>setPollingInterval</ADB:name>
                <ADB:inputParameter>
                    <ADB:help>Polling interval in milliseconds</ADB:help>
                    <ADB:name>PollingInterval</ADB:name>
                    <ADB:type>integer</ADB:type>
                </ADB:inputParameter>
            </ADB:method>
            <ADB:method xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                <ADB:help>Get the current polling interval setting</ADB:help>
                <ADB:name>getPollingInterval</ADB:name>
                <ADB:outputParameter>
                    <ADB:help>Polling interval in milliseconds</ADB:help>
                    <ADB:name>PollingInterval</ADB:name>
                    <ADB:type>integer</ADB:type>
                </ADB:outputParameter>
            </ADB:method>
            <ADB:method xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                <ADB:help>Set the polling polling batch size setting</ADB:help>
                <ADB:name>setPollingBatchSize</ADB:name>
                <ADB:inputParameter>
                    <ADB:help>Polling batch size</ADB:help>
                    <ADB:name>PollingBatchSize</ADB:name>
                    <ADB:type>integer</ADB:type>
                </ADB:inputParameter>
            </ADB:method>
            <ADB:method xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                <ADB:help>Get the current polling batch size setting</ADB:help>
                <ADB:name>getPollingBatchSize</ADB:name>
                <ADB:outputParameter>
                    <ADB:help>Polling batch size</ADB:help>
                    <ADB:name>PollingBatchSize</ADB:name>
                    <ADB:type>integer</ADB:type>
                </ADB:outputParameter>
            </ADB:method>
            <ADB:method xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                <ADB:help>Get the setting of the perfMon option</ADB:help>
                <ADB:name>getPerfMonSetting</ADB:name>
                <ADB:outputParameter>
                    <ADB:help>Value of PerfMon option</ADB:help>
                    <ADB:name>Setting</ADB:name>
                    <ADB:type>string</ADB:type>
                </ADB:outputParameter>
            </ADB:method>
        </ADB:hawk>
        <AESDK:designer>
            <AESDK:advancedLogging>false</AESDK:advancedLogging>
            <AESDK:adapterVersion>sdk51</AESDK:adapterVersion>
            <AESDK:timeout>30000</AESDK:timeout>
            <AESDK:savePassword>true</AESDK:savePassword>
            <AESDK:lastDBType>16</AESDK:lastDBType>
            <AESDK:vendor>16</AESDK:vendor>
            <AESDK:deployOperations>false</AESDK:deployOperations>
            <AESDK:showExpertSettings>true</AESDK:showExpertSettings>
            <AESDK:identifierCase>1</AESDK:identifierCase>
            <AESDK:lockedProperties>
                <AESDK:locked>
                    <AESDK:properties>defaultMicroAgentSession,repoOnly,defaultSession,searchUrl,defaultStartup</AESDK:properties>
                </AESDK:locked>
                <AESDK:locked>
                    <AESDK:resource>/Advanced/Metadata URLs/LoadURL1</AESDK:resource>
                    <AESDK:properties>name,loadURL</AESDK:properties>
                </AESDK:locked>
                <AESDK:locked>
                    <AESDK:resource>/Advanced/Metadata URLs/LoadURL</AESDK:resource>
                    <AESDK:properties>name,loadURL</AESDK:properties>
                </AESDK:locked>
                <AESDK:locked>
                    <AESDK:resource>/Advanced/Sessions/ADBAgentJmsSession</AESDK:resource>
                    <AESDK:properties>connectionFactoryType,name</AESDK:properties>
                </AESDK:locked>
                <AESDK:locked>
                    <AESDK:resource>/Advanced/Sessions/JMSQueue</AESDK:resource>
                    <AESDK:properties>connectionFactoryType,name</AESDK:properties>
                </AESDK:locked>
                <AESDK:locked>
                    <AESDK:resource>/Advanced/Sessions/JMSQueue/PMMHEB_SDIAFHEE_Pub_Svc</AESDK:resource>
                    <AESDK:properties>subject,name,deliveryMode,wireFormat,destination</AESDK:properties>
                </AESDK:locked>
                <AESDK:locked>
                    <AESDK:resource>/Advanced/Sessions/ADBHawkDefault</AESDK:resource>
                    <AESDK:properties>name</AESDK:properties>
                </AESDK:locked>
                <AESDK:locked>
                    <AESDK:resource>/Adapter Services</AESDK:resource>
                    <AESDK:properties>name</AESDK:properties>
                </AESDK:locked>
            </AESDK:lockedProperties>
            <AESDK:fixedChildren>
                <AESDK:fixed>
                    <AESDK:resource>/Advanced/Metadata URLs</AESDK:resource>
                    <AESDK:children>LoadURL,LoadURL1</AESDK:children>
                </AESDK:fixed>
                <AESDK:fixed>
                    <AESDK:resource>/Advanced/Sessions</AESDK:resource>
                    <AESDK:children>ADBHawkDefault,ADBAgentJmsSession,JMSQueue</AESDK:children>
                </AESDK:fixed>
                <AESDK:fixed>
                    <AESDK:resource>/Advanced/Sessions/JMSQueue</AESDK:resource>
                    <AESDK:children>PMMHEB_SDIAFHEE_Pub_Svc</AESDK:children>
                </AESDK:fixed>
                <AESDK:fixed>
                    <AESDK:resource>/Advanced/Sessions/JMSQueue/PMMHEB_SDIAFHEE_Pub_Svc</AESDK:resource>
                    <AESDK:children>PMM.HEB_P_HEB_SDIAFHEE</AESDK:children>
                </AESDK:fixed>
            </AESDK:fixedChildren>
            <AESDK:resourceDescriptions>
                <AESDK:node>
                    <AESDK:resource>/Advanced/Sessions/JMSQueue/PMMHEB_SDIAFHEE_Pub_Svc</AESDK:resource>
                    <AESDK:description>Created for service PMMHEB_SDIAFHEE_Pub_Svc.</AESDK:description>
                </AESDK:node>
            </AESDK:resourceDescriptions>
            <AESDK:adapterTester>
                <AESDK:args>--run --propFile</AESDK:args>
                <AESDK:exe>C:\tibco6\adapter\adadb\7.1\bin\adbagent.exe</AESDK:exe>
                <AESDK:workingDir>C:\temp</AESDK:workingDir>
            </AESDK:adapterTester>
        </AESDK:designer>
        <AESDK:designer xsi:nil="true"/>
        <ADB:designer xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002" xsi:nil="true"/>
        <activedb xmlns="http://www.tibco.com/xmlns/adapter/ADB/2002">
            <defaultDataSource>
                <name>%%Connections/Database/PMM/MIG_DSN%%</name>
                <disConnCode>3111;3112;3113;3114</disConnCode>
                <user>%%Connections/Database/PMM/MIG_DBUSERNAME%%</user>
                <password>%%Connections/Database/PMM/MIG_DBPASSWORD%%</password>
                <driver>%%Connections/Database/PMM/JDBC_DRIVER%%</driver>
                <url>%%Connections/Database/PMM/MIG_DATABASE_URL%%</url>
                <dbmsType>ORACLE</dbmsType>
            </defaultDataSource>
            <threadCount>
                <pubManagers>1</pubManagers>
                <subManagers>1</subManagers>
                <dbInterfaces>1</dbInterfaces>
                <commInterfaces>1</commInterfaces>
                <dbRRInterfaces>1</dbRRInterfaces>
                <commRRInterfaces>1</commRRInterfaces>
            </threadCount>
            <agentOptions>
                <debug>2</debug>
                <verbose>on</verbose>
                <useTraceFile/>
                <termSubject>%%Destinations/Topics/HEB_SDIAFHEE_TERMINATION_TOPIC%%</termSubject>
                <jmsDestinationPrefix>%%Domain%%.%%Deployment%%.adb.%%InstanceId%%</jmsDestinationPrefix>
                <encoding>ASCII</encoding>
                <publishChildData>on</publishChildData>
                <poll>5000</poll>
                <usePollingBatchSize>false</usePollingBatchSize>
                <maxRows>0</maxRows>
                <sleepBetweenRetries>10000</sleepBetweenRetries>
                <retryBeforeSuspend>1</retryBeforeSuspend>
                <stopOnRetryFail>RETRY_FAIL_LAST_SERVICE</stopOnRetryFail>
                <retryTotal>3</retryTotal>
                <batchPubStatusUpdates>off</batchPubStatusUpdates>
                <pubBatchConfirmSize>0</pubBatchConfirmSize>
                <pubBatchConfirmTimeout>10000</pubBatchConfirmTimeout>
                <subBatchCommitSize>0</subBatchCommitSize>
                <subBatchCommitTimeout>10000</subBatchCommitTimeout>
                <subBulkInsertSize>1</subBulkInsertSize>
                <rvMaxQueueSize>0</rvMaxQueueSize>
                <useExceptTable>on</useExceptTable>
                <rebuildAfterException>off</rebuildAfterException>
                <rpcMaxRows>0</rpcMaxRows>
            </agentOptions>
        </activedb>
        <operations xmlns="http://www.tibco.com/xmlns/adapter/ADB/2002">
            <publisher>
                <name>PMMHEB_SDIAFHEE_Pub_Svc</name>
                <deployed>true</deployed>
                <isAdorapps>false</isAdorapps>
                <transportType>jms</transportType>
                <destination>%%Destinations/Queues/ASSORTMENTFORMATHEADER_PUB_ADB_QUEUE%%</destination>
                <endpointReference isRef="true">#jmsProducer.PMMHEB_SDIAFHEE_Pub_Svc</endpointReference>
                <classReference isRef="true">/AESchemas/ae/ADB/PMMHEB_SDIAFHEE_ADB_Adapter_Cfg.aeschema#class.PMM.HEB_P_HEB_SDIAFHEE</classReference>
                <schemas>
                    <table>
                        <name>P_HEB_SDIAFHEE</name>
                        <col>DOWNLOAD_DATE_1,false,adbDateTime,DATE,19,0, ,false,false,false, </col>
                        <col>DOWNLOAD_DATE_2,false,adbDateTime,DATE,19,0, ,false,false,false, </col>
                    </table>
                </schemas>
                <qualityOfService>ae.sessions.rvcmsession</qualityOfService>
                <wireFormat>aeXml</wireFormat>
                <connectionFactoryType>1</connectionFactoryType>
                <deliveryMode>2</deliveryMode>
                <repoEndpointType>endpoint.JMSPublisher</repoEndpointType>
                <groupMessaging>false</groupMessaging>
                <groupSize>1</groupSize>
                <alerter>false</alerter>
                <sourceTable>PMM.HEB_SDIAFHEE</sourceTable>
                <publishingTable>PMM.HEB_P_HEB_SDIAFHEE</publishingTable>
                <updateMode>INSERT</updateMode>
                <storageMode>VALUE</storageMode>
                <loopDetection>true</loopDetection>
                <columnsToPublish>AUDIT_NUMBER</columnsToPublish>
                <columnsToPublish>ISS_TECH_KEY</columnsToPublish>
                <columnsToPublish>TRAN_TYPE</columnsToPublish>
                <columnsToPublish>PRD_AFH_KEY</columnsToPublish>
                <columnsToPublish>PRD_AFH_CODE</columnsToPublish>
                <columnsToPublish>PRD_AFH_NAME</columnsToPublish>
                <columnsToPublish>DATE_CREATED</columnsToPublish>
                <orderBy>ORDER BY ADB_SEQUENCE</orderBy>
            </publisher>
        </operations>
        <operations xmlns="http://www.tibco.com/xmlns/adapter/ADB/2002"/>
        <operations xmlns="http://www.tibco.com/xmlns/adapter/ADB/2002"/>
        <operations xmlns="http://www.tibco.com/xmlns/adapter/ADB/2002"/>
        <operations xmlns="http://www.tibco.com/xmlns/adapter/ADB/2002"/>
        <operations xmlns="http://www.tibco.com/xmlns/adapter/ADB/2002"/>
        <operations xmlns="http://www.tibco.com/xmlns/adapter/ADB/2002"/>
        <operations xmlns="http://www.tibco.com/xmlns/adapter/ADB/2002"/>
        <operations xmlns="http://www.tibco.com/xmlns/adapter/ADB/2002"/>
        <operations xmlns="http://www.tibco.com/xmlns/adapter/ADB/2002"/>
        <operations xmlns="http://www.tibco.com/xmlns/adapter/ADB/2002"/>
        <operations xmlns="http://www.tibco.com/xmlns/adapter/ADB/2002"/>
        <operations xmlns="http://www.tibco.com/xmlns/adapter/ADB/2002"/>
        <operations xmlns="http://www.tibco.com/xmlns/adapter/ADB/2002"/>
        <operations xmlns="http://www.tibco.com/xmlns/adapter/ADB/2002"/>
        <ADB:operations xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002"/>
    </ADB:adapter>
    <rvSession xmlns="http://www.tibco.com/xmlns/aemeta/services/2002" name="ADBHawkDefault" objectType="session.RV">
        <service>%%TIBHawkService%%</service>
        <network>%%TIBHawkNetwork%%</network>
        <daemon>%%TIBHawkDaemon%%</daemon>
        <mode>asynchronous</mode>
    </rvSession>
    <jmsSession xmlns="http://www.tibco.com/xmlns/aemeta/services/2002" name="JMSQueue" objectType="session.JMS">
        <connUsername>%%JmsUsername%%</connUsername>
        <connPassword>%%JmsPassword%%</connPassword>
        <connFactoryName>QueueConnectionFactory</connFactoryName>
        <connFactoryType>1</connFactoryType>
        <providerUrl>%%JmsProviderUrl%%</providerUrl>
        <providerCtxFactory>com.tibco.tibjms.naming.TibjmsInitialContextFactory</providerCtxFactory>
        <jndiLookups>false</jndiLookups>
    </jmsSession>
    <jmsSession xmlns="http://www.tibco.com/xmlns/aemeta/services/2002" name="ADBAgentJmsSession" objectType="session.JMS">
        <connUsername>%%JmsUsername%%</connUsername>
        <connPassword>%%JmsPassword%%</connPassword>
        <connFactoryName>TopicConnectionFactory</connFactoryName>
        <connFactoryType>2</connFactoryType>
        <providerUrl>%%JmsProviderUrl%%</providerUrl>
        <providerCtxFactory>com.tibco.tibjms.naming.TibjmsInitialContextFactory</providerCtxFactory>
        <jndiLookups>false</jndiLookups>
    </jmsSession>
    <jmsProducer xmlns="http://www.tibco.com/xmlns/aemeta/services/2002" name="PMMHEB_SDIAFHEE_Pub_Svc" objectType="endpoint.JMSPublisher">
        <session isRef="true">#jmsSession.JMSQueue</session>
        <destination>%%Destinations/Queues/ASSORTMENTFORMATHEADER_PUB_ADB_QUEUE%%</destination>
        <role>jmsProducer</role>
        <deliveryMode>2</deliveryMode>
        <replyDestination/>
        <wireFormat>aeXml</wireFormat>
        <messageTimeout>0</messageTimeout>
        <class isRef="true">/AESchemas/ae/ADB/PMMHEB_SDIAFHEE_ADB_Adapter_Cfg.aeschema#class.PMM.HEB_P_HEB_SDIAFHEE</class>
    </jmsProducer>
</Repository:repository>