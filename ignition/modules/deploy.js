const { buildModule } = require("@nomicfoundation/hardhat-ignition/modules");

module.exports = buildModule("Metacircle", (m) => {
  const metacircle = m.contract("Metacircle");

  return { metacircle };
});