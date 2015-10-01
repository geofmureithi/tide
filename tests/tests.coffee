require "mocha/mocha.js"

chai = require "chai"
chaiChanges = require "chai-changes"
chaiAsPromised = require "chai-as-promised"
sinonChai = require "sinon-chai"

chai.should()
chai.use chaiAsPromised
chai.use chaiChanges
chai.use sinonChai

mocha.setup "bdd"


require "./tide"
require "./tide/component"

if window.mochaPhantomJS
  mochaPhantomJS.run()
else
  mocha.run()
