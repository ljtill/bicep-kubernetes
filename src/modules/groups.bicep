// ------
// Scopes
// ------

targetScope = 'subscription'

// ---------
// Resources
// ---------

resource clusters 'Microsoft.Resources/resourceGroups@2023-07-01' = {
  name: resourceGroups.clusters.name
  location: resourceGroups.clusters.location
  properties: {}
  tags: resourceGroups.clusters.tags
}

resource services 'Microsoft.Resources/resourceGroups@2023-07-01' = {
  name: resourceGroups.services.name
  location: resourceGroups.services.location
  properties: {}
  tags: resourceGroups.services.tags
}

// ---------
// Variables
// ---------

var resourceGroups = settings.resourceGroups

// ----------
// Parameters
// ----------

param defaults object
param settings object
