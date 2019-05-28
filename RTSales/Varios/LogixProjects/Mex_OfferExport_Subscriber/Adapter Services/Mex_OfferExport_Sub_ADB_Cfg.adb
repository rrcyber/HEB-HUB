<?xml version="1.0" encoding="UTF-8"?>
<Repository:repository xmlns:Repository="http://www.tibco.com/xmlns/repo/types/2002" xmlns:AESDK="http://www.tibco.com/xmlns/aemeta/adapter/2002" xmlns:AEService="http://www.tibco.com/xmlns/aemeta/services/2002" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
    <ADB:adapter xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002" name="Mex_OfferExport_Sub_ADB_Cfg">
        <AESDK:instanceId>Mex_OfferExport_Sub_ADB_Cfg</AESDK:instanceId>
        <AESDK:startup>
            <AESDK:defaultStartup>active</AESDK:defaultStartup>
            <AESDK:banner>true</AESDK:banner>
            <AESDK:hasStdMicroAgent>true</AESDK:hasStdMicroAgent>
            <AESDK:stdMicroAgentName>COM.TIBCO.ADAPTER.adb.%%Deployment%%.%%InstanceId%%</AESDK:stdMicroAgentName>
            <AESDK:stdMicroAgentTimeout>10000</AESDK:stdMicroAgentTimeout>
            <AESDK:hasClassMicroAgent>%%HawkEnabled%%</AESDK:hasClassMicroAgent>
            <AESDK:classMicroAgentTimeout>10000</AESDK:classMicroAgentTimeout>
            <AESDK:classMicroAgentName>COM.TIBCO.adb.%%Deployment%%.%%InstanceId%%</AESDK:classMicroAgentName>
            <AESDK:startComponent>
                <AESDK:state>active</AESDK:state>
                <AESDK:name>ADBHawkDefault</AESDK:name>
            </AESDK:startComponent>
            <AESDK:defaultMicroAgentSession>ADBHawkDefault</AESDK:defaultMicroAgentSession>
            <AESDK:startComponent>
                <AESDK:state>active</AESDK:state>
                <AESDK:name>JMSQueue</AESDK:name>
            </AESDK:startComponent>
            <AESDK:startComponent>
                <AESDK:state>active</AESDK:state>
                <AESDK:name>ADBAgentJmsSession</AESDK:name>
            </AESDK:startComponent>
            <AESDK:startComponent>
                <AESDK:state>active</AESDK:state>
                <AESDK:name>CpeDisc_Sub_Svc</AESDK:name>
            </AESDK:startComponent>
            <AESDK:startComponent>
                <AESDK:state>active</AESDK:state>
                <AESDK:name>CpeCustGrp_Sub_Svc</AESDK:name>
            </AESDK:startComponent>
            <AESDK:startComponent>
                <AESDK:state>active</AESDK:state>
                <AESDK:name>CpeRwrdOpt_Sub_Svc</AESDK:name>
            </AESDK:startComponent>
            <AESDK:startComponent>
                <AESDK:state>active</AESDK:state>
                <AESDK:name>CpeIncntCustGrp_Sub_Svc</AESDK:name>
            </AESDK:startComponent>
            <AESDK:startComponent>
                <AESDK:state>active</AESDK:state>
                <AESDK:name>CpeLocGrp_Sub_Svc</AESDK:name>
            </AESDK:startComponent>
            <AESDK:startComponent>
                <AESDK:state>active</AESDK:state>
                <AESDK:name>CpeLoc_Sub_Svc</AESDK:name>
            </AESDK:startComponent>
            <AESDK:startComponent>
                <AESDK:state>active</AESDK:state>
                <AESDK:name>CpeTrmnlTyps_Sub_Svc</AESDK:name>
            </AESDK:startComponent>
            <AESDK:startComponent>
                <AESDK:state>active</AESDK:state>
                <AESDK:name>CpeProdGrp_Sub_Svc</AESDK:name>
            </AESDK:startComponent>
            <AESDK:startComponent>
                <AESDK:state>active</AESDK:state>
                <AESDK:name>CpeIncntProdGrps_Sub_Svc</AESDK:name>
            </AESDK:startComponent>
            <AESDK:startComponent>
                <AESDK:state>active</AESDK:state>
                <AESDK:name>ADBAgentRvSession</AESDK:name>
            </AESDK:startComponent>
            <AESDK:startComponent>
                <AESDK:state>active</AESDK:state>
                <AESDK:name>ADBRvSession</AESDK:name>
            </AESDK:startComponent>
            <AESDK:startComponent>
                <AESDK:state>active</AESDK:state>
                <AESDK:name>CpeIncnts_Sub_Svc</AESDK:name>
            </AESDK:startComponent>
            <AESDK:startComponent>
                <AESDK:state>active</AESDK:state>
                <AESDK:name>TESTPUBLISHER</AESDK:name>
            </AESDK:startComponent>
        </AESDK:startup>
        <AESDK:deployment>
            <AESDK:advisories xsi:nil="true"/>
            <AESDK:sessions>
                <AESDK:messaging>
                    <AESDK:rvSession isRef="true">#rvSession.ADBRvSession</AESDK:rvSession>
                    <AESDK:rvSession isRef="true">#rvSession.ADBAgentRvSession</AESDK:rvSession>
                    <AESDK:jmsSession isRef="true">#jmsSession.ADBAgentJmsSession</AESDK:jmsSession>
                    <AESDK:jmsSession isRef="true">#jmsSession.JMSQueue</AESDK:jmsSession>
                    <AESDK:rvSession isRef="true">#rvSession.ADBHawkDefault</AESDK:rvSession>
                </AESDK:messaging>
            </AESDK:sessions>
            <AESDK:consumers>
                <AESDK:jmsSubscriber isRef="true">#jmsConsumer.CpeIncntProdGrps_Sub_Svc</AESDK:jmsSubscriber>
                <AESDK:jmsSubscriber isRef="true">#jmsConsumer.CpeProdGrp_Sub_Svc</AESDK:jmsSubscriber>
                <AESDK:jmsSubscriber isRef="true">#jmsConsumer.CpeTrmnlTyps_Sub_Svc</AESDK:jmsSubscriber>
                <AESDK:jmsSubscriber isRef="true">#jmsConsumer.CpeLoc_Sub_Svc</AESDK:jmsSubscriber>
                <AESDK:jmsSubscriber isRef="true">#jmsConsumer.CpeLocGrp_Sub_Svc</AESDK:jmsSubscriber>
                <AESDK:jmsSubscriber isRef="true">#jmsConsumer.CpeIncntCustGrp_Sub_Svc</AESDK:jmsSubscriber>
                <AESDK:jmsSubscriber isRef="true">#jmsConsumer.CpeRwrdOpt_Sub_Svc</AESDK:jmsSubscriber>
                <AESDK:jmsSubscriber isRef="true">#jmsConsumer.CpeCustGrp_Sub_Svc</AESDK:jmsSubscriber>
                <AESDK:jmsSubscriber isRef="true">#jmsConsumer.CpeDisc_Sub_Svc</AESDK:jmsSubscriber>
                <AESDK:jmsSubscriber isRef="true">#jmsConsumer.CpeIncnts_Sub_Svc</AESDK:jmsSubscriber>
            </AESDK:consumers>
            <AESDK:producers>
                <AESDK:jmsPublisher isRef="true">#jmsProducer.TESTPUBLISHER</AESDK:jmsPublisher>
            </AESDK:producers>
        </AESDK:deployment>
        <AESDK:timers xsi:nil="true"/>
        <AESDK:txControls xsi:nil="true"/>
        <AESDK:reporting>
            <AESDK:fileSink>
                <AESDK:fileName>%%DirTrace%%/%%Deployment%%.%%InstanceId%%.log</AESDK:fileName>
                <AESDK:fileCount>3</AESDK:fileCount>
                <AESDK:fileLimit>30000</AESDK:fileLimit>
                <AESDK:appendMode>true</AESDK:appendMode>
                <AESDK:name>fileSink</AESDK:name>
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
                <AESDK:ioName>stdout</AESDK:ioName>
                <AESDK:name>stdioSink</AESDK:name>
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
            <AESDK:loadUrl isRef="true">/AESchemas/ae/ADB/adbmetadata.aeschema</AESDK:loadUrl>
            <AESDK:loadUrl isRef="true">/AESchemas/ae/ADB/Mex_OfferExport_Sub_ADB_Cfg.aeschema</AESDK:loadUrl>
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
            <AESDK:lastDBType>32</AESDK:lastDBType>
            <AESDK:vendor>32</AESDK:vendor>
            <AESDK:deployOperations>false</AESDK:deployOperations>
            <AESDK:showExpertSettings>true</AESDK:showExpertSettings>
            <AESDK:identifierCase>0</AESDK:identifierCase>
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
                    <AESDK:resource>/Advanced/Sessions/ADBHawkDefault</AESDK:resource>
                    <AESDK:properties>name</AESDK:properties>
                </AESDK:locked>
                <AESDK:locked>
                    <AESDK:resource>/Advanced/Sessions/JMSQueue</AESDK:resource>
                    <AESDK:properties>connectionFactoryType,name</AESDK:properties>
                </AESDK:locked>
                <AESDK:locked>
                    <AESDK:resource>/Advanced/Sessions/JMSQueue/CpeIncnts_Sub_Svc</AESDK:resource>
                    <AESDK:properties>subject,name,deliveryMode,wireFormat,destination</AESDK:properties>
                </AESDK:locked>
                <AESDK:locked>
                    <AESDK:resource>/Advanced/Sessions/JMSQueue/CpeDisc_Sub_Svc</AESDK:resource>
                    <AESDK:properties>subject,name,deliveryMode,wireFormat,destination</AESDK:properties>
                </AESDK:locked>
                <AESDK:locked>
                    <AESDK:resource>/Advanced/Sessions/JMSQueue/CpeCustGrp_Sub_Svc</AESDK:resource>
                    <AESDK:properties>subject,name,deliveryMode,wireFormat,destination</AESDK:properties>
                </AESDK:locked>
                <AESDK:locked>
                    <AESDK:resource>/Advanced/Sessions/JMSQueue/CpeRwrdOpt_Sub_Svc</AESDK:resource>
                    <AESDK:properties>subject,name,deliveryMode,wireFormat,destination</AESDK:properties>
                </AESDK:locked>
                <AESDK:locked>
                    <AESDK:resource>/Advanced/Sessions/JMSQueue/CpeIncntCustGrp_Sub_Svc</AESDK:resource>
                    <AESDK:properties>subject,name,deliveryMode,wireFormat,destination</AESDK:properties>
                </AESDK:locked>
                <AESDK:locked>
                    <AESDK:resource>/Advanced/Sessions/JMSQueue/CpeLocGrp_Sub_Svc</AESDK:resource>
                    <AESDK:properties>subject,name,deliveryMode,wireFormat,destination</AESDK:properties>
                </AESDK:locked>
                <AESDK:locked>
                    <AESDK:resource>/Advanced/Sessions/JMSQueue/CpeLoc_Sub_Svc</AESDK:resource>
                    <AESDK:properties>subject,name,deliveryMode,wireFormat,destination</AESDK:properties>
                </AESDK:locked>
                <AESDK:locked>
                    <AESDK:resource>/Advanced/Sessions/JMSQueue/CpeTrmnlTyps_Sub_Svc</AESDK:resource>
                    <AESDK:properties>subject,name,deliveryMode,wireFormat,destination</AESDK:properties>
                </AESDK:locked>
                <AESDK:locked>
                    <AESDK:resource>/Advanced/Sessions/JMSQueue/CpeProdGrp_Sub_Svc</AESDK:resource>
                    <AESDK:properties>subject,name,deliveryMode,wireFormat,destination</AESDK:properties>
                </AESDK:locked>
                <AESDK:locked>
                    <AESDK:resource>/Advanced/Sessions/JMSQueue/CpeIncntProdGrps_Sub_Svc</AESDK:resource>
                    <AESDK:properties>subject,name,deliveryMode,wireFormat,destination</AESDK:properties>
                </AESDK:locked>
                <AESDK:locked>
                    <AESDK:resource>/Advanced/Sessions/ADBAgentJmsSession</AESDK:resource>
                    <AESDK:properties>connectionFactoryType,name</AESDK:properties>
                </AESDK:locked>
                <AESDK:locked>
                    <AESDK:resource>/Advanced/Sessions/ADBAgentRvSession</AESDK:resource>
                    <AESDK:properties>name</AESDK:properties>
                </AESDK:locked>
                <AESDK:locked>
                    <AESDK:resource>/Advanced/Sessions/ADBRvSession</AESDK:resource>
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
                    <AESDK:children>ADBHawkDefault,ADBAgentJmsSession,JMSQueue,ADBAgentRvSession,ADBRvSession</AESDK:children>
                </AESDK:fixed>
                <AESDK:fixed>
                    <AESDK:resource>/Advanced/Sessions/JMSQueue</AESDK:resource>
                    <AESDK:children>CpeDisc_Sub_Svc,CpeCustGrp_Sub_Svc,CpeRwrdOpt_Sub_Svc,CpeIncntCustGrp_Sub_Svc,CpeLocGrp_Sub_Svc,CpeLoc_Sub_Svc,CpeTrmnlTyps_Sub_Svc,CpeProdGrp_Sub_Svc,CpeIncntProdGrps_Sub_Svc,CpeIncnts_Sub_Svc</AESDK:children>
                </AESDK:fixed>
                <AESDK:fixed>
                    <AESDK:resource>/Advanced/Sessions/JMSQueue/CpeIncnts_Sub_Svc</AESDK:resource>
                    <AESDK:children>CPE_INCNTS</AESDK:children>
                </AESDK:fixed>
                <AESDK:fixed>
                    <AESDK:resource>/Advanced/Sessions/JMSQueue/CpeDisc_Sub_Svc</AESDK:resource>
                    <AESDK:children>CPE_DISC</AESDK:children>
                </AESDK:fixed>
                <AESDK:fixed>
                    <AESDK:resource>/Advanced/Sessions/JMSQueue/CpeCustGrp_Sub_Svc</AESDK:resource>
                    <AESDK:children>CPE_CUST_GRP</AESDK:children>
                </AESDK:fixed>
                <AESDK:fixed>
                    <AESDK:resource>/Advanced/Sessions/JMSQueue/CpeRwrdOpt_Sub_Svc</AESDK:resource>
                    <AESDK:children>CPE_RWRD_OPT</AESDK:children>
                </AESDK:fixed>
                <AESDK:fixed>
                    <AESDK:resource>/Advanced/Sessions/JMSQueue/CpeIncntCustGrp_Sub_Svc</AESDK:resource>
                    <AESDK:children>CPE_INCNT_CUST_GRP</AESDK:children>
                </AESDK:fixed>
                <AESDK:fixed>
                    <AESDK:resource>/Advanced/Sessions/JMSQueue/CpeLocGrp_Sub_Svc</AESDK:resource>
                    <AESDK:children>CPE_LOC_GRP</AESDK:children>
                </AESDK:fixed>
                <AESDK:fixed>
                    <AESDK:resource>/Advanced/Sessions/JMSQueue/CpeLoc_Sub_Svc</AESDK:resource>
                    <AESDK:children>CPE_LOC</AESDK:children>
                </AESDK:fixed>
                <AESDK:fixed>
                    <AESDK:resource>/Advanced/Sessions/JMSQueue/CpeTrmnlTyps_Sub_Svc</AESDK:resource>
                    <AESDK:children>CPE_TRMNL_TYPS</AESDK:children>
                </AESDK:fixed>
                <AESDK:fixed>
                    <AESDK:resource>/Advanced/Sessions/JMSQueue/CpeProdGrp_Sub_Svc</AESDK:resource>
                    <AESDK:children>CPE_PROD_GRP</AESDK:children>
                </AESDK:fixed>
                <AESDK:fixed>
                    <AESDK:resource>/Advanced/Sessions/JMSQueue/CpeIncntProdGrps_Sub_Svc</AESDK:resource>
                    <AESDK:children>CPE_INCNT_PROD_GRPS</AESDK:children>
                </AESDK:fixed>
            </AESDK:fixedChildren>
            <AESDK:resourceDescriptions>
                <AESDK:node>
                    <AESDK:resource>/Advanced/Sessions/JMSQueue/CpeIncnts_Sub_Svc</AESDK:resource>
                    <AESDK:description>Created for service CpeIncnts_Sub_Svc.</AESDK:description>
                </AESDK:node>
                <AESDK:node>
                    <AESDK:resource>/Advanced/Sessions/JMSQueue/CpeDisc_Sub_Svc</AESDK:resource>
                    <AESDK:description>Created for service CpeDisc_Sub_Svc.</AESDK:description>
                </AESDK:node>
                <AESDK:node>
                    <AESDK:resource>/Advanced/Sessions/JMSQueue/CpeCustGrp_Sub_Svc</AESDK:resource>
                    <AESDK:description>Created for service CpeCustGrp_Sub_Svc.</AESDK:description>
                </AESDK:node>
                <AESDK:node>
                    <AESDK:resource>/Advanced/Sessions/JMSQueue/CpeRwrdOpt_Sub_Svc</AESDK:resource>
                    <AESDK:description>Created for service CpeRwrdOpt_Sub_Svc.</AESDK:description>
                </AESDK:node>
                <AESDK:node>
                    <AESDK:resource>/Advanced/Sessions/JMSQueue/CpeIncntCustGrp_Sub_Svc</AESDK:resource>
                    <AESDK:description>Created for service CpeIncntCustGrp_Sub_Svc.</AESDK:description>
                </AESDK:node>
                <AESDK:node>
                    <AESDK:resource>/Advanced/Sessions/JMSQueue/CpeLocGrp_Sub_Svc</AESDK:resource>
                    <AESDK:description>Created for service CpeLocGrp_Sub_Svc.</AESDK:description>
                </AESDK:node>
                <AESDK:node>
                    <AESDK:resource>/Advanced/Sessions/JMSQueue/CpeLoc_Sub_Svc</AESDK:resource>
                    <AESDK:description>Created for service CpeLoc_Sub_Svc.</AESDK:description>
                </AESDK:node>
                <AESDK:node>
                    <AESDK:resource>/Advanced/Sessions/JMSQueue/CpeTrmnlTyps_Sub_Svc</AESDK:resource>
                    <AESDK:description>Created for service CpeTrmnlTyps_Sub_Svc.</AESDK:description>
                </AESDK:node>
                <AESDK:node>
                    <AESDK:resource>/Advanced/Sessions/JMSQueue/CpeProdGrp_Sub_Svc</AESDK:resource>
                    <AESDK:description>Created for service CpeProdGrp_Sub_Svc.</AESDK:description>
                </AESDK:node>
                <AESDK:node>
                    <AESDK:resource>/Advanced/Sessions/JMSQueue/CpeIncntProdGrps_Sub_Svc</AESDK:resource>
                    <AESDK:description>Created for service CpeIncntProdGrps_Sub_Svc.</AESDK:description>
                </AESDK:node>
            </AESDK:resourceDescriptions>
            <AESDK:adapterTester>
                <AESDK:args>--run --propFile</AESDK:args>
                <AESDK:exe>C:\tibco\adapter\adadb\5.5\bin\adbagent.exe</AESDK:exe>
                <AESDK:workingDir>C:\dummy</AESDK:workingDir>
            </AESDK:adapterTester>
        </AESDK:designer>
        <ADB:designer xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002" xsi:nil="true"/>
        <ADB:operations xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
            <ADB:subscriber xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002" resourceType="adb.table.subscriber">
                <ADB:deployed>true</ADB:deployed>
                <ADB:transportType>jms</ADB:transportType>
                <ADB:qualityOfService>ae.sessions.rvcmsession</ADB:qualityOfService>
                <ADB:wireFormat>aeXml</ADB:wireFormat>
                <ADB:isAdorapps>false</ADB:isAdorapps>
                <ADB:allowKeys>true</ADB:allowKeys>
                <ADB:useSeperateThread>false</ADB:useSeperateThread>
                <ADB:opaqueTable>false</ADB:opaqueTable>
                <ADB:replySenderQualityOfService>Persistent</ADB:replySenderQualityOfService>
                <ADB:deliveryMode>2</ADB:deliveryMode>
                <ADB:name>CpeIncnts_Sub_Svc</ADB:name>
                <ADB:connectionFactoryType>1</ADB:connectionFactoryType>
                <ADB:repoEndpointType>endpoint.JMSSubscriber</ADB:repoEndpointType>
                <ADB:sessionReference>/Adapter Services/Mex_OfferExport_Sub_ADB_Cfg.adb#jmsSession.JMSQueue</ADB:sessionReference>
                <ADB:classReference isRef="true">/AESchemas/ae/ADB/Mex_OfferExport_Sub_ADB_Cfg.aeschema#class.CPE_INCNTS</ADB:classReference>
                <ADB:destinationTable>CPE_INCNTS</ADB:destinationTable>
                <ADB:columnsToSubscribe>INCNT_ID</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> TMPLT_SW</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> FRM_TMPLT</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> INCNT_NM</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> DES</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> PROMO_CLS_ID</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> PRTY</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> STRT_DT</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> END_DT</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> EVERY_DOW</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> ELGBLT_STRT_DT</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> ELGBLT_END_DT</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> TSTING_STRT_DT</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> TSTING_END_DT</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> P1_DSTRB_QTY_LIM</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> P1_DSTRB_TM_TYP</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> P1_DSTRB_PRD</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> P3_DSTRB_QTY_LIM</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> P3_DSTRB_TM_TYP</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> P3_DSTRB_PRD</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> REPTNG</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> CRE8D_DT</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> LST_UPDT_TS</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> DELD</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> STAT_FLAG</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> UPDT_LVL</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> CRM_ENGN_ID</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> CRM_ENGN_UPDT_LVL</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> CPE_OA_DPLY_STAT</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> CPE_OA_REPT_DT</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> CPE_OA_DPLY_SUCCESS_DT</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> DSABLD_ON_CFW_SW</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> ALLOW_OPT_OUT_SW</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> EMPLS_ONLY_SW</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> EMPLS_EXCLD_SW</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> CRE8D_BY_ADMIN_ID</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> LST_UPDTD_BY_ADMIN_ID</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> DEFER_CALC_TO_EOS_SW</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> SND_ISSNC</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> EVERY_TOD</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> BANNER_ID</ADB:columnsToSubscribe>
                <ADB:schemas xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                    <ADB:table xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                        <ADB:name>CPE_INCNTS</ADB:name>
                    </ADB:table>
                </ADB:schemas>
                <ADB:destination>%%Destinations/Queues/GLB_ADB_CPEINCNTS_QUEUE%%</ADB:destination>
                <ADB:endpointReference isRef="true">#jmsConsumer.CpeIncnts_Sub_Svc</ADB:endpointReference>
                <ADB:exceptionsTable>ERR_CPE_INCNTS</ADB:exceptionsTable>
            </ADB:subscriber>
            <ADB:subscriber xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002" resourceType="adb.table.subscriber">
                <ADB:deployed>true</ADB:deployed>
                <ADB:transportType>jms</ADB:transportType>
                <ADB:qualityOfService>ae.sessions.rvcmsession</ADB:qualityOfService>
                <ADB:wireFormat>aeXml</ADB:wireFormat>
                <ADB:isAdorapps>false</ADB:isAdorapps>
                <ADB:allowKeys>true</ADB:allowKeys>
                <ADB:useSeperateThread>false</ADB:useSeperateThread>
                <ADB:opaqueTable>false</ADB:opaqueTable>
                <ADB:replySenderQualityOfService>Persistent</ADB:replySenderQualityOfService>
                <ADB:deliveryMode>2</ADB:deliveryMode>
                <ADB:name>CpeDisc_Sub_Svc</ADB:name>
                <ADB:connectionFactoryType>1</ADB:connectionFactoryType>
                <ADB:repoEndpointType>endpoint.JMSSubscriber</ADB:repoEndpointType>
                <ADB:sessionReference>/Adapter Services/Mex_OfferExport_Sub_ADB_Cfg.adb#jmsSession.JMSQueue</ADB:sessionReference>
                <ADB:classReference isRef="true">/AESchemas/ae/ADB/Mex_OfferExport_Sub_ADB_Cfg.aeschema#class.CPE_DISC</ADB:classReference>
                <ADB:destinationTable>CPE_DISC</ADB:destinationTable>
                <ADB:columnsToSubscribe>DISC_ID</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> DISC_NM</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> DISC_TYP_ID</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> RCPT_DES</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> SPECIFY_BARCD</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> DISC_BARCD</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> VOID_BARCD</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> DISCED_PROD_GRP_ID</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> EXCLD_PROD_GRP_ID</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> BEST_DEAL_SW</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> ALLOW_NEG_SW</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> COMPUTE_DISC</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> DISC_AMT</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> AMT_TYP_ID</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> L1_CAP</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> L2_DISC_AMT</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> L2_AMT_TYP_ID</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> L2_CAP</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> L3_DISC_AMT</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> L3_AMT_TYP_ID</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> ITM_LIM</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> WT_LIM</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> DOL_LIM</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> CHRGBACK_DEPT_ID</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> DECLINING_BAL</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> RETROACTV_DISC</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> USR_GRP_ID</ADB:columnsToSubscribe>
                <ADB:schemas xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                    <ADB:table xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                        <ADB:name>CPE_DISC</ADB:name>
                    </ADB:table>
                </ADB:schemas>
                <ADB:destination>%%Destinations/Queues/GLB_ADB_CPEDISC_QUEUE%%</ADB:destination>
                <ADB:endpointReference isRef="true">#jmsConsumer.CpeDisc_Sub_Svc</ADB:endpointReference>
                <ADB:exceptionsTable>ERR_CPE_DISC</ADB:exceptionsTable>
            </ADB:subscriber>
            <ADB:subscriber xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002" resourceType="adb.table.subscriber">
                <ADB:deployed>true</ADB:deployed>
                <ADB:transportType>jms</ADB:transportType>
                <ADB:qualityOfService>ae.sessions.rvcmsession</ADB:qualityOfService>
                <ADB:wireFormat>aeXml</ADB:wireFormat>
                <ADB:isAdorapps>false</ADB:isAdorapps>
                <ADB:allowKeys>true</ADB:allowKeys>
                <ADB:useSeperateThread>false</ADB:useSeperateThread>
                <ADB:opaqueTable>false</ADB:opaqueTable>
                <ADB:replySenderQualityOfService>Persistent</ADB:replySenderQualityOfService>
                <ADB:deliveryMode>2</ADB:deliveryMode>
                <ADB:name>CpeCustGrp_Sub_Svc</ADB:name>
                <ADB:connectionFactoryType>1</ADB:connectionFactoryType>
                <ADB:repoEndpointType>endpoint.JMSSubscriber</ADB:repoEndpointType>
                <ADB:sessionReference>/Adapter Services/Mex_OfferExport_Sub_ADB_Cfg.adb#jmsSession.JMSQueue</ADB:sessionReference>
                <ADB:classReference isRef="true">/AESchemas/ae/ADB/Mex_OfferExport_Sub_ADB_Cfg.aeschema#class.CPE_CUST_GRP</ADB:classReference>
                <ADB:destinationTable>CPE_CUST_GRP</ADB:destinationTable>
                <ADB:columnsToSubscribe>CUST_GRP_ID</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> CUST_GRP_NM</ADB:columnsToSubscribe>
                <ADB:schemas xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                    <ADB:table xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                        <ADB:name>CPE_CUST_GRP</ADB:name>
                    </ADB:table>
                </ADB:schemas>
                <ADB:destination>%%Destinations/Queues/GLB_ADB_CPECUSTGRP_QUEUE%%</ADB:destination>
                <ADB:endpointReference isRef="true">#jmsConsumer.CpeCustGrp_Sub_Svc</ADB:endpointReference>
                <ADB:exceptionsTable>ERR_CPE_CUST_GRP</ADB:exceptionsTable>
            </ADB:subscriber>
            <ADB:subscriber xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002" resourceType="adb.table.subscriber">
                <ADB:deployed>true</ADB:deployed>
                <ADB:transportType>jms</ADB:transportType>
                <ADB:qualityOfService>ae.sessions.rvcmsession</ADB:qualityOfService>
                <ADB:wireFormat>aeXml</ADB:wireFormat>
                <ADB:isAdorapps>false</ADB:isAdorapps>
                <ADB:allowKeys>true</ADB:allowKeys>
                <ADB:useSeperateThread>false</ADB:useSeperateThread>
                <ADB:opaqueTable>false</ADB:opaqueTable>
                <ADB:replySenderQualityOfService>Persistent</ADB:replySenderQualityOfService>
                <ADB:deliveryMode>2</ADB:deliveryMode>
                <ADB:name>CpeRwrdOpt_Sub_Svc</ADB:name>
                <ADB:connectionFactoryType>1</ADB:connectionFactoryType>
                <ADB:repoEndpointType>endpoint.JMSSubscriber</ADB:repoEndpointType>
                <ADB:sessionReference>/Adapter Services/Mex_OfferExport_Sub_ADB_Cfg.adb#jmsSession.JMSQueue</ADB:sessionReference>
                <ADB:classReference isRef="true">/AESchemas/ae/ADB/Mex_OfferExport_Sub_ADB_Cfg.aeschema#class.CPE_RWRD_OPT</ADB:classReference>
                <ADB:destinationTable>CPE_RWRD_OPT</ADB:destinationTable>
                <ADB:columnsToSubscribe>RWRD_OPT_ID</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> INCNT_ID</ADB:columnsToSubscribe>
                <ADB:schemas xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                    <ADB:table xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                        <ADB:name>CPE_RWRD_OPT</ADB:name>
                    </ADB:table>
                </ADB:schemas>
                <ADB:destination>%%Destinations/Queues/GLB_ADB_CPERWRDOPT_QUEUE%%</ADB:destination>
                <ADB:endpointReference isRef="true">#jmsConsumer.CpeRwrdOpt_Sub_Svc</ADB:endpointReference>
                <ADB:exceptionsTable>ERR_CPE_RWRD_OPT</ADB:exceptionsTable>
            </ADB:subscriber>
            <ADB:subscriber xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002" resourceType="adb.table.subscriber">
                <ADB:deployed>true</ADB:deployed>
                <ADB:transportType>jms</ADB:transportType>
                <ADB:qualityOfService>ae.sessions.rvcmsession</ADB:qualityOfService>
                <ADB:wireFormat>aeXml</ADB:wireFormat>
                <ADB:isAdorapps>false</ADB:isAdorapps>
                <ADB:allowKeys>true</ADB:allowKeys>
                <ADB:useSeperateThread>false</ADB:useSeperateThread>
                <ADB:opaqueTable>false</ADB:opaqueTable>
                <ADB:replySenderQualityOfService>Persistent</ADB:replySenderQualityOfService>
                <ADB:deliveryMode>2</ADB:deliveryMode>
                <ADB:name>CpeIncntCustGrp_Sub_Svc</ADB:name>
                <ADB:connectionFactoryType>1</ADB:connectionFactoryType>
                <ADB:repoEndpointType>endpoint.JMSSubscriber</ADB:repoEndpointType>
                <ADB:sessionReference>/Adapter Services/Mex_OfferExport_Sub_ADB_Cfg.adb#jmsSession.JMSQueue</ADB:sessionReference>
                <ADB:classReference isRef="true">/AESchemas/ae/ADB/Mex_OfferExport_Sub_ADB_Cfg.aeschema#class.CPE_INCNT_CUST_GRP</ADB:classReference>
                <ADB:destinationTable>CPE_INCNT_CUST_GRP</ADB:destinationTable>
                <ADB:columnsToSubscribe>INCNT_CUST_ID</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> RWRD_OPT_ID</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> CUST_GRP_ID</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> EXCLD_USRS</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> DELD_SW</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> LST_UPDT_TS</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> COND_NBR</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> REQ_FRM_TMPLT_SW</ADB:columnsToSubscribe>
                <ADB:schemas xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                    <ADB:table xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                        <ADB:name>CPE_INCNT_CUST_GRP</ADB:name>
                    </ADB:table>
                </ADB:schemas>
                <ADB:destination>%%Destinations/Queues/GLB_ADB_CPEINCNTCUSTGRP_QUEUE%%</ADB:destination>
                <ADB:endpointReference isRef="true">#jmsConsumer.CpeIncntCustGrp_Sub_Svc</ADB:endpointReference>
                <ADB:exceptionsTable>ERR_CPE_INCNT_CUST_GRP</ADB:exceptionsTable>
            </ADB:subscriber>
            <ADB:subscriber xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002" resourceType="adb.table.subscriber">
                <ADB:deployed>true</ADB:deployed>
                <ADB:transportType>jms</ADB:transportType>
                <ADB:qualityOfService>ae.sessions.rvcmsession</ADB:qualityOfService>
                <ADB:wireFormat>aeXml</ADB:wireFormat>
                <ADB:isAdorapps>false</ADB:isAdorapps>
                <ADB:allowKeys>true</ADB:allowKeys>
                <ADB:useSeperateThread>false</ADB:useSeperateThread>
                <ADB:opaqueTable>false</ADB:opaqueTable>
                <ADB:replySenderQualityOfService>Persistent</ADB:replySenderQualityOfService>
                <ADB:deliveryMode>2</ADB:deliveryMode>
                <ADB:name>CpeLocGrp_Sub_Svc</ADB:name>
                <ADB:connectionFactoryType>1</ADB:connectionFactoryType>
                <ADB:repoEndpointType>endpoint.JMSSubscriber</ADB:repoEndpointType>
                <ADB:sessionReference>/Adapter Services/Mex_OfferExport_Sub_ADB_Cfg.adb#jmsSession.JMSQueue</ADB:sessionReference>
                <ADB:classReference isRef="true">/AESchemas/ae/ADB/Mex_OfferExport_Sub_ADB_Cfg.aeschema#class.CPE_LOC_GRP</ADB:classReference>
                <ADB:destinationTable>CPE_LOC_GRP</ADB:destinationTable>
                <ADB:columnsToSubscribe>LOC_GRP_ID</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> LOC_GRP_NM</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> DES</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> CRE8D_DT</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> EXT_GRP_ID</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> EXT_SEQ_NBR</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> EXT_EXCLD</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> ALL_LOCS_SW</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> LST_UPDT_TS</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> STAT_FLAG</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> TCRMA_STAT_FLAG</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> ENGN_ID</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> BANNER_ID</ADB:columnsToSubscribe>
                <ADB:schemas xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                    <ADB:table xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                        <ADB:name>CPE_LOC_GRP</ADB:name>
                    </ADB:table>
                </ADB:schemas>
                <ADB:destination>%%Destinations/Queues/GLB_ADB_CPELOCGRP_QUEUE%%</ADB:destination>
                <ADB:endpointReference isRef="true">#jmsConsumer.CpeLocGrp_Sub_Svc</ADB:endpointReference>
                <ADB:exceptionsTable>ERR_CPE_LOC_GRP</ADB:exceptionsTable>
            </ADB:subscriber>
            <ADB:subscriber xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002" resourceType="adb.table.subscriber">
                <ADB:deployed>true</ADB:deployed>
                <ADB:transportType>jms</ADB:transportType>
                <ADB:qualityOfService>ae.sessions.rvcmsession</ADB:qualityOfService>
                <ADB:wireFormat>aeXml</ADB:wireFormat>
                <ADB:isAdorapps>false</ADB:isAdorapps>
                <ADB:allowKeys>true</ADB:allowKeys>
                <ADB:useSeperateThread>false</ADB:useSeperateThread>
                <ADB:opaqueTable>false</ADB:opaqueTable>
                <ADB:replySenderQualityOfService>Persistent</ADB:replySenderQualityOfService>
                <ADB:deliveryMode>2</ADB:deliveryMode>
                <ADB:name>CpeLoc_Sub_Svc</ADB:name>
                <ADB:connectionFactoryType>1</ADB:connectionFactoryType>
                <ADB:repoEndpointType>endpoint.JMSSubscriber</ADB:repoEndpointType>
                <ADB:sessionReference>/Adapter Services/Mex_OfferExport_Sub_ADB_Cfg.adb#jmsSession.JMSQueue</ADB:sessionReference>
                <ADB:classReference isRef="true">/AESchemas/ae/ADB/Mex_OfferExport_Sub_ADB_Cfg.aeschema#class.CPE_LOC</ADB:classReference>
                <ADB:destinationTable>CPE_LOC</ADB:destinationTable>
                <ADB:columnsToSubscribe>LOC_ID</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> EXT_LOC_CD</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> LOC_NM</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> ADR_1</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> ADR_2</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> CTY</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> ST</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> ZIP</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> TSTING_LOC</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> LST_UPDT_TS</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> STAT_FLAG</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> CNTRY_ID</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> CONTC_NM</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> PHN_NBR</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> GEN_IPL</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> LST_IPL</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> CMOA_DPLY_STAT</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> ENGN_ID</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> BANNER_ID</ADB:columnsToSubscribe>
                <ADB:schemas xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                    <ADB:table xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                        <ADB:name>CPE_LOC</ADB:name>
                    </ADB:table>
                </ADB:schemas>
                <ADB:destination>%%Destinations/Queues/GLB_ADB_CPELOC_QUEUE%%</ADB:destination>
                <ADB:endpointReference isRef="true">#jmsConsumer.CpeLoc_Sub_Svc</ADB:endpointReference>
                <ADB:exceptionsTable>ERR_CPE_LOC</ADB:exceptionsTable>
            </ADB:subscriber>
            <ADB:subscriber xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002" resourceType="adb.table.subscriber">
                <ADB:deployed>true</ADB:deployed>
                <ADB:transportType>jms</ADB:transportType>
                <ADB:qualityOfService>ae.sessions.rvcmsession</ADB:qualityOfService>
                <ADB:wireFormat>aeXml</ADB:wireFormat>
                <ADB:isAdorapps>false</ADB:isAdorapps>
                <ADB:allowKeys>true</ADB:allowKeys>
                <ADB:useSeperateThread>false</ADB:useSeperateThread>
                <ADB:opaqueTable>false</ADB:opaqueTable>
                <ADB:replySenderQualityOfService>Persistent</ADB:replySenderQualityOfService>
                <ADB:deliveryMode>2</ADB:deliveryMode>
                <ADB:name>CpeTrmnlTyps_Sub_Svc</ADB:name>
                <ADB:connectionFactoryType>1</ADB:connectionFactoryType>
                <ADB:repoEndpointType>endpoint.JMSSubscriber</ADB:repoEndpointType>
                <ADB:sessionReference>/Adapter Services/Mex_OfferExport_Sub_ADB_Cfg.adb#jmsSession.JMSQueue</ADB:sessionReference>
                <ADB:classReference isRef="true">/AESchemas/ae/ADB/Mex_OfferExport_Sub_ADB_Cfg.aeschema#class.CPE_TRMNL_TYPS</ADB:classReference>
                <ADB:destinationTable>CPE_TRMNL_TYPS</ADB:destinationTable>
                <ADB:columnsToSubscribe>TRMNL_TYP_ID</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> TRMNL_TYP_NM</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> DES</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> EXT_TRMNL_CD</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> LST_UPDT_TS</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> LAYOT_ID</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> ENGN_ID</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> FUEL_PROCNG_SW</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> ANY_TRMNL_SW</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> SPEC_PROMOS_ONLY_SW</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> BANNER_ID</ADB:columnsToSubscribe>
                <ADB:schemas xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                    <ADB:table xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                        <ADB:name>CPE_TRMNL_TYPS</ADB:name>
                    </ADB:table>
                </ADB:schemas>
                <ADB:destination>%%Destinations/Queues/GLB_ADB_CPETRMNLTYPS_QUEUE%%</ADB:destination>
                <ADB:endpointReference isRef="true">#jmsConsumer.CpeTrmnlTyps_Sub_Svc</ADB:endpointReference>
                <ADB:exceptionsTable>ERR_CPE_TRMNL_TYPS</ADB:exceptionsTable>
            </ADB:subscriber>
            <ADB:subscriber xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002" resourceType="adb.table.subscriber">
                <ADB:deployed>true</ADB:deployed>
                <ADB:transportType>jms</ADB:transportType>
                <ADB:qualityOfService>ae.sessions.rvcmsession</ADB:qualityOfService>
                <ADB:wireFormat>aeXml</ADB:wireFormat>
                <ADB:isAdorapps>false</ADB:isAdorapps>
                <ADB:allowKeys>true</ADB:allowKeys>
                <ADB:useSeperateThread>false</ADB:useSeperateThread>
                <ADB:opaqueTable>false</ADB:opaqueTable>
                <ADB:replySenderQualityOfService>Persistent</ADB:replySenderQualityOfService>
                <ADB:deliveryMode>2</ADB:deliveryMode>
                <ADB:name>CpeProdGrp_Sub_Svc</ADB:name>
                <ADB:connectionFactoryType>1</ADB:connectionFactoryType>
                <ADB:repoEndpointType>endpoint.JMSSubscriber</ADB:repoEndpointType>
                <ADB:sessionReference>/Adapter Services/Mex_OfferExport_Sub_ADB_Cfg.adb#jmsSession.JMSQueue</ADB:sessionReference>
                <ADB:classReference isRef="true">/AESchemas/ae/ADB/Mex_OfferExport_Sub_ADB_Cfg.aeschema#class.CPE_PROD_GRP</ADB:classReference>
                <ADB:destinationTable>CPE_PROD_GRP</ADB:destinationTable>
                <ADB:columnsToSubscribe>PROD_GRP_ID</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> PROD_GRP_NM</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> ANY_PROD_SW</ADB:columnsToSubscribe>
                <ADB:schemas xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                    <ADB:table xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                        <ADB:name>CPE_PROD_GRP</ADB:name>
                    </ADB:table>
                </ADB:schemas>
                <ADB:destination>%%Destinations/Queues/GLB_ADB_CPEPRODGRP_QUEUE%%</ADB:destination>
                <ADB:endpointReference isRef="true">#jmsConsumer.CpeProdGrp_Sub_Svc</ADB:endpointReference>
                <ADB:exceptionsTable>ERR_CPE_PROD_GRP</ADB:exceptionsTable>
            </ADB:subscriber>
            <ADB:subscriber xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002" resourceType="adb.table.subscriber">
                <ADB:deployed>true</ADB:deployed>
                <ADB:transportType>jms</ADB:transportType>
                <ADB:qualityOfService>ae.sessions.rvcmsession</ADB:qualityOfService>
                <ADB:wireFormat>aeXml</ADB:wireFormat>
                <ADB:isAdorapps>false</ADB:isAdorapps>
                <ADB:allowKeys>true</ADB:allowKeys>
                <ADB:useSeperateThread>false</ADB:useSeperateThread>
                <ADB:opaqueTable>false</ADB:opaqueTable>
                <ADB:replySenderQualityOfService>Persistent</ADB:replySenderQualityOfService>
                <ADB:deliveryMode>2</ADB:deliveryMode>
                <ADB:name>CpeIncntProdGrps_Sub_Svc</ADB:name>
                <ADB:connectionFactoryType>1</ADB:connectionFactoryType>
                <ADB:repoEndpointType>endpoint.JMSSubscriber</ADB:repoEndpointType>
                <ADB:sessionReference>/Adapter Services/Mex_OfferExport_Sub_ADB_Cfg.adb#jmsSession.JMSQueue</ADB:sessionReference>
                <ADB:classReference isRef="true">/AESchemas/ae/ADB/Mex_OfferExport_Sub_ADB_Cfg.aeschema#class.CPE_INCNT_PROD_GRPS</ADB:classReference>
                <ADB:destinationTable>CPE_INCNT_PROD_GRPS</ADB:destinationTable>
                <ADB:columnsToSubscribe>INCNT_PROD_GRP_ID</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> RWRD_OPT_ID</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> INCNT_QTY</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> QTY_UNT_TYP</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> ACCUM_MIN</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> ACCUM_LIM</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> ACCUM_PRD</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> EXCLD_PRODS</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> DELD_SW</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> LST_UPDT_TS</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> COND_NBR</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> REQ_FRM_TMPLT_SW</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> DISQUALIFIER</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> PROD_GRP_ID</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> PROD_COMBO_ID</ADB:columnsToSubscribe>
                <ADB:schemas xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                    <ADB:table xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                        <ADB:name>CPE_INCNT_PROD_GRPS</ADB:name>
                    </ADB:table>
                </ADB:schemas>
                <ADB:destination>%%Destinations/Queues/GLB_ADB_CPEINCNTPRODGRP_QUEUE%%</ADB:destination>
                <ADB:endpointReference isRef="true">#jmsConsumer.CpeIncntProdGrps_Sub_Svc</ADB:endpointReference>
                <ADB:exceptionsTable>ERR_CPE_INCNT_PROD_GRPS</ADB:exceptionsTable>
            </ADB:subscriber>
        </ADB:operations>
        <ADB:activedb xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
            <ADB:defaultDataSource xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                <ADB:name>%%AdapterConfig/DBSTG/GLB_DSN_NAME%%</ADB:name>
                <ADB:user>%%AdapterConfig/DBSTG/GLB_SQL_USER_NAME%%</ADB:user>
                <ADB:driver>%%Connections/DB/DBSTG/GLB_JDBC_DRIVER%%</ADB:driver>
                <ADB:url>%%AdapterConfig/DBSTG/GLB_JDBC_URL%%</ADB:url>
                <ADB:disConnCode/>
                <ADB:dbmsType>SQLSERVER</ADB:dbmsType>
                <ADB:password>%%AdapterConfig/DBSTG/GLB_SQL_PASSWORD%%</ADB:password>
            </ADB:defaultDataSource>
            <ADB:threadCount xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                <ADB:commInterfaces>1</ADB:commInterfaces>
                <ADB:commRRInterfaces>1</ADB:commRRInterfaces>
                <ADB:dbInterfaces>1</ADB:dbInterfaces>
                <ADB:dbRRInterfaces>1</ADB:dbRRInterfaces>
                <ADB:pubManagers>1</ADB:pubManagers>
                <ADB:subManagers>1</ADB:subManagers>
            </ADB:threadCount>
            <ADB:agentOptions xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                <ADB:debug>2</ADB:debug>
                <ADB:verbose>on</ADB:verbose>
                <ADB:useTraceFile/>
                <ADB:publishChildData>on</ADB:publishChildData>
                <ADB:poll>5000</ADB:poll>
                <ADB:maxRows>0</ADB:maxRows>
                <ADB:usePollingBatchSize>false</ADB:usePollingBatchSize>
                <ADB:batchPubStatusUpdates>off</ADB:batchPubStatusUpdates>
                <ADB:pubBatchConfirmSize>0</ADB:pubBatchConfirmSize>
                <ADB:pubBatchConfirmTimeout>10000</ADB:pubBatchConfirmTimeout>
                <ADB:subBatchCommitSize>0</ADB:subBatchCommitSize>
                <ADB:subBatchCommitTimeout>10000</ADB:subBatchCommitTimeout>
                <ADB:subBulkInsertSize>1</ADB:subBulkInsertSize>
                <ADB:rvMaxQueueSize>0</ADB:rvMaxQueueSize>
                <ADB:useExceptTable>on</ADB:useExceptTable>
                <ADB:rebuildAfterException>off</ADB:rebuildAfterException>
                <ADB:encoding>ASCII</ADB:encoding>
                <ADB:jmsDestinationPrefix>%%Domain%%.%%Deployment%%.adb.%%InstanceId%%</ADB:jmsDestinationPrefix>
                <ADB:retryTotal>3</ADB:retryTotal>
                <ADB:sleepBetweenRetries>10000</ADB:sleepBetweenRetries>
                <ADB:retryBeforeSuspend>1</ADB:retryBeforeSuspend>
                <ADB:stopOnRetryFail>RETRY_FAIL_LAST_SERVICE</ADB:stopOnRetryFail>
                <ADB:useDesignTimeConnSetting>true</ADB:useDesignTimeConnSetting>
                <ADB:rpcMaxRows>0</ADB:rpcMaxRows>
                <ADB:scriptFileName>%%ADBScriptFileDir%%\Mex_OfferExport_Sub_ADB_Cfg.sql</ADB:scriptFileName>
                <ADB:termSubject>%%Destinations/Topics/GLB_COPIENT_ADB_SHUTDOWN_TOPIC%%</ADB:termSubject>
            </ADB:agentOptions>
        </ADB:activedb>
        <ADB:operations xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002"/>
        <ADB:operations xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002"/>
        <ADB:operations xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002"/>
        <ADB:operations xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002"/>
        <ADB:operations xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002"/>
        <ADB:operations xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002"/>
        <ADB:operations xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002"/>
        <ADB:operations xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002"/>
        <ADB:operations xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002"/>
        <ADB:operations xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002"/>
        <ADB:operations xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002"/>
        <ADB:operations xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002"/>
        <ADB:operations xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002"/>
        <ADB:operations xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002"/>
        <ADB:operations xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002"/>
        <ADB:operations xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002"/>
        <ADB:operations xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002"/>
        <ADB:operations xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002"/>
        <ADB:operations xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002"/>
        <ADB:operations xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002"/>
        <ADB:operations xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002"/>
        <ADB:operations xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002"/>
        <ADB:operations xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002"/>
        <ADB:operations xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002"/>
        <ADB:operations xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002"/>
        <ADB:operations xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002"/>
        <ADB:operations xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002"/>
        <ADB:operations xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002"/>
        <ADB:operations xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002"/>
        <ADB:operations xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002"/>
        <ADB:operations xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002"/>
        <ADB:operations xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002"/>
        <ADB:operations xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002"/>
        <ADB:operations xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002"/>
        <ADB:operations xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002"/>
        <ADB:operations xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002"/>
        <ADB:operations xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002"/>
        <ADB:operations xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002"/>
        <ADB:operations xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002"/>
    </ADB:adapter>
    <AEService:rvSession xmlns:AEService="http://www.tibco.com/xmlns/aemeta/services/2002" objectType="session.RV" name="ADBRvSession">
        <AEService:daemon>%%RvDaemon%%</AEService:daemon>
        <AEService:service>%%RvService%%</AEService:service>
        <AEService:network>%%RvNetwork%%</AEService:network>
        <AEService:mode>asynchronous</AEService:mode>
    </AEService:rvSession>
    <AEService:rvSession xmlns:AEService="http://www.tibco.com/xmlns/aemeta/services/2002" objectType="session.RV" name="ADBAgentRvSession">
        <AEService:daemon>%%RvDaemon%%</AEService:daemon>
        <AEService:service>%%RvService%%</AEService:service>
        <AEService:network>%%RvNetwork%%</AEService:network>
        <AEService:mode>asynchronous</AEService:mode>
    </AEService:rvSession>
    <AEService:jmsSession xmlns:AEService="http://www.tibco.com/xmlns/aemeta/services/2002" objectType="session.JMS" name="ADBAgentJmsSession">
        <AEService:connFactoryType>2</AEService:connFactoryType>
        <AEService:connFactoryName>QueueConnectionFactory</AEService:connFactoryName>
        <AEService:jndiLookups>false</AEService:jndiLookups>
        <AEService:providerUrl>%%JmsProviderUrl%%</AEService:providerUrl>
        <AEService:providerCtxFactory>com.tibco.tibjms.naming.TibjmsInitialContextFactory</AEService:providerCtxFactory>
        <AEService:connUsername>%%JmsUser%%</AEService:connUsername>
        <AEService:connPassword>%%JmsPassword%%</AEService:connPassword>
    </AEService:jmsSession>
    <AEService:jmsSession xmlns:AEService="http://www.tibco.com/xmlns/aemeta/services/2002" objectType="session.JMS" name="JMSQueue">
        <AEService:connFactoryType>1</AEService:connFactoryType>
        <AEService:connFactoryName>QueueConnectionFactory</AEService:connFactoryName>
        <AEService:jndiLookups>false</AEService:jndiLookups>
        <AEService:providerUrl>%%JmsProviderUrl%%</AEService:providerUrl>
        <AEService:providerCtxFactory>com.tibco.tibjms.naming.TibjmsInitialContextFactory</AEService:providerCtxFactory>
        <AEService:connUsername>%%JmsUser%%</AEService:connUsername>
        <AEService:connPassword>%%JmsPassword%%</AEService:connPassword>
    </AEService:jmsSession>
    <AEService:rvSession xmlns:AEService="http://www.tibco.com/xmlns/aemeta/services/2002" objectType="session.RV" name="ADBHawkDefault">
        <AEService:daemon>%%TIBHawkDaemon%%</AEService:daemon>
        <AEService:service>%%TIBHawkService%%</AEService:service>
        <AEService:network>%%TIBHawkNetwork%%</AEService:network>
        <AEService:mode>asynchronous</AEService:mode>
    </AEService:rvSession>
    <AEService:jmsProducer xmlns:AEService="http://www.tibco.com/xmlns/aemeta/services/2002" objectType="endpoint.JMSPublisher" name="TESTPUBLISHER">
        <AEService:wireFormat>aeXml</AEService:wireFormat>
        <AEService:destination>TEST.ADAPTER.QUEUE</AEService:destination>
        <AEService:deliveryMode>1</AEService:deliveryMode>
        <AEService:replyDestination/>
        <AEService:messageTimeout>0</AEService:messageTimeout>
        <AEService:session isRef="true">#jmsSession.JMSQueue</AEService:session>
    </AEService:jmsProducer>
    <AEService:jmsConsumer xmlns:AEService="http://www.tibco.com/xmlns/aemeta/services/2002" objectType="endpoint.JMSSubscriber" name="CpeIncntProdGrps_Sub_Svc">
        <AEService:wireFormat>aeXml</AEService:wireFormat>
        <AEService:deliveryMode>2</AEService:deliveryMode>
        <AEService:autoConfirm>true</AEService:autoConfirm>
        <AEService:listenTimeout>0</AEService:listenTimeout>
        <AEService:session isRef="true">#jmsSession.JMSQueue</AEService:session>
        <AEService:destination>%%Destinations/Queues/GLB_ADB_CPEINCNTPRODGRP_QUEUE%%</AEService:destination>
        <AEService:class isRef="true">/AESchemas/ae/ADB/Mex_OfferExport_Sub_ADB_Cfg.aeschema#class.CPE_INCNT_PROD_GRPS</AEService:class>
    </AEService:jmsConsumer>
    <AEService:jmsConsumer xmlns:AEService="http://www.tibco.com/xmlns/aemeta/services/2002" objectType="endpoint.JMSSubscriber" name="CpeProdGrp_Sub_Svc">
        <AEService:wireFormat>aeXml</AEService:wireFormat>
        <AEService:deliveryMode>2</AEService:deliveryMode>
        <AEService:autoConfirm>true</AEService:autoConfirm>
        <AEService:listenTimeout>0</AEService:listenTimeout>
        <AEService:session isRef="true">#jmsSession.JMSQueue</AEService:session>
        <AEService:destination>%%Destinations/Queues/GLB_ADB_CPEPRODGRP_QUEUE%%</AEService:destination>
        <AEService:class isRef="true">/AESchemas/ae/ADB/Mex_OfferExport_Sub_ADB_Cfg.aeschema#class.CPE_PROD_GRP</AEService:class>
    </AEService:jmsConsumer>
    <AEService:jmsConsumer xmlns:AEService="http://www.tibco.com/xmlns/aemeta/services/2002" objectType="endpoint.JMSSubscriber" name="CpeTrmnlTyps_Sub_Svc">
        <AEService:wireFormat>aeXml</AEService:wireFormat>
        <AEService:deliveryMode>2</AEService:deliveryMode>
        <AEService:autoConfirm>true</AEService:autoConfirm>
        <AEService:listenTimeout>0</AEService:listenTimeout>
        <AEService:session isRef="true">#jmsSession.JMSQueue</AEService:session>
        <AEService:destination>%%Destinations/Queues/GLB_ADB_CPETRMNLTYPS_QUEUE%%</AEService:destination>
        <AEService:class isRef="true">/AESchemas/ae/ADB/Mex_OfferExport_Sub_ADB_Cfg.aeschema#class.CPE_TRMNL_TYPS</AEService:class>
    </AEService:jmsConsumer>
    <AEService:jmsConsumer xmlns:AEService="http://www.tibco.com/xmlns/aemeta/services/2002" objectType="endpoint.JMSSubscriber" name="CpeLoc_Sub_Svc">
        <AEService:wireFormat>aeXml</AEService:wireFormat>
        <AEService:deliveryMode>2</AEService:deliveryMode>
        <AEService:autoConfirm>true</AEService:autoConfirm>
        <AEService:listenTimeout>0</AEService:listenTimeout>
        <AEService:session isRef="true">#jmsSession.JMSQueue</AEService:session>
        <AEService:destination>%%Destinations/Queues/GLB_ADB_CPELOC_QUEUE%%</AEService:destination>
        <AEService:class isRef="true">/AESchemas/ae/ADB/Mex_OfferExport_Sub_ADB_Cfg.aeschema#class.CPE_LOC</AEService:class>
    </AEService:jmsConsumer>
    <AEService:jmsConsumer xmlns:AEService="http://www.tibco.com/xmlns/aemeta/services/2002" objectType="endpoint.JMSSubscriber" name="CpeLocGrp_Sub_Svc">
        <AEService:wireFormat>aeXml</AEService:wireFormat>
        <AEService:deliveryMode>2</AEService:deliveryMode>
        <AEService:autoConfirm>true</AEService:autoConfirm>
        <AEService:listenTimeout>0</AEService:listenTimeout>
        <AEService:session isRef="true">#jmsSession.JMSQueue</AEService:session>
        <AEService:destination>%%Destinations/Queues/GLB_ADB_CPELOCGRP_QUEUE%%</AEService:destination>
        <AEService:class isRef="true">/AESchemas/ae/ADB/Mex_OfferExport_Sub_ADB_Cfg.aeschema#class.CPE_LOC_GRP</AEService:class>
    </AEService:jmsConsumer>
    <AEService:jmsConsumer xmlns:AEService="http://www.tibco.com/xmlns/aemeta/services/2002" objectType="endpoint.JMSSubscriber" name="CpeIncntCustGrp_Sub_Svc">
        <AEService:wireFormat>aeXml</AEService:wireFormat>
        <AEService:deliveryMode>2</AEService:deliveryMode>
        <AEService:autoConfirm>true</AEService:autoConfirm>
        <AEService:listenTimeout>0</AEService:listenTimeout>
        <AEService:session isRef="true">#jmsSession.JMSQueue</AEService:session>
        <AEService:destination>%%Destinations/Queues/GLB_ADB_CPEINCNTCUSTGRP_QUEUE%%</AEService:destination>
        <AEService:class isRef="true">/AESchemas/ae/ADB/Mex_OfferExport_Sub_ADB_Cfg.aeschema#class.CPE_INCNT_CUST_GRP</AEService:class>
    </AEService:jmsConsumer>
    <AEService:jmsConsumer xmlns:AEService="http://www.tibco.com/xmlns/aemeta/services/2002" objectType="endpoint.JMSSubscriber" name="CpeRwrdOpt_Sub_Svc">
        <AEService:wireFormat>aeXml</AEService:wireFormat>
        <AEService:deliveryMode>2</AEService:deliveryMode>
        <AEService:autoConfirm>true</AEService:autoConfirm>
        <AEService:listenTimeout>0</AEService:listenTimeout>
        <AEService:session isRef="true">#jmsSession.JMSQueue</AEService:session>
        <AEService:destination>%%Destinations/Queues/GLB_ADB_CPERWRDOPT_QUEUE%%</AEService:destination>
        <AEService:class isRef="true">/AESchemas/ae/ADB/Mex_OfferExport_Sub_ADB_Cfg.aeschema#class.CPE_RWRD_OPT</AEService:class>
    </AEService:jmsConsumer>
    <AEService:jmsConsumer xmlns:AEService="http://www.tibco.com/xmlns/aemeta/services/2002" objectType="endpoint.JMSSubscriber" name="CpeCustGrp_Sub_Svc">
        <AEService:wireFormat>aeXml</AEService:wireFormat>
        <AEService:deliveryMode>2</AEService:deliveryMode>
        <AEService:autoConfirm>true</AEService:autoConfirm>
        <AEService:listenTimeout>0</AEService:listenTimeout>
        <AEService:session isRef="true">#jmsSession.JMSQueue</AEService:session>
        <AEService:destination>%%Destinations/Queues/GLB_ADB_CPECUSTGRP_QUEUE%%</AEService:destination>
        <AEService:class isRef="true">/AESchemas/ae/ADB/Mex_OfferExport_Sub_ADB_Cfg.aeschema#class.CPE_CUST_GRP</AEService:class>
    </AEService:jmsConsumer>
    <AEService:jmsConsumer xmlns:AEService="http://www.tibco.com/xmlns/aemeta/services/2002" objectType="endpoint.JMSSubscriber" name="CpeDisc_Sub_Svc">
        <AEService:wireFormat>aeXml</AEService:wireFormat>
        <AEService:deliveryMode>2</AEService:deliveryMode>
        <AEService:autoConfirm>true</AEService:autoConfirm>
        <AEService:listenTimeout>0</AEService:listenTimeout>
        <AEService:session isRef="true">#jmsSession.JMSQueue</AEService:session>
        <AEService:destination>%%Destinations/Queues/GLB_ADB_CPEDISC_QUEUE%%</AEService:destination>
        <AEService:class isRef="true">/AESchemas/ae/ADB/Mex_OfferExport_Sub_ADB_Cfg.aeschema#class.CPE_DISC</AEService:class>
    </AEService:jmsConsumer>
    <AEService:jmsConsumer xmlns:AEService="http://www.tibco.com/xmlns/aemeta/services/2002" objectType="endpoint.JMSSubscriber" name="CpeIncnts_Sub_Svc">
        <AEService:wireFormat>aeXml</AEService:wireFormat>
        <AEService:deliveryMode>2</AEService:deliveryMode>
        <AEService:autoConfirm>true</AEService:autoConfirm>
        <AEService:listenTimeout>0</AEService:listenTimeout>
        <AEService:session isRef="true">#jmsSession.JMSQueue</AEService:session>
        <AEService:destination>%%Destinations/Queues/GLB_ADB_CPEINCNTS_QUEUE%%</AEService:destination>
        <AEService:class isRef="true">/AESchemas/ae/ADB/Mex_OfferExport_Sub_ADB_Cfg.aeschema#class.CPE_INCNTS</AEService:class>
    </AEService:jmsConsumer>
</Repository:repository>