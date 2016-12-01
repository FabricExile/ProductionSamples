#
# Copyright (c) 2010-2016, Fabric Software Inc. All rights reserved.
#

Import('parentEnv')

result = []

result.extend(SConscript(
  dirs = [],
  exports = {'parentEnv': parentEnv}
  ))

# Copy ProductionSamples To Stage
if 'productionSamples' in COMMAND_LINE_TARGETS \
  or 'dist' in COMMAND_LINE_TARGETS \
  or 'dist-no-dccs' in COMMAND_LINE_TARGETS:

  env = parentEnv.CloneSubStage('Exts').CloneSubStage('ProductionSamples')
  extsFiles = []
  extsFiles = env.RecursiveInstall(
    env['STAGE_DIR'],
    env.Dir('Exts').Dir('ProductionSamples').srcnode(),
    env.CollectTree(
      env.Dir('Exts').srcnode().abspath,
      excludeFilespecs=["SConscript", ".gitignore", "buildPresets.bash"],
      excludeSubdirs=[".git", ".github", "_old", "_tmp", "_wip"],
      )
    )

  env = parentEnv.CloneSubStage('Resources').CloneSubStage('ProductionSamples')
  resourcesFiles = []
  resourcesFiles = env.RecursiveInstall(
    env['STAGE_DIR'],
    env.Dir('Resources').Dir('ProductionSamples').srcnode(),
    env.CollectTree(
      env.Dir('Resources').srcnode().abspath,
      excludeFilespecs=["SConscript", ".gitignore"],
      excludeSubdirs=[".git", ".github", "_old", "_tmp", "_wip"],
      )
    )

  productionSamplesFiles = []
  productionSamplesFiles.extend(extsFiles)
  productionSamplesFiles.extend(resourcesFiles)
    
  Export('productionSamplesFiles')
  Alias('productionSamples', productionSamplesFiles)
  result.extend(productionSamplesFiles)

Return('result')
