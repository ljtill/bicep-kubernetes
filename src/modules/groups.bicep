// ------
// Scopes
// ------

targetScope = 'subscription'

// ---------
// Resources
// ---------

resource clusters 'Microsoft.Resources/resourceGroups@2023-07-01' = {
  name: settings.clusters.name
  location: settings.clusters.location
  properties: {}
  tags: settings.clusters.tags
}

resource services 'Microsoft.Resources/resourceGroups@2023-07-01' = {
  name: settings.services.name
  location: settings.services.location
  properties: {}
  tags: settings.services.tags
}

// ----------
// Parameters
// ----------

param defaults object
param settings object
