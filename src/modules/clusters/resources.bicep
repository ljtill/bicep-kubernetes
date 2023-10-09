// ------
// Scopes
// ------

targetScope = 'resourceGroup'

// ---------
// Resources
// ---------

resource clusters 'Microsoft.ContainerService/managedClusters@2023-08-01' = [for managedCluster in resources.managedClusters: {
  name: managedCluster.name
  location: location
  identity: {
    type: 'SystemAssigned'
  }
  properties: {
    dnsPrefix: managedCluster.name
    agentPoolProfiles: [
      {
        name: 'system'
        count: 3
        vmSize: 'Standard_D4ds_v5'
        enableAutoScaling: false
        osType: 'Linux'
        mode: 'System'
        availabilityZones: region.availabilityZones ? [ '1', '2', '3' ] : []
      }
      {
        name: 'user'
        count: 3
        vmSize: 'Standard_D8ds_v5'
        enableAutoScaling: true
        minCount: 1
        maxCount: 20
        osType: 'Linux'
        mode: 'User'
        availabilityZones: region.availabilityZones ? [ '1', '2', '3' ] : []
      }
    ]
    autoUpgradeProfile: {
      upgradeChannel: 'patch'
    }
  }
}]

// ---------
// Variables
// ---------

var region = first(filter(defaults.regions, i => i.name == location))
var location = settings.resourceGroups.clusters.location
var resources = settings.resourceGroups.clusters.resources

// ----------
// Parameters
// ----------

param defaults object
param settings object
