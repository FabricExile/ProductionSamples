#
# Copyright (c) 2010-2017 Fabric Software Inc. All rights reserved.
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

  productionSamplesFiles = []

  # "Exts"
  env = parentEnv.CloneSubStage('Exts').CloneSubStage('ProductionSamples')
  files = []
  files = env.RecursiveInstall(
    env['STAGE_DIR'],
    env.Dir('Exts').Dir('ProductionSamples').srcnode(),
    env.CollectTree(
      env.Dir('Exts').srcnode().abspath,
      excludeFilespecs=["SConscript", ".gitignore", "buildPresets.bash"],
      excludeSubdirs=[".git", ".github", "_old", "_tmp", "_wip"],
      )
    )
  productionSamplesFiles.extend(files)

  # "Resources"
  env = parentEnv.CloneSubStage('Resources').CloneSubStage('ProductionSamples')
  files = []
  files = env.RecursiveInstall(
    env['STAGE_DIR'],
    env.Dir('Resources').Dir('ProductionSamples').srcnode(),
    env.CollectTree(
      env.Dir('Resources').srcnode().abspath,
      excludeFilespecs=["SConscript", ".gitignore"],
      excludeSubdirs=[".git", ".github", "_old", "_tmp", "_wip"],
      )
    )
  productionSamplesFiles.extend(files)
    
  # "Samples/Canvas"
  env = parentEnv.CloneSubStage('Samples').CloneSubStage('Canvas').CloneSubStage('ProductionSamples')
  files = []
  files = env.RecursiveInstall(
    env['STAGE_DIR'],
    env.Dir('Samples').Dir('Canvas').Dir('ProductionSamples').srcnode(),
    env.CollectTree(
      env.Dir('Samples').Dir('Canvas').srcnode().abspath,
      excludeFilespecs=["SConscript", ".gitignore"],
      excludeSubdirs=[".git", ".github", "_old", "_tmp", "_wip"],
      )
    )
  productionSamplesFiles.extend(files)
    
  # "Samples/FabricMaya/Canvas"
  env = parentEnv.CloneSubStage('Samples').CloneSubStage('FabricMaya').CloneSubStage('Canvas').CloneSubStage('ProductionSamples')
  files = []
  files = env.RecursiveInstall(
    env['STAGE_DIR'],
    env.Dir('Samples').Dir('FabricMaya').Dir('Canvas').Dir('ProductionSamples').srcnode(),
    env.CollectTree(
      env.Dir('Samples').Dir('FabricMaya').Dir('Canvas').srcnode().abspath,
      excludeFilespecs=["SConscript", ".gitignore"],
      excludeSubdirs=[".git", ".github", "_old", "_tmp", "_wip"],
      )
    )
  productionSamplesFiles.extend(files)
    
  # "Samples/FabricModo/Canvas"
  env = parentEnv.CloneSubStage('Samples').CloneSubStage('FabricModo').CloneSubStage('Canvas').CloneSubStage('ProductionSamples')
  files = []
  files = env.RecursiveInstall(
    env['STAGE_DIR'],
    env.Dir('Samples').Dir('FabricModo').Dir('Canvas').Dir('ProductionSamples').srcnode(),
    env.CollectTree(
      env.Dir('Samples').Dir('FabricModo').Dir('Canvas').srcnode().abspath,
      excludeFilespecs=["SConscript", ".gitignore"],
      excludeSubdirs=[".git", ".github", "_old", "_tmp", "_wip"],
      )
    )
  productionSamplesFiles.extend(files)
        
  Export('productionSamplesFiles')
  Alias('productionSamples', productionSamplesFiles)
  result.extend(productionSamplesFiles)

Return('result')
