LinOtpUserIdResolver
====================

LinOTP features a concept of UserIdResolvers. Such a module is used to convert a user object from
any kind of user database to a distinct ID, that can be used by LinOTP to assign tokens to.

This community edition contains the base class for useridresolvers and the PasswdResolver, that
can handle users in flat files like an /etc/passwd.

This package is used by the linotp package. For installation see the linotp package.

New classes can be written by inheriting the base class.

Base class
----------

::

	class UserIdResolver:

	    fields = {"username":1, "userid":1,
		      "description":0,
		      "phone":0,"mobile":0,"email":0,
		      "givenname":0,"surname":0,"gender":0
		      }
	    name = ""
	    id = ""

	    def __init(self):
		""" init - usual bootstrap hook 
		"""
		self.name = "UserIdResolver";

	    def getUserId(self, loginName):
		""" getUserId(LoginName) 
		  - returns the identifier string 
		  - empty string if not exist 
	
		"""
		return self.id

	    def getUsername(self, userid):
		""" 
		getUsername(LoginId) 
		  - returns the loginname string 
		  - empty string if not exist 
	
		"""

		return self.name

	    def getUserInfo(self, userid):
		""" 
		getUserInfo(UserID)
		    This function returns all user information for a given user object identified
		    by UserID.
		    Return value is a dictionary, if no object is found, the dictionary is empty 
		"""
		return ""

	    def getResolverId(self):
		""" getResolverId(LoginName) 
		- returns the resolver identifier string 
		  - empty string if not exist 
	
		"""
		""" print ">>" + LoginName; """
		return self.name

	    def getResolverType(self):
		return ''


	    def loadConfig(self, config, conf):
		return self

	    def checkPass(self, uid, password):
		'''
		This function checks the password for a given uid.
		- returns true in case of success
		-         false if password does not match
		'''
		return False


