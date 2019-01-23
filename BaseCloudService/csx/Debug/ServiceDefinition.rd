<?xml version="1.0" encoding="utf-8"?>
<serviceModel xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" name="BaseCloudService" generation="1" functional="0" release="0" Id="25ce6ec2-899d-45b1-81db-66f68c43380f" dslVersion="1.2.0.0" xmlns="http://schemas.microsoft.com/dsltools/RDSM">
  <groups>
    <group name="BaseCloudServiceGroup" generation="1" functional="0" release="0">
      <componentports>
        <inPort name="Site_ASP:Endpoint1" protocol="http">
          <inToChannel>
            <lBChannelMoniker name="/BaseCloudService/BaseCloudServiceGroup/LB:Site_ASP:Endpoint1" />
          </inToChannel>
        </inPort>
      </componentports>
      <settings>
        <aCS name="Site_ASP:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="">
          <maps>
            <mapMoniker name="/BaseCloudService/BaseCloudServiceGroup/MapSite_ASP:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </maps>
        </aCS>
        <aCS name="Site_ASPInstances" defaultValue="[1,1,1]">
          <maps>
            <mapMoniker name="/BaseCloudService/BaseCloudServiceGroup/MapSite_ASPInstances" />
          </maps>
        </aCS>
        <aCS name="WorkerRole1:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="">
          <maps>
            <mapMoniker name="/BaseCloudService/BaseCloudServiceGroup/MapWorkerRole1:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </maps>
        </aCS>
        <aCS name="WorkerRole1Instances" defaultValue="[1,1,1]">
          <maps>
            <mapMoniker name="/BaseCloudService/BaseCloudServiceGroup/MapWorkerRole1Instances" />
          </maps>
        </aCS>
      </settings>
      <channels>
        <lBChannel name="LB:Site_ASP:Endpoint1">
          <toPorts>
            <inPortMoniker name="/BaseCloudService/BaseCloudServiceGroup/Site_ASP/Endpoint1" />
          </toPorts>
        </lBChannel>
      </channels>
      <maps>
        <map name="MapSite_ASP:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" kind="Identity">
          <setting>
            <aCSMoniker name="/BaseCloudService/BaseCloudServiceGroup/Site_ASP/Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </setting>
        </map>
        <map name="MapSite_ASPInstances" kind="Identity">
          <setting>
            <sCSPolicyIDMoniker name="/BaseCloudService/BaseCloudServiceGroup/Site_ASPInstances" />
          </setting>
        </map>
        <map name="MapWorkerRole1:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" kind="Identity">
          <setting>
            <aCSMoniker name="/BaseCloudService/BaseCloudServiceGroup/WorkerRole1/Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </setting>
        </map>
        <map name="MapWorkerRole1Instances" kind="Identity">
          <setting>
            <sCSPolicyIDMoniker name="/BaseCloudService/BaseCloudServiceGroup/WorkerRole1Instances" />
          </setting>
        </map>
      </maps>
      <components>
        <groupHascomponents>
          <role name="Site_ASP" generation="1" functional="0" release="0" software="D:\Bibliothèque\Documents\IMIE\PAAS\BaseCloudService\csx\Debug\roles\Site_ASP" entryPoint="base\x64\WaHostBootstrapper.exe" parameters="base\x64\WaIISHost.exe " memIndex="-1" hostingEnvironment="frontendadmin" hostingEnvironmentVersion="2">
            <componentports>
              <inPort name="Endpoint1" protocol="http" portRanges="80" />
            </componentports>
            <settings>
              <aCS name="Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="" />
              <aCS name="__ModelData" defaultValue="&lt;m role=&quot;Site_ASP&quot; xmlns=&quot;urn:azure:m:v1&quot;&gt;&lt;r name=&quot;Site_ASP&quot;&gt;&lt;e name=&quot;Endpoint1&quot; /&gt;&lt;/r&gt;&lt;r name=&quot;WorkerRole1&quot; /&gt;&lt;/m&gt;" />
            </settings>
            <resourcereferences>
              <resourceReference name="DiagnosticStore" defaultAmount="[4096,4096,4096]" defaultSticky="true" kind="Directory" />
              <resourceReference name="EventStore" defaultAmount="[1000,1000,1000]" defaultSticky="false" kind="LogStore" />
            </resourcereferences>
          </role>
          <sCSPolicy>
            <sCSPolicyIDMoniker name="/BaseCloudService/BaseCloudServiceGroup/Site_ASPInstances" />
            <sCSPolicyUpdateDomainMoniker name="/BaseCloudService/BaseCloudServiceGroup/Site_ASPUpgradeDomains" />
            <sCSPolicyFaultDomainMoniker name="/BaseCloudService/BaseCloudServiceGroup/Site_ASPFaultDomains" />
          </sCSPolicy>
        </groupHascomponents>
        <groupHascomponents>
          <role name="WorkerRole1" generation="1" functional="0" release="0" software="D:\Bibliothèque\Documents\IMIE\PAAS\BaseCloudService\csx\Debug\roles\WorkerRole1" entryPoint="base\x64\WaHostBootstrapper.exe" parameters="base\x64\WaWorkerHost.exe " memIndex="-1" hostingEnvironment="consoleroleadmin" hostingEnvironmentVersion="2">
            <settings>
              <aCS name="Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="" />
              <aCS name="__ModelData" defaultValue="&lt;m role=&quot;WorkerRole1&quot; xmlns=&quot;urn:azure:m:v1&quot;&gt;&lt;r name=&quot;Site_ASP&quot;&gt;&lt;e name=&quot;Endpoint1&quot; /&gt;&lt;/r&gt;&lt;r name=&quot;WorkerRole1&quot; /&gt;&lt;/m&gt;" />
            </settings>
            <resourcereferences>
              <resourceReference name="DiagnosticStore" defaultAmount="[4096,4096,4096]" defaultSticky="true" kind="Directory" />
              <resourceReference name="EventStore" defaultAmount="[1000,1000,1000]" defaultSticky="false" kind="LogStore" />
            </resourcereferences>
          </role>
          <sCSPolicy>
            <sCSPolicyIDMoniker name="/BaseCloudService/BaseCloudServiceGroup/WorkerRole1Instances" />
            <sCSPolicyUpdateDomainMoniker name="/BaseCloudService/BaseCloudServiceGroup/WorkerRole1UpgradeDomains" />
            <sCSPolicyFaultDomainMoniker name="/BaseCloudService/BaseCloudServiceGroup/WorkerRole1FaultDomains" />
          </sCSPolicy>
        </groupHascomponents>
      </components>
      <sCSPolicy>
        <sCSPolicyUpdateDomain name="Site_ASPUpgradeDomains" defaultPolicy="[5,5,5]" />
        <sCSPolicyUpdateDomain name="WorkerRole1UpgradeDomains" defaultPolicy="[5,5,5]" />
        <sCSPolicyFaultDomain name="Site_ASPFaultDomains" defaultPolicy="[2,2,2]" />
        <sCSPolicyFaultDomain name="WorkerRole1FaultDomains" defaultPolicy="[2,2,2]" />
        <sCSPolicyID name="Site_ASPInstances" defaultPolicy="[1,1,1]" />
        <sCSPolicyID name="WorkerRole1Instances" defaultPolicy="[1,1,1]" />
      </sCSPolicy>
    </group>
  </groups>
  <implements>
    <implementation Id="c4024d19-6c4d-4538-a076-3525ff73476e" ref="Microsoft.RedDog.Contract\ServiceContract\BaseCloudServiceContract@ServiceDefinition">
      <interfacereferences>
        <interfaceReference Id="25238453-475b-44c9-88e2-3319ce1ed7d5" ref="Microsoft.RedDog.Contract\Interface\Site_ASP:Endpoint1@ServiceDefinition">
          <inPort>
            <inPortMoniker name="/BaseCloudService/BaseCloudServiceGroup/Site_ASP:Endpoint1" />
          </inPort>
        </interfaceReference>
      </interfacereferences>
    </implementation>
  </implements>
</serviceModel>