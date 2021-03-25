( function _WillbeNpmPublishTest_test_s_()
{

'use strict';

let _;
if( typeof module !== 'undefined' )
{
  _ = require( '../Basic.s' );
  require( 'wTesting' );
}

// --
// test
// --

function trivial( test )
{
  test.case = 'sum of positive numbers';
  var got = _.sumOfNumbers( 1, 2 );
  test.identical( got, 3 );

  test.case = 'sum of negative numbers';
  var got = _.sumOfNumbers( -1, -2 );
  test.identical( got, -3 );

  test.case = 'sum of not a number values';
  var got = _.sumOfNumbers( 'a', 'b' );
  test.identical( got, NaN );
}

// --
// declare
// --

let Self =
{

  name : 'Tools.l1.WillbeNpmPublishTest',
  silencing : 1,

  tests :
  {
    trivial,
  },

}

//

Self = wTestSuite( Self );
if( typeof module !== 'undefined' && !module.parent )
wTester.test( Self.name );

})();
