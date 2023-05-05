import {stimulusPlugin} from 'esbuild-plugin-stimulus'
import yargs from 'yargs-parser'
import esbuild from 'esbuild'

const {_, ...argv} = yargs(process.argv.slice(2)) || {};

const {watch, ...esbuildArgs} = argv;

const context = await esbuild.context({
  entryPoints: ['app/javascript/application.js'],
  outdir: 'app/assets/builds',
  plugins: [stimulusPlugin()],
  ...esbuildArgs
})

try {
  if (watch) {
    context.watch()
    await new Promise(() => { })
  } else {
    await context.rebuild()
  }
} catch (_) {
  process.exitCode = 1
} finally {
  context.dispose()
}
