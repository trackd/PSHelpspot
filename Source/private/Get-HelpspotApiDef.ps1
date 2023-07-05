function Get-HelpspotApiDef {
    param(
        $ApiDefinition
    )
    begin {
        $apidef = @{
            'private.customer.setPasswordByEmail' = @{
                Url         = '/api/index.php?method=private.customer.setPasswordByEmail'
                Description = 'Set the portal password for an email account.'
                Method      = 'GET'
                Parameters  = @{
                    sPassword = @{
                        Name     = 'sPassword'
                        Required = $True
                    }
                    sEmail    = @{
                        Name     = 'sEmail'
                        Required = $True
                    }
                }
                Endpoint    = 'private.customer.setPasswordByEmail'
            }
            'private.timetracker.search'          = @{
                Url         = '/api/index.php?method=private.timetracker.search'
                Description = 'Return time events based on search criteria.'
                Method      = 'GET'
                Parameters  = @{
                    fUrgent           = @{
                        Name     = 'fUrgent'
                        Required = $False
                    }
                    'Custom#'         = @{
                        Name     = 'Custom#'
                        Required = $False
                    }
                    xPersonAssignedTo = @{
                        Name     = 'xPersonAssignedTo'
                        Required = $False
                    }
                    xMailbox          = @{
                        Name     = 'xMailbox'
                        Required = $False
                    }
                    xPersonOpenedBy   = @{
                        Name     = 'xPersonOpenedBy'
                        Required = $False
                    }
                    sEmail            = @{
                        Name     = 'sEmail'
                        Required = $False
                    }
                    end_time          = @{
                        Name     = 'end_time'
                        Required = $False
                    }
                    sLastName         = @{
                        Name     = 'sLastName'
                        Required = $False
                    }
                    start_time        = @{
                        Name     = 'start_time'
                        Required = $False
                    }
                    fOpen             = @{
                        Name     = 'fOpen'
                        Required = $False
                    }
                    fRawValues        = @{
                        Name     = 'fRawValues'
                        Required = $False
                    }
                    sUserId           = @{
                        Name     = 'sUserId'
                        Required = $False
                    }
                    fOpenedVia        = @{
                        Name     = 'fOpenedVia'
                        Required = $False
                    }
                    xStatus           = @{
                        Name     = 'xStatus'
                        Required = $False
                    }
                    orderBy           = @{
                        Name     = 'orderBy'
                        Required = $False
                    }
                    xCategory         = @{
                        Name     = 'xCategory'
                        Required = $False
                    }
                    sFirstName        = @{
                        Name     = 'sFirstName'
                        Required = $False
                    }
                    orderByDir        = @{
                        Name     = 'orderByDir'
                        Required = $False
                    }
                }
                Endpoint    = 'private.timetracker.search'
            }
            'request.getCategories'               = @{
                Url         = '/api/index.php?method=request.getCategories'
                Description = 'Returns a list of all the public categories'
                Method      = 'GET'
                Parameters  = @{

                }
                Endpoint    = 'request.getCategories'
            }
            'private.addressbook.createContact'   = @{
                Url         = '/api/index.php?method=private.addressbook.createContact'
                Description = 'Creates a contact in the internal addressbook.'
                Method      = 'POST'
                Parameters  = @{
                    sEmail       = @{
                        Name     = 'sEmail'
                        Required = $True
                    }
                    sTitle       = @{
                        Name     = 'sTitle'
                        Required = $False
                    }
                    sDescription = @{
                        Name     = 'sDescription'
                        Required = $False
                    }
                    sLastName    = @{
                        Name     = 'sLastName'
                        Required = $True
                    }
                    fHighlight   = @{
                        Name     = 'fHighlight'
                        Required = $False
                    }
                    sFirstName   = @{
                        Name     = 'sFirstName'
                        Required = $True
                    }
                }
                Endpoint    = 'private.addressbook.createContact'
            }
            'private.request.multiGet'            = @{
                Url         = '/api/index.php?method=private.request.multiGet'
                Description = 'Return request information for more than one request at a time.'
                Method      = 'GET'
                Parameters  = @{
                    xRequest = @{
                        Name     = 'xRequest'
                        Required = $True
                    }
                }
                Endpoint    = 'private.request.multiGet'
            }
            'forums.createPost'                   = @{
                Url         = '/api/index.php?method=forums.createPost'
                Description = 'Create a new forum post in the topic specified.'
                Method      = 'POST'
                Parameters  = @{
                    sEmail       = @{
                        Name     = 'sEmail'
                        Required = $False
                    }
                    fEmailUpdate = @{
                        Name     = 'fEmailUpdate'
                        Required = $False
                    }
                    xTopicId     = @{
                        Name     = 'xTopicId'
                        Required = $True
                    }
                    sURL         = @{
                        Name     = 'sURL'
                        Required = $False
                    }
                    sName        = @{
                        Name     = 'sName'
                        Required = $True
                    }
                    tPost        = @{
                        Name     = 'tPost'
                        Required = $True
                    }
                    sBrowser     = @{
                        Name     = 'sBrowser'
                        Required = $False
                    }
                    sOS          = @{
                        Name     = 'sOS'
                        Required = $False
                    }
                    sIP          = @{
                        Name     = 'sIP'
                        Required = $False
                    }
                }
                Endpoint    = 'forums.createPost'
            }
            'kb.getBookTOC'                       = @{
                Url         = '/api/index.php?method=kb.getBookTOC'
                Description = 'Return a knowledge books table of contents. Can optionally include the full HTML of each page of the book.'
                Method      = 'GET'
                Parameters  = @{
                    fWithPageHTML = @{
                        Name     = 'fWithPageHTML'
                        Required = $False
                    }
                    xBook         = @{
                        Name     = 'xBook'
                        Required = $True
                    }
                }
                Endpoint    = 'kb.getBookTOC'
            }
            'private.request.get'                 = @{
                Url         = '/api/index.php?method=private.request.get'
                Description = 'Return all information on a request.'
                Method      = 'GET'
                Parameters  = @{
                    xRequest   = @{
                        Name     = 'xRequest'
                        Required = $True
                    }
                    fRawValues = @{
                        Name     = 'fRawValues'
                        Required = $False
                    }
                }
                Endpoint    = 'private.request.get'
            }
            'private.request.subscribe'           = @{
                Url         = '/api/index.php?method=private.request.subscribe'
                Description = 'Subscribe a user to a request.'
                Method      = 'POST'
                Parameters  = @{
                    xRequest = @{
                        Name     = 'xRequest'
                        Required = $True
                    }
                    xPerson  = @{
                        Name     = 'xPerson'
                        Required = $True
                    }
                }
                Endpoint    = 'private.request.subscribe'
            }
            'customer.getRequests'                = @{
                Url         = '/api/index.php?method=customer.getRequests'
                Description = 'Return all requests for a customer.'
                Method      = 'GET'
                Parameters  = @{
                    sPassword = @{
                        Name     = 'sPassword'
                        Required = $True
                    }
                    sEmail    = @{
                        Name     = 'sEmail'
                        Required = $True
                    }
                }
                Endpoint    = 'customer.getRequests'
            }
            'private.addressbook.getContacts'     = @{
                Url         = '/api/index.php?method=private.addressbook.getContacts'
                Description = 'Retreives all contacts in the internal addressbook.'
                Method      = 'GET'
                Parameters  = @{

                }
                Endpoint    = 'private.addressbook.getContacts'
            }
            'private.response.listAll'            = @{
                Url         = '/api/index.php?method=private.response.listAll'
                Description = 'Return all your responses.'
                Method      = 'GET'
                Parameters  = @{
                    None = @{
                        Name     = 'None'
                        Required = $False
                    }
                }
                Endpoint    = 'private.response.listAll'
            }
            'kb.voteHelpful'                      = @{
                Url         = '/api/index.php?method=kb.voteHelpful'
                Description = 'Adds a vote for this page as "helpful"'
                Method      = 'GET'
                Parameters  = @{
                    xPage = @{
                        Name     = 'xPage'
                        Required = $True
                    }
                }
                Endpoint    = 'kb.voteHelpful'
            }
            'private.response.usersMostCommon'    = @{
                Url         = '/api/index.php?method=private.request.usersMostCommon'
                Description = 'Return the 10 most common responeses for the authenticated user.'
                Method      = 'GET'
                Parameters  = @{
                    None = @{
                        Name     = 'None'
                        Required = $False
                    }
                }
                Endpoint    = 'private.response.usersMostCommon'
            }
            'forums.createTopic'                  = @{
                Url         = '/api/index.php?method=forums.createTopic'
                Description = 'Create a new forum topic.'
                Method      = 'POST'
                Parameters  = @{
                    sEmail       = @{
                        Name     = 'sEmail'
                        Required = $False
                    }
                    fEmailUpdate = @{
                        Name     = 'fEmailUpdate'
                        Required = $False
                    }
                    xForumId     = @{
                        Name     = 'xForumId'
                        Required = $True
                    }
                    sTopic       = @{
                        Name     = 'sTopic'
                        Required = $True
                    }
                    sName        = @{
                        Name     = 'sName'
                        Required = $True
                    }
                    sBrowser     = @{
                        Name     = 'sBrowser'
                        Required = $False
                    }
                    tPost        = @{
                        Name     = 'tPost'
                        Required = $True
                    }
                    sURL         = @{
                        Name     = 'sURL'
                        Required = $False
                    }
                    sOS          = @{
                        Name     = 'sOS'
                        Required = $False
                    }
                    sIP          = @{
                        Name     = 'sIP'
                        Required = $False
                    }
                }
                Endpoint    = 'forums.createTopic'
            }
            'private.filter.get'                  = @{
                Url         = '/api/index.php?method=private.filter.get'
                Description = 'Return the results of a users filter.'
                Method      = 'GET'
                Parameters  = @{
                    xFilter    = @{
                        Name     = 'xFilter'
                        Required = $True
                    }
                    start      = @{
                        Name     = 'start'
                        Required = $False
                    }
                    length     = @{
                        Name     = 'length'
                        Required = $False
                    }
                    fRawValues = @{
                        Name     = 'fRawValues'
                        Required = $False
                    }
                }
                Endpoint    = 'private.filter.get'
            }
            'request.update'                      = @{
                Url         = '/api/index.php?method=request.update'
                Description = 'Update an existing request. The only option is to add a note, just as in the web portal.'
                Method      = 'POST'
                Parameters  = @{
                    accesskey             = @{
                        Name     = 'accesskey'
                        Required = $True
                    }
                    'File#_bFileBody'     = @{
                        Name     = 'File#_bFileBody'
                        Required = $False
                    }
                    'File#_sFileMimeType' = @{
                        Name     = 'File#_sFileMimeType'
                        Required = $False
                    }
                    tNote                 = @{
                        Name     = 'tNote'
                        Required = $True
                    }
                    'File#_sFilename'     = @{
                        Name     = 'File#_sFilename'
                        Required = $False
                    }
                }
                Endpoint    = 'request.update'
            }
            'private.user.getFilters'             = @{
                Url         = '/api/index.php?method=private.user.getFilters'
                Description = 'Return the authenticated users filters.'
                Method      = 'GET'
                Parameters  = @{

                }
                Endpoint    = 'private.user.getFilters'
            }
            'private.user.preferences'            = @{
                Url         = '/api/index.php?method=private.user.preferences'
                Description = 'Return the authenticated users preferences.'
                Method      = 'GET'
                Parameters  = @{

                }
                Endpoint    = 'private.user.preferences'
            }
            'forums.search'                       = @{
                Url         = '/api/index.php?method=forums.search'
                Description = 'Return a list of topics that match the search string.'
                Method      = 'GET'
                Parameters  = @{
                    q = @{
                        Name     = 'q'
                        Required = $True
                    }
                }
                Endpoint    = 'forums.search'
            }
            'private.request.unsubscribe'         = @{
                Url         = '/api/index.php?method=private.request.unsubscribe'
                Description = 'Unsubscribe a user from a request.'
                Method      = 'POST'
                Parameters  = @{
                    xRequest = @{
                        Name     = 'xRequest'
                        Required = $True
                    }
                    xPerson  = @{
                        Name     = 'xPerson'
                        Required = $True
                    }
                }
                Endpoint    = 'private.request.unsubscribe'
            }
            'private.addressbook.deletedContact'  = @{
                Url         = '/api/index.php?method=private.addressbook.deleteContact'
                Description = 'Deletes a contact in the internal addressbook.'
                Method      = 'POST'
                Parameters  = @{
                    xContact = @{
                        Name     = 'xContact'
                        Required = $True
                    }
                }
                Endpoint    = 'private.addressbook.deletedContact'
            }
            'private.request.getStatusTypes'      = @{
                Url         = '/api/index.php?method=private.request.getStatusTypes'
                Description = 'Returns a list of status types.'
                Method      = 'GET'
                Parameters  = @{
                    fActiveOnly = @{
                        Name     = 'fActiveOnly'
                        Required = $False
                    }
                }
                Endpoint    = 'private.request.getStatusTypes'
            }
            'private.request.getChanged'          = @{
                Url         = '/api/index.php?method=private.request.getChanged'
                Description = 'Return all requests which have changed since the date given.'
                Method      = 'GET'
                Parameters  = @{
                    dtGMTChange = @{
                        Name     = 'dtGMTChange'
                        Required = $True
                    }
                }
                Endpoint    = 'private.request.getChanged'
            }
            'kb.list'                             = @{
                Url         = '/api/index.php?method=kb.list'
                Description = 'Returns a list of all the public knowledge books'
                Method      = 'GET'
                Parameters  = @{

                }
                Endpoint    = 'kb.list'
            }
            'forums.getTopics'                    = @{
                Url         = '/api/index.php?method=forums.getTopics'
                Description = 'Return a list of topics from the given forum.'
                Method      = 'GET'
                Parameters  = @{
                    length   = @{
                        Name     = 'length'
                        Required = $False
                    }
                    start    = @{
                        Name     = 'start'
                        Required = $False
                    }
                    xForumId = @{
                        Name     = 'xForumId'
                        Required = $True
                    }
                }
                Endpoint    = 'forums.getTopics'
            }
            'forums.getPosts'                     = @{
                Url         = '/api/index.php?method=forums.getPosts'
                Description = 'Return a list of posts from the given topic.'
                Method      = 'GET'
                Parameters  = @{
                    xTopicId = @{
                        Name     = 'xTopicId'
                        Required = $True
                    }
                }
                Endpoint    = 'forums.getPosts'
            }
            'util.getFieldLabels'                 = @{
                Url         = '/api/index.php?method=util.getFieldLabels'
                Description = 'Returns a list of field labels for use in your interfaces.'
                Method      = 'GET'
                Parameters  = @{

                }
                Endpoint    = 'util.getFieldLabels'
            }
            'private.document.get'                = @{
                Url         = '/api/index.php?method=private.document.get'
                Description = 'Get a document based on its id.'
                Method      = 'GET'
                Parameters  = @{
                    xDocumentId = @{
                        Name     = 'xDocumentId'
                        Required = $True
                    }
                }
                Endpoint    = 'private.document.get'
            }
            'private.request.getMailboxes'        = @{
                Url         = '/api/index.php?method=private.request.getMailboxes'
                Description = 'Returns a list of mailboxes.'
                Method      = 'GET'
                Parameters  = @{
                    fActiveOnly = @{
                        Name     = 'fActiveOnly'
                        Required = $False
                    }
                }
                Endpoint    = 'private.request.getMailboxes'
            }
            'forums.get'                          = @{
                Url         = '/api/index.php?method=forums.get'
                Description = 'Return information on a forum.'
                Method      = 'GET'
                Parameters  = @{
                    xForumId = @{
                        Name     = 'xForumId'
                        Required = $True
                    }
                }
                Endpoint    = 'forums.get'
            }
            'forums.list'                         = @{
                Url         = '/api/index.php?method=forums.list'
                Description = 'Returns a list of all the public forums'
                Method      = 'GET'
                Parameters  = @{

                }
                Endpoint    = 'forums.list'
            }
            'private.request.search'              = @{
                Url         = '/api/index.php?method=private.request.search'
                Description = 'Search for requests.'
                Method      = 'GET'
                Parameters  = @{
                    sSearch           = @{
                        Name     = 'sSearch'
                        Required = $False
                    }
                    'Custom#'         = @{
                        Name     = 'Custom#'
                        Required = $False
                    }
                    closedAfterDate   = @{
                        Name     = 'closedAfterDate'
                        Required = $False
                    }
                    length            = @{
                        Name     = 'length'
                        Required = $False
                    }
                    sPhone            = @{
                        Name     = 'sPhone'
                        Required = $False
                    }
                    relativedate      = @{
                        Name     = 'relativedate'
                        Required = $False
                    }
                    xPersonAssignedTo = @{
                        Name     = 'xPersonAssignedTo'
                        Required = $False
                    }
                    sEmail            = @{
                        Name     = 'sEmail'
                        Required = $False
                    }
                    fRawValues        = @{
                        Name     = 'fRawValues'
                        Required = $False
                    }
                    sLastName         = @{
                        Name     = 'sLastName'
                        Required = $False
                    }
                    beforeDate        = @{
                        Name     = 'beforeDate'
                        Required = $False
                    }
                    fOpen             = @{
                        Name     = 'fOpen'
                        Required = $False
                    }
                    start             = @{
                        Name     = 'start'
                        Required = $False
                    }
                    orderByDir        = @{
                        Name     = 'orderByDir'
                        Required = $False
                    }
                    anyall            = @{
                        Name     = 'anyall'
                        Required = $False
                    }
                    sUserId           = @{
                        Name     = 'sUserId'
                        Required = $False
                    }
                    afterDate         = @{
                        Name     = 'afterDate'
                        Required = $False
                    }
                    xStatus           = @{
                        Name     = 'xStatus'
                        Required = $False
                    }
                    orderBy           = @{
                        Name     = 'orderBy'
                        Required = $False
                    }
                    xCategory         = @{
                        Name     = 'xCategory'
                        Required = $False
                    }
                    sFirstName        = @{
                        Name     = 'sFirstName'
                        Required = $False
                    }
                    closedBeforeDate  = @{
                        Name     = 'closedBeforeDate'
                        Required = $False
                    }
                    xRequest          = @{
                        Name     = 'xRequest'
                        Required = $False
                    }
                }
                Endpoint    = 'private.request.search'
            }
            'private.request.getTimeEvents'       = @{
                Url         = '/api/index.php?method=private.request.getTimeEvents'
                Description = 'Return all time tracker time events from a request.'
                Method      = 'GET'
                Parameters  = @{
                    xRequest   = @{
                        Name     = 'xRequest'
                        Required = $True
                    }
                    fRawValues = @{
                        Name     = 'fRawValues'
                        Required = $False
                    }
                }
                Endpoint    = 'private.request.getTimeEvents'
            }
            'private.request.create'              = @{
                Url         = '/api/index.php?method=private.request.create'
                Description = 'Create a new request.'
                Method      = 'POST'
                Parameters  = @{
                    xStatus               = @{
                        Name     = 'xStatus'
                        Required = $False
                    }
                    email_cc              = @{
                        Name     = 'email_cc'
                        Required = $False
                    }
                    'File#_bFileBody'     = @{
                        Name     = 'File#_bFileBody'
                        Required = $False
                    }
                    xPortal               = @{
                        Name     = 'xPortal'
                        Required = $False
                    }
                    email_to              = @{
                        Name     = 'email_to'
                        Required = $False
                    }
                    email_from            = @{
                        Name     = 'email_from'
                        Required = $False
                    }
                    email_bcc             = @{
                        Name     = 'email_bcc'
                        Required = $False
                    }
                    xCategory             = @{
                        Name     = 'xCategory'
                        Required = $True
                    }
                    reportingTags         = @{
                        Name     = 'reportingTags'
                        Required = $False
                    }
                    sTitle                = @{
                        Name     = 'sTitle'
                        Required = $False
                    }
                    skipCustomChecks      = @{
                        Name     = 'skipCustomChecks'
                        Required = $False
                    }
                    xPersonOpenedBy       = @{
                        Name     = 'xPersonOpenedBy'
                        Required = $False
                    }
                    fNoteIsHTML           = @{
                        Name     = 'fNoteIsHTML'
                        Required = $False
                    }
                    xPersonAssignedTo     = @{
                        Name     = 'xPersonAssignedTo'
                        Required = $False
                    }
                    sPhone                = @{
                        Name     = 'sPhone'
                        Required = $False
                    }
                    tNote                 = @{
                        Name     = 'tNote'
                        Required = $True
                    }
                    fOpenedVia            = @{
                        Name     = 'fOpenedVia'
                        Required = $False
                    }
                    fOpen                 = @{
                        Name     = 'fOpen'
                        Required = $False
                    }
                    'File#_sFileMimeType' = @{
                        Name     = 'File#_sFileMimeType'
                        Required = $False
                    }
                    fUrgent               = @{
                        Name     = 'fUrgent'
                        Required = $False
                    }
                    'Custom#'             = @{
                        Name     = 'Custom#'
                        Required = $False
                    }
                    sUserId               = @{
                        Name     = 'sUserId'
                        Required = $False
                    }
                    'File#_sFilename'     = @{
                        Name     = 'File#_sFilename'
                        Required = $False
                    }
                    sFirstName            = @{
                        Name     = 'sFirstName'
                        Required = $False
                    }
                    fNoteType             = @{
                        Name     = 'fNoteType'
                        Required = $False
                    }
                    sLastName             = @{
                        Name     = 'sLastName'
                        Required = $False
                    }
                    email_staff           = @{
                        Name     = 'email_staff'
                        Required = $False
                    }
                    dtGMTOpened           = @{
                        Name     = 'dtGMTOpened'
                        Required = $False
                    }
                    sEmail                = @{
                        Name     = 'sEmail'
                        Required = $False
                    }
                }
                Endpoint    = 'private.request.create'
            }
            'request.getCustomFields'             = @{
                Url         = '/api/index.php?method=request.getCustomFields'
                Description = 'Returns a list of all the public custom fields'
                Method      = 'GET'
                Parameters  = @{

                }
                Endpoint    = 'request.getCustomFields'
            }
            'private.request.subscriptions'       = @{
                Url         = '/api/index.php?method=private.request.subscriptions'
                Description = 'Find a users subscriptions.'
                Method      = 'GET'
                Parameters  = @{
                    xPerson = @{
                        Name     = 'xPerson'
                        Required = $True
                    }
                }
                Endpoint    = 'private.request.subscriptions'
            }
            'request.get'                         = @{
                Url         = '/api/index.php?method=request.get'
                Description = 'Return all public information on a request.'
                Method      = 'GET'
                Parameters  = @{
                    accesskey = @{
                        Name     = 'accesskey'
                        Required = $True
                    }
                }
                Endpoint    = 'request.get'
            }
            'kb.get'                              = @{
                Url         = '/api/index.php?method=kb.get'
                Description = 'Return information on a knowledge book.'
                Method      = 'GET'
                Parameters  = @{
                    xBook = @{
                        Name     = 'xBook'
                        Required = $True
                    }
                }
                Endpoint    = 'kb.get'
            }
            'request.create'                      = @{
                Url         = '/api/index.php?method=request.create'
                Description = 'Create a new request. Acts exactly as the portal web form.'
                Method      = 'POST'
                Parameters  = @{
                    fUrgent               = @{
                        Name     = 'fUrgent'
                        Required = $False
                    }
                    'File#_sFileMimeType' = @{
                        Name     = 'File#_sFileMimeType'
                        Required = $False
                    }
                    sPhone                = @{
                        Name     = 'sPhone'
                        Required = $False
                    }
                    'File#_bFileBody'     = @{
                        Name     = 'File#_bFileBody'
                        Required = $False
                    }
                    sEmail                = @{
                        Name     = 'sEmail'
                        Required = $False
                    }
                    sLastName             = @{
                        Name     = 'sLastName'
                        Required = $False
                    }
                    'File#_sFilename'     = @{
                        Name     = 'File#_sFilename'
                        Required = $False
                    }
                    sUserId               = @{
                        Name     = 'sUserId'
                        Required = $False
                    }
                    xPortal               = @{
                        Name     = 'xPortal'
                        Required = $False
                    }
                    tNote                 = @{
                        Name     = 'tNote'
                        Required = $True
                    }
                    xCategory             = @{
                        Name     = 'xCategory'
                        Required = $False
                    }
                    sFirstName            = @{
                        Name     = 'sFirstName'
                        Required = $False
                    }
                    'Custom#'             = @{
                        Name     = 'Custom#'
                        Required = $False
                    }
                }
                Endpoint    = 'request.create'
            }
            'private.util.getActiveStaff'         = @{
                Url         = '/api/index.php?method=private.util.getActiveStaff'
                Description = 'Return all currently active staff in the system and their information.'
                Method      = 'GET'
                Parameters  = @{

                }
                Endpoint    = 'private.util.getActiveStaff'
            }
            'private.request.markSpam'            = @{
                Url         = '/api/index.php?method=private.request.markSpam'
                Description = 'Mark a request as spam.'
                Method      = 'POST'
                Parameters  = @{
                    xRequest = @{
                        Name     = 'xRequest'
                        Required = $True
                    }
                }
                Endpoint    = 'private.request.markSpam'
            }
            'private.request.addTimeEvent'        = @{
                Url         = '/api/index.php?method=private.request.addTimeEvent'
                Description = 'Add a time tracker time event to a request.'
                Method      = 'POST'
                Parameters  = @{
                    fBillable      = @{
                        Name     = 'fBillable'
                        Required = $False
                    }
                    tTime          = @{
                        Name     = 'tTime'
                        Required = $True
                    }
                    iMonth         = @{
                        Name     = 'iMonth'
                        Required = $True
                    }
                    dtGMTDateAdded = @{
                        Name     = 'dtGMTDateAdded'
                        Required = $False
                    }
                    iYear          = @{
                        Name     = 'iYear'
                        Required = $True
                    }
                    xRequest       = @{
                        Name     = 'xRequest'
                        Required = $True
                    }
                    xPerson        = @{
                        Name     = 'xPerson'
                        Required = $True
                    }
                    tDescription   = @{
                        Name     = 'tDescription'
                        Required = $True
                    }
                    iDay           = @{
                        Name     = 'iDay'
                        Required = $True
                    }
                }
                Endpoint    = 'private.request.addTimeEvent'
            }
            'kb.getPage'                          = @{
                Url         = '/api/index.php?method=kb.getPage'
                Description = 'Return information on a knowledge book page.'
                Method      = 'GET'
                Parameters  = @{
                    xPage = @{
                        Name     = 'xPage'
                        Required = $True
                    }
                }
                Endpoint    = 'kb.getPage'
            }
            'private.filter.getStream'            = @{
                Url         = '/api/index.php?method=private.filter.getStream'
                Description = 'Return the note stream for a filter'
                Method      = 'GET'
                Parameters  = @{
                    xFilter            = @{
                        Name     = 'xFilter'
                        Required = $True
                    }
                    fromRequestHistory = @{
                        Name     = 'fromRequestHistory'
                        Required = $False
                    }
                    limit              = @{
                        Name     = 'limit'
                        Required = $False
                    }
                    sFilterView        = @{
                        Name     = 'sFilterView'
                        Required = $False
                    }
                }
                Endpoint    = 'private.filter.getStream'
            }
            'private.request.deleteTimeEvent'     = @{
                Url         = '/api/index.php?method=private.request.deleteTimeEvent'
                Description = 'Delete a time tracker time event.'
                Method      = 'POST'
                Parameters  = @{
                    xTimeId = @{
                        Name     = 'xTimeId'
                        Required = $True
                    }
                }
                Endpoint    = 'private.request.deleteTimeEvent'
            }
            'private.request.update'              = @{
                Url         = '/api/index.php?method=private.request.update'
                Description = 'Update an existing request.'
                Method      = 'POST'
                Parameters  = @{
                    xStatus               = @{
                        Name     = 'xStatus'
                        Required = $False
                    }
                    email_cc              = @{
                        Name     = 'email_cc'
                        Required = $False
                    }
                    xPerson               = @{
                        Name     = 'xPerson'
                        Required = $False
                    }
                    email_to              = @{
                        Name     = 'email_to'
                        Required = $False
                    }
                    email_from            = @{
                        Name     = 'email_from'
                        Required = $False
                    }
                    email_bcc             = @{
                        Name     = 'email_bcc'
                        Required = $False
                    }
                    xCategory             = @{
                        Name     = 'xCategory'
                        Required = $False
                    }
                    xRequest              = @{
                        Name     = 'xRequest'
                        Required = $True
                    }
                    reportingTags         = @{
                        Name     = 'reportingTags'
                        Required = $False
                    }
                    sTitle                = @{
                        Name     = 'sTitle'
                        Required = $False
                    }
                    skipCustomChecks      = @{
                        Name     = 'skipCustomChecks'
                        Required = $False
                    }
                    xPersonAssignedTo     = @{
                        Name     = 'xPersonAssignedTo'
                        Required = $False
                    }
                    dtGMTChange           = @{
                        Name     = 'dtGMTChange'
                        Required = $False
                    }
                    sPhone                = @{
                        Name     = 'sPhone'
                        Required = $False
                    }
                    tNote                 = @{
                        Name     = 'tNote'
                        Required = $False
                    }
                    fOpen                 = @{
                        Name     = 'fOpen'
                        Required = $False
                    }
                    fUrgent               = @{
                        Name     = 'fUrgent'
                        Required = $False
                    }
                    'File#_sFileMimeType' = @{
                        Name     = 'File#_sFileMimeType'
                        Required = $False
                    }
                    'File#_bFileBody'     = @{
                        Name     = 'File#_bFileBody'
                        Required = $False
                    }
                    'Custom#'             = @{
                        Name     = 'Custom#'
                        Required = $False
                    }
                    sUserId               = @{
                        Name     = 'sUserId'
                        Required = $False
                    }
                    'File#_sFilename'     = @{
                        Name     = 'File#_sFilename'
                        Required = $False
                    }
                    sFirstName            = @{
                        Name     = 'sFirstName'
                        Required = $False
                    }
                    fNoteType             = @{
                        Name     = 'fNoteType'
                        Required = $False
                    }
                    sLastName             = @{
                        Name     = 'sLastName'
                        Required = $False
                    }
                    email_staff           = @{
                        Name     = 'email_staff'
                        Required = $False
                    }
                    sEmail                = @{
                        Name     = 'sEmail'
                        Required = $False
                    }
                }
                Endpoint    = 'private.request.update'
            }
            'kb.voteNotHelpful'                   = @{
                Url         = '/api/index.php?method=kb.voteNotHelpful'
                Description = 'Adds a vote for this page as "not helpful"'
                Method      = 'GET'
                Parameters  = @{
                    xPage = @{
                        Name     = 'xPage'
                        Required = $True
                    }
                }
                Endpoint    = 'kb.voteNotHelpful'
            }
            'private.request.markTrash'           = @{
                Url         = '/api/index.php?method=private.request.markTrash'
                Description = 'Mark a request as trash.'
                Method      = 'POST'
                Parameters  = @{
                    xRequest = @{
                        Name     = 'xRequest'
                        Required = $True
                    }
                }
                Endpoint    = 'private.request.markTrash'
            }
            'private.request.getCategories'       = @{
                Url         = '/api/index.php?method=private.request.getCategories'
                Description = 'Returns a list of all categories along with each categories related information such as reporting tags.'
                Method      = 'GET'
                Parameters  = @{

                }
                Endpoint    = 'private.request.getCategories'
            }
            'private.response.get'                = @{
                Url         = '/api/index.php?method=private.response.get'
                Description = 'Get details on a response by ID.'
                Method      = 'GET'
                Parameters  = @{
                    xResponse = @{
                        Name     = 'xResponse'
                        Required = $True
                    }
                }
                Endpoint    = 'private.response.get'
            }
            'private.request.getCustomFields'     = @{
                Url         = '/api/index.php?method=private.request.getCustomFields'
                Description = 'Returns a list of custom fields.'
                Method      = 'GET'
                Parameters  = @{
                    xCategory = @{
                        Name     = 'xCategory'
                        Required = $False
                    }
                }
                Endpoint    = 'private.request.getCustomFields'
            }
            'kb.search'                           = @{
                Url         = '/api/index.php?method=kb.search'
                Description = 'Return a list of pages that match the search string.'
                Method      = 'GET'
                Parameters  = @{
                    q = @{
                        Name     = 'q'
                        Required = $True
                    }
                }
                Endpoint    = 'kb.search'
            }
            'private.request.merge'               = @{
                Url         = '/api/index.php?method=private.request.merge'
                Description = 'Merge two requests.'
                Method      = 'POST'
                Parameters  = @{
                    xRequestFrom = @{
                        Name     = 'xRequestFrom'
                        Required = $True
                    }
                    xRequestTo   = @{
                        Name     = 'xRequestTo'
                        Required = $True
                    }
                }
                Endpoint    = 'private.request.merge'
            }
            'private.filter.getColumnNames'       = @{
                Url         = '/api/index.php?method=private.filter.getColumnNames'
                Description = 'Return column names for the fields returned in filters.'
                Method      = 'GET'
                Parameters  = @{
                }
                Endpoint    = 'private.filter.getColumnNames'
            }
        }
    }
    process {
        if ($apidefinition) {
            return $apidef[$apidefinition]
        }
        else {
            return $apidef
        }
    }
}
