exports.pck2wem = async ({ pckFile, processingDir }) => {
  const path = require("path");
  const util = require("util");
  const platform = require('os').platform();
  const exec = util.promisify(require("child_process").execFile);
  const quickBMS =
    platform === 'win32'
      ? path.resolve(".", "libs", "quickbms.exe")
      : path.resolve(".", "libs", "quickbms");
  const waveScanBMS = path.resolve(".", "libs", "wavescan.bms");
  const inputFile = path.resolve(pckFile);

  await exec(quickBMS, [waveScanBMS, inputFile, processingDir]);
};
