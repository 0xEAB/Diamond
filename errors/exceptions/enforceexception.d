/**
* Copyright © DiamondMVC 2018
* License: MIT (https://github.com/DiamondMVC/Diamond/blob/master/LICENSE)
* Author: Jacob Jensen (bausshf)
*/
module diamond.errors.exceptions.enforceexception;

import diamond.core.debugging;

static if (debugging)
{
  /// Error wrapper for enforcements.
  class EnforceError : Error
  {
    /**
    * Creates a new enforcement error.
    * Params:
    *   message = The message of the error.
    */
    this(string message)
    {
      super(message);
    }
  }

  /// Alias to mask throws to the error in debug-mode.
  alias EnforceException = EnforceError;
}
else
{
    /// Exception wrapper for enforcements.
    class EnforceException : Exception
    {
      /**
      * Creates a new enforcement exception.
      * Params:
      *   message = The message of the exception.
      */
      this(string message)
      {
        super(message);
      }
    }
}
