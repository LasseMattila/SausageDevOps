@description('Specifies the location for resources.')
param location string = 'west europe'

resource symbolicname 'Microsoft.Web/staticSites@2022-03-01' = {
  name: 'nakkistaticapp'
  location: location
  sku: {
    capabilities: [
      {
        name: 'string'
        reason: 'string'
        value: 'string'
      }
    ]
    capacity: int
    family: 'string'
    locations: [
      'string'
    ]
    name: 'string'
    size: 'string'
    skuCapacity: {
      default: int
      elasticMaximum: int
      maximum: int
      minimum: int
      scaleType: 'string'
    }
    tier: 'string'
  }
  kind: 'string'
  identity: {
    type: 'string'
    userAssignedIdentities: {}
  }
  properties: {
    allowConfigFileUpdates: bool
    branch: 'string'
    buildProperties: {
      apiBuildCommand: 'string'
      apiLocation: 'string'
      appArtifactLocation: 'string'
      appBuildCommand: 'string'
      appLocation: 'string'
      githubActionSecretNameOverride: 'string'
      outputLocation: 'string'
      skipGithubActionWorkflowGeneration: bool
    }
  }
}
