using './main.bicep'

param settings = {
  resourceGroups: {
    services: {
      name: ''
      location: ''
      resources: {}
      tags: {}
    }
    clusters: {
      name: ''
      location: ''
      resources: {
        managedClusters: [
          {
            name: ''
          }
        ]
      }
      tags: {}
    }
  }
}
