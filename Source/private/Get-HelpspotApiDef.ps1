﻿function Get-HelpspotApiDef {
    param(
        $ApiDefinition
    )
    begin {
        $apidef = @{
            'private.request.getCategories'      = @{
                param       = @{
                    none = @{
                        Required  = $False
                        Parameter = 'none'
                    }
                }
                URL         = '/api/index.php?method=private.request.getCategories'
                description = 'Returns a list of all categories along with each categories related information such as reporting tags.'
                endpoint    = 'private.request.getCategories'
                method      = 'GET'
            }
            'private.addressbook.deletedContact' = @{
                param       = @{
                    xContact = @{
                        Required  = $True
                        Parameter = 'xContact'
                    }
                }
                URL         = '/api/index.php?method=private.addressbook.deleteContact'
                description = 'Deletes a contact in the internal addressbook.'
                endpoint    = 'private.addressbook.deletedContact'
                method      = 'POST'
            }
            'private.request.unsubscribe'         = @{
                param       = @{
                    xRequest = @{
                        Required  = $True
                        Parameter = 'xRequest'
                    }
                    xPerson  = @{
                        Required  = $True
                        Parameter = 'xPerson'
                    }
                }
                URL         = '/api/index.php?method=private.request.unsubscribe'
                description = 'Unsubscribe a user from a request.'
                endpoint    = 'private.request.unsubscribe'
                method      = 'POST'
            }
            'util.getFieldLabels'                 = @{
                param       = @{
                    none = @{
                        Required  = $False
                        Parameter = 'none'
                    }
                }
                URL         = '/api/index.php?method=util.getFieldLabels'
                description = 'Returns a list of field labels for use in your interfaces.'
                endpoint    = 'util.getFieldLabels'
                method      = 'GET'
            }
            'private.request.merge'               = @{
                param       = @{
                    xRequestTo   = @{
                        Required  = $True
                        Parameter = 'xRequestTo'
                    }
                    xRequestFrom = @{
                        Required  = $True
                        Parameter = 'xRequestFrom'
                    }
                }
                URL         = '/api/index.php?method=private.request.merge'
                description = 'Merge two requests.'
                endpoint    = 'private.request.merge'
                method      = 'POST'
            }
            'private.response.listAll'            = @{
                param       = @{
                    None = @{
                        Required  = $False
                        Parameter = 'None'
                    }
                }
                URL         = '/api/index.php?method=private.response.listAll'
                description = 'Return all your responses.'
                endpoint    = 'private.response.listAll'
                method      = 'GET'
            }
            'kb.list'                             = @{
                param       = @{
                    none = @{
                        Required  = $False
                        Parameter = 'none'
                    }
                }
                URL         = '/api/index.php?method=kb.list'
                description = 'Returns a list of all the public knowledge books'
                endpoint    = 'kb.list'
                method      = 'GET'
            }
            'forums.createPost'                   = @{
                param       = @{
                    sURL         = @{
                        Required  = $False
                        Parameter = 'sURL'
                    }
                    sName        = @{
                        Required  = $True
                        Parameter = 'sName'
                    }
                    sEmail       = @{
                        Required  = $False
                        Parameter = 'sEmail'
                    }
                    sOS          = @{
                        Required  = $False
                        Parameter = 'sOS'
                    }
                    sIP          = @{
                        Required  = $False
                        Parameter = 'sIP'
                    }
                    xTopicId     = @{
                        Required  = $True
                        Parameter = 'xTopicId'
                    }
                    sBrowser     = @{
                        Required  = $False
                        Parameter = 'sBrowser'
                    }
                    tPost        = @{
                        Required  = $True
                        Parameter = 'tPost'
                    }
                    fEmailUpdate = @{
                        Required  = $False
                        Parameter = 'fEmailUpdate'
                    }
                }
                URL         = '/api/index.php?method=forums.createPost'
                description = 'Create a new forum post in the topic specified.'
                endpoint    = 'forums.createPost'
                method      = 'POST'
            }
            'private.request.create'              = @{
                param       = @{
                    sEmail                = @{
                        Required  = $False
                        Parameter = 'sEmail'
                    }
                    skipCustomChecks      = @{
                        Required  = $False
                        Parameter = 'skipCustomChecks'
                    }
                    'File#_bFileBody'     = @{
                        Required  = $False
                        Parameter = 'File#_bFileBody'
                    }
                    email_bcc             = @{
                        Required  = $False
                        Parameter = 'email_bcc'
                    }
                    'File#_sFilename'     = @{
                        Required  = $False
                        Parameter = 'File#_sFilename'
                    }
                    You                   = @{
                        Required  = $False
                        Parameter = 'You'
                    }
                    fNoteType             = @{
                        Required  = $False
                        Parameter = 'fNoteType'
                    }
                    email_from            = @{
                        Required  = $False
                        Parameter = 'email_from'
                    }
                    fOpenedVia            = @{
                        Required  = $False
                        Parameter = 'fOpenedVia'
                    }
                    email_cc              = @{
                        Required  = $False
                        Parameter = 'email_cc'
                    }
                    sUserId               = @{
                        Required  = $False
                        Parameter = 'sUserId'
                    }
                    xCategory             = @{
                        Required  = $True
                        Parameter = 'xCategory'
                    }
                    xStatus               = @{
                        Required  = $False
                        Parameter = 'xStatus'
                    }
                    fUrgent               = @{
                        Required  = $False
                        Parameter = 'fUrgent'
                    }
                    fNoteIsHTML           = @{
                        Required  = $False
                        Parameter = 'fNoteIsHTML'
                    }
                    sTitle                = @{
                        Required  = $False
                        Parameter = 'sTitle'
                    }
                    xPersonOpenedBy       = @{
                        Required  = $False
                        Parameter = 'xPersonOpenedBy'
                    }
                    fOpen                 = @{
                        Required  = $False
                        Parameter = 'fOpen'
                    }
                    sPhone                = @{
                        Required  = $False
                        Parameter = 'sPhone'
                    }
                    tNote                 = @{
                        Required  = $True
                        Parameter = 'tNote'
                    }
                    Other                 = @{
                        Required  = $False
                        Parameter = 'Other'
                    }
                    dtGMTOpened           = @{
                        Required  = $False
                        Parameter = 'dtGMTOpened'
                    }
                    'File#_sFileMimeType' = @{
                        Required  = $False
                        Parameter = 'File#_sFileMimeType'
                    }
                    email_staff           = @{
                        Required  = $False
                        Parameter = 'email_staff'
                    }
                    reportingTags         = @{
                        Required  = $False
                        Parameter = 'reportingTags'
                    }
                    email_to              = @{
                        Required  = $False
                        Parameter = 'email_to'
                    }
                    sLastName             = @{
                        Required  = $False
                        Parameter = 'sLastName'
                    }
                    xPortal               = @{
                        Required  = $False
                        Parameter = 'xPortal'
                    }
                    In                    = @{
                        Required  = $False
                        Parameter = 'In'
                    }
                    sFirstName            = @{
                        Required  = $False
                        Parameter = 'sFirstName'
                    }
                    'Custom#'             = @{
                        Required  = $False
                        Parameter = 'Custom#'
                    }
                    xPersonAssignedTo     = @{
                        Required  = $False
                        Parameter = 'xPersonAssignedTo'
                    }
                }
                URL         = '/api/index.php?method=private.request.create'
                description = 'Create a new request.'
                endpoint    = 'private.request.create'
                method      = 'POST'
            }
            'request.get'                         = @{
                param       = @{
                    accesskey = @{
                        Required  = $True
                        Parameter = 'accesskey'
                    }
                }
                URL         = '/api/index.php?method=request.get'
                description = 'Return all public information on a request.'
                endpoint    = 'request.get'
                method      = 'GET'
            }
            'private.user.getFilters'             = @{
                param       = @{
                    none = @{
                        Required  = $False
                        Parameter = 'none'
                    }
                }
                URL         = '/api/index.php?method=private.user.getFilters'
                description = 'Return the authenticated users filters.'
                endpoint    = 'private.user.getFilters'
                method      = 'GET'
            }
            'request.getCategories'               = @{
                param       = @{
                    none = @{
                        Required  = $False
                        Parameter = 'none'
                    }
                }
                URL         = '/api/index.php?method=request.getCategories'
                description = 'Returns a list of all the public categories'
                endpoint    = 'request.getCategories'
                method      = 'GET'
            }
            'private.request.subscribe'           = @{
                param       = @{
                    xRequest = @{
                        Required  = $True
                        Parameter = 'xRequest'
                    }
                    xPerson  = @{
                        Required  = $True
                        Parameter = 'xPerson'
                    }
                }
                URL         = '/api/index.php?method=private.request.subscribe'
                description = 'Subscribe a user to a request.'
                endpoint    = 'private.request.subscribe'
                method      = 'POST'
            }
            'private.addressbook.getContacts'     = @{
                param       = @{
                    none = @{
                        Required  = $False
                        Parameter = 'none'
                    }
                }
                URL         = '/api/index.php?method=private.addressbook.getContacts'
                description = 'Retreives all contacts in the internal addressbook.'
                endpoint    = 'private.addressbook.getContacts'
                method      = 'GET'
            }
            'kb.getPage'                          = @{
                param       = @{
                    xPage = @{
                        Required  = $True
                        Parameter = 'xPage'
                    }
                }
                URL         = '/api/index.php?method=kb.getPage'
                description = 'Return information on a knowledge book page.'
                endpoint    = 'kb.getPage'
                method      = 'GET'
            }
            'kb.getBookTOC'                       = @{
                param       = @{
                    xBook         = @{
                        Required  = $True
                        Parameter = 'xBook'
                    }
                    fWithPageHTML = @{
                        Required  = $False
                        Parameter = 'fWithPageHTML'
                    }
                }
                URL         = '/api/index.php?method=kb.getBookTOC'
                description = 'Return a knowledge books table of contents. Can optionally include the full HTML of each page of the book.'
                endpoint    = 'kb.getBookTOC'
                method      = 'GET'
            }
            'private.request.markSpam'            = @{
                param       = @{
                    xRequest = @{
                        Required  = $True
                        Parameter = 'xRequest'
                    }
                }
                URL         = '/api/index.php?method=private.request.markSpam'
                description = 'Mark a request as spam.'
                endpoint    = 'private.request.markSpam'
                method      = 'POST'
            }
            'private.response.get'                = @{
                param       = @{
                    xResponse = @{
                        Required  = $True
                        Parameter = 'xResponse'
                    }
                }
                URL         = '/api/index.php?method=private.response.get'
                description = 'Get details on a response by ID.'
                endpoint    = 'private.response.get'
                method      = 'GET'
            }
            'kb.search'                           = @{
                param       = @{
                    q = @{
                        Required  = $True
                        Parameter = 'q'
                    }
                }
                URL         = '/api/index.php?method=kb.search'
                description = 'Return a list of pages that match the search string.'
                endpoint    = 'kb.search'
                method      = 'GET'
            }
            'private.filter.get'                  = @{
                param       = @{
                    fRawValues = @{
                        Required  = $False
                        Parameter = 'fRawValues'
                    }
                    start      = @{
                        Required  = $False
                        Parameter = 'start'
                    }
                    length     = @{
                        Required  = $False
                        Parameter = 'length'
                    }
                    xFilter    = @{
                        Required  = $True
                        Parameter = 'xFilter'
                    }
                }
                URL         = '/api/index.php?method=private.filter.get'
                description = 'Return the results of a users filter.'
                endpoint    = 'private.filter.get'
                method      = 'GET'
            }
            'private.request.deleteTimeEvent'     = @{
                param       = @{
                    xTimeId = @{
                        Required  = $True
                        Parameter = 'xTimeId'
                    }
                }
                URL         = '/api/index.php?method=private.request.deleteTimeEvent'
                description = 'Delete a time tracker time event.'
                endpoint    = 'private.request.deleteTimeEvent'
                method      = 'POST'
            }
            'private.request.getTimeEvents'       = @{
                param       = @{
                    xRequest   = @{
                        Required  = $True
                        Parameter = 'xRequest'
                    }
                    fRawValues = @{
                        Required  = $False
                        Parameter = 'fRawValues'
                    }
                }
                URL         = '/api/index.php?method=private.request.getTimeEvents'
                description = 'Return all time tracker time events from a request.'
                endpoint    = 'private.request.getTimeEvents'
                method      = 'GET'
            }
            'private.request.getCustomFields'     = @{
                param       = @{
                    xCategory = @{
                        Required  = $False
                        Parameter = 'xCategory'
                    }
                }
                URL         = '/api/index.php?method=private.request.getCustomFields'
                description = 'Returns a list of custom fields.'
                endpoint    = 'private.request.getCustomFields'
                method      = 'GET'
            }
            'private.request.multiGet'            = @{
                param       = @{
                    xRequest = @{
                        Required  = $True
                        Parameter = 'xRequest'
                    }
                }
                URL         = '/api/index.php?method=private.request.multiGet'
                description = 'Return request information for more than one request at a time.'
                endpoint    = 'private.request.multiGet'
                method      = 'GET'
            }
            'private.addressbook.createContact'   = @{
                param       = @{
                    sLastName    = @{
                        Required  = $True
                        Parameter = 'sLastName'
                    }
                    sTitle       = @{
                        Required  = $False
                        Parameter = 'sTitle'
                    }
                    sDescription = @{
                        Required  = $False
                        Parameter = 'sDescription'
                    }
                    sEmail       = @{
                        Required  = $True
                        Parameter = 'sEmail'
                    }
                    fHighlight   = @{
                        Required  = $False
                        Parameter = 'fHighlight'
                    }
                    sFirstName   = @{
                        Required  = $True
                        Parameter = 'sFirstName'
                    }
                }
                URL         = '/api/index.php?method=private.addressbook.createContact'
                description = 'Creates a contact in the internal addressbook.'
                endpoint    = 'private.addressbook.createContact'
                method      = 'POST'
            }
            'private.document.get'                = @{
                param       = @{
                    xDocumentId = @{
                        Required  = $True
                        Parameter = 'xDocumentId'
                    }
                }
                URL         = '/api/index.php?method=private.document.get'
                description = 'Get a document based on its id.'
                endpoint    = 'private.document.get'
                method      = 'GET'
            }
            'private.request.addTimeEvent'        = @{
                param       = @{
                    dtGMTDateAdded = @{
                        Required  = $False
                        Parameter = 'dtGMTDateAdded'
                    }
                    fBillable      = @{
                        Required  = $False
                        Parameter = 'fBillable'
                    }
                    tTime          = @{
                        Required  = $True
                        Parameter = 'tTime'
                    }
                    tDescription   = @{
                        Required  = $True
                        Parameter = 'tDescription'
                    }
                    xPerson        = @{
                        Required  = $True
                        Parameter = 'xPerson'
                    }
                    iDay           = @{
                        Required  = $True
                        Parameter = 'iDay'
                    }
                    iYear          = @{
                        Required  = $True
                        Parameter = 'iYear'
                    }
                    xRequest       = @{
                        Required  = $True
                        Parameter = 'xRequest'
                    }
                    iMonth         = @{
                        Required  = $True
                        Parameter = 'iMonth'
                    }
                }
                URL         = '/api/index.php?method=private.request.addTimeEvent'
                description = 'Add a time tracker time event to a request.'
                endpoint    = 'private.request.addTimeEvent'
                method      = 'POST'
            }
            'private.request.getStatusTypes'      = @{
                param       = @{
                    fActiveOnly = @{
                        Required  = $False
                        Parameter = 'fActiveOnly'
                    }
                }
                URL         = '/api/index.php?method=private.request.getStatusTypes'
                description = 'Returns a list of status types.'
                endpoint    = 'private.request.getStatusTypes'
                method      = 'GET'
            }
            'private.user.preferences'            = @{
                param       = @{
                    none = @{
                        Required  = $False
                        Parameter = 'none'
                    }
                }
                URL         = '/api/index.php?method=private.user.preferences'
                description = 'Return the authenticated users preferences.'
                endpoint    = 'private.user.preferences'
                method      = 'GET'
            }
            'private.request.getChanged'          = @{
                param       = @{
                    dtGMTChange = @{
                        Required  = $True
                        Parameter = 'dtGMTChange'
                    }
                }
                URL         = '/api/index.php?method=private.request.getChanged'
                description = 'Return all requests which have changed since the date given.'
                endpoint    = 'private.request.getChanged'
                method      = 'GET'
            }
            'forums.getTopics'                    = @{
                param       = @{
                    xForumId = @{
                        Required  = $True
                        Parameter = 'xForumId'
                    }
                    length   = @{
                        Required  = $False
                        Parameter = 'length'
                    }
                    start    = @{
                        Required  = $False
                        Parameter = 'start'
                    }
                }
                URL         = '/api/index.php?method=forums.getTopics'
                description = 'Return a list of topics from the given forum.'
                endpoint    = 'forums.getTopics'
                method      = 'GET'
            }
            'kb.voteHelpful'                      = @{
                param       = @{
                    xPage = @{
                        Required  = $True
                        Parameter = 'xPage'
                    }
                }
                URL         = '/api/index.php?method=kb.voteHelpful'
                description = 'Adds a vote for this page as "helpful"'
                endpoint    = 'kb.voteHelpful'
                method      = 'GET'
            }
            'private.timetracker.search'          = @{
                param       = @{
                    fRawValues        = @{
                        Required  = $False
                        Parameter = 'fRawValues'
                    }
                    end_time          = @{
                        Required  = $False
                        Parameter = 'end_time'
                    }
                    xPersonAssignedTo = @{
                        Required  = $False
                        Parameter = 'xPersonAssignedTo'
                    }
                    sLastName         = @{
                        Required  = $False
                        Parameter = 'sLastName'
                    }
                    orderBy           = @{
                        Required  = $False
                        Parameter = 'orderBy'
                    }
                    start_time        = @{
                        Required  = $False
                        Parameter = 'start_time'
                    }
                    'Custom#'         = @{
                        Required  = $False
                        Parameter = 'Custom#'
                    }
                    xStatus           = @{
                        Required  = $False
                        Parameter = 'xStatus'
                    }
                    xMailbox          = @{
                        Required  = $False
                        Parameter = 'xMailbox'
                    }
                    xPersonOpenedBy   = @{
                        Required  = $False
                        Parameter = 'xPersonOpenedBy'
                    }
                    fOpenedVia        = @{
                        Required  = $False
                        Parameter = 'fOpenedVia'
                    }
                    sFirstName        = @{
                        Required  = $False
                        Parameter = 'sFirstName'
                    }
                    orderByDir        = @{
                        Required  = $False
                        Parameter = 'orderByDir'
                    }
                    sUserId           = @{
                        Required  = $False
                        Parameter = 'sUserId'
                    }
                    xCategory         = @{
                        Required  = $False
                        Parameter = 'xCategory'
                    }
                    fOpen             = @{
                        Required  = $False
                        Parameter = 'fOpen'
                    }
                    sEmail            = @{
                        Required  = $False
                        Parameter = 'sEmail'
                    }
                    fUrgent           = @{
                        Required  = $False
                        Parameter = 'fUrgent'
                    }
                }
                URL         = '/api/index.php?method=private.timetracker.search'
                description = 'Return time events based on search criteria.'
                endpoint    = 'private.timetracker.search'
                method      = 'GET'
            }
            'private.request.getMailboxes'        = @{
                param       = @{
                    fActiveOnly = @{
                        Required  = $False
                        Parameter = 'fActiveOnly'
                    }
                }
                URL         = '/api/index.php?method=private.request.getMailboxes'
                description = 'Returns a list of mailboxes.'
                endpoint    = 'private.request.getMailboxes'
                method      = 'GET'
            }
            'forums.getPosts'                     = @{
                param       = @{
                    xTopicId = @{
                        Required  = $True
                        Parameter = 'xTopicId'
                    }
                }
                URL         = '/api/index.php?method=forums.getPosts'
                description = 'Return a list of posts from the given topic.'
                endpoint    = 'forums.getPosts'
                method      = 'GET'
            }
            'request.getCustomFields'             = @{
                param       = @{
                    none = @{
                        Required  = $False
                        Parameter = 'none'
                    }
                }
                URL         = '/api/index.php?method=request.getCustomFields'
                description = 'Returns a list of all the public custom fields'
                endpoint    = 'request.getCustomFields'
                method      = 'GET'
            }
            'forums.get'                          = @{
                param       = @{
                    xForumId = @{
                        Required  = $True
                        Parameter = 'xForumId'
                    }
                }
                URL         = '/api/index.php?method=forums.get'
                description = 'Return information on a forum.'
                endpoint    = 'forums.get'
                method      = 'GET'
            }
            'forums.search'                       = @{
                param       = @{
                    q = @{
                        Required  = $True
                        Parameter = 'q'
                    }
                }
                URL         = '/api/index.php?method=forums.search'
                description = 'Return a list of topics that match the search string.'
                endpoint    = 'forums.search'
                method      = 'GET'
            }
            'private.request.subscriptions'       = @{
                param       = @{
                    xPerson = @{
                        Required  = $True
                        Parameter = 'xPerson'
                    }
                }
                URL         = '/api/index.php?method=private.request.subscriptions'
                description = 'Find a users subscriptions.'
                endpoint    = 'private.request.subscriptions'
                method      = 'GET'
            }
            'private.request.update'              = @{
                param       = @{
                    sEmail                = @{
                        Required  = $False
                        Parameter = 'sEmail'
                    }
                    xRequest              = @{
                        Required  = $True
                        Parameter = 'xRequest'
                    }
                    'File#_bFileBody'     = @{
                        Required  = $False
                        Parameter = 'File#_bFileBody'
                    }
                    email_bcc             = @{
                        Required  = $False
                        Parameter = 'email_bcc'
                    }
                    'Custom#'             = @{
                        Required  = $False
                        Parameter = 'Custom#'
                    }
                    fNoteType             = @{
                        Required  = $False
                        Parameter = 'fNoteType'
                    }
                    email_from            = @{
                        Required  = $False
                        Parameter = 'email_from'
                    }
                    xPerson               = @{
                        Required  = $False
                        Parameter = 'xPerson'
                    }
                    email_cc              = @{
                        Required  = $False
                        Parameter = 'email_cc'
                    }
                    sUserId               = @{
                        Required  = $False
                        Parameter = 'sUserId'
                    }
                    skipCustomChecks      = @{
                        Required  = $False
                        Parameter = 'skipCustomChecks'
                    }
                    xCategory             = @{
                        Required  = $False
                        Parameter = 'xCategory'
                    }
                    fUrgent               = @{
                        Required  = $False
                        Parameter = 'fUrgent'
                    }
                    sTitle                = @{
                        Required  = $False
                        Parameter = 'sTitle'
                    }
                    fOpen                 = @{
                        Required  = $False
                        Parameter = 'fOpen'
                    }
                    sPhone                = @{
                        Required  = $False
                        Parameter = 'sPhone'
                    }
                    tNote                 = @{
                        Required  = $False
                        Parameter = 'tNote'
                    }
                    xStatus               = @{
                        Required  = $False
                        Parameter = 'xStatus'
                    }
                    'File#_sFileMimeType' = @{
                        Required  = $False
                        Parameter = 'File#_sFileMimeType'
                    }
                    email_staff           = @{
                        Required  = $False
                        Parameter = 'email_staff'
                    }
                    reportingTags         = @{
                        Required  = $False
                        Parameter = 'reportingTags'
                    }
                    'File#_sFilename'     = @{
                        Required  = $False
                        Parameter = 'File#_sFilename'
                    }
                    email_to              = @{
                        Required  = $False
                        Parameter = 'email_to'
                    }
                    sLastName             = @{
                        Required  = $False
                        Parameter = 'sLastName'
                    }
                    sFirstName            = @{
                        Required  = $False
                        Parameter = 'sFirstName'
                    }
                    dtGMTChange           = @{
                        Required  = $False
                        Parameter = 'dtGMTChange'
                    }
                    xPersonAssignedTo     = @{
                        Required  = $False
                        Parameter = 'xPersonAssignedTo'
                    }
                }
                URL         = '/api/index.php?method=private.request.update'
                description = 'Update an existing request.'
                endpoint    = 'private.request.update'
                method      = 'POST'
            }
            'private.util.getActiveStaff'         = @{
                param       = @{
                    none = @{
                        Required  = $False
                        Parameter = 'none'
                    }
                }
                URL         = '/api/index.php?method=private.util.getActiveStaff'
                description = 'Return all currently active staff in the system and their information.'
                endpoint    = 'private.util.getActiveStaff'
                method      = 'GET'
            }
            'customer.getRequests'                = @{
                param       = @{
                    sEmail    = @{
                        Required  = $True
                        Parameter = 'sEmail'
                    }
                    Other     = @{
                        Required  = $False
                        Parameter = 'Other'
                    }
                    The       = @{
                        Required  = $False
                        Parameter = 'The'
                    }
                    sPassword = @{
                        Required  = $True
                        Parameter = 'sPassword'
                    }
                    Note      = @{
                        Required  = $False
                        Parameter = 'Note'
                    }
                }
                URL         = '/api/index.php?method=customer.getRequests'
                description = 'Return all requests for a customer.'
                endpoint    = 'customer.getRequests'
                method      = 'GET'
            }
            'private.request.get'                 = @{
                param       = @{
                    Merge      = @{
                        Required  = $False
                        Parameter = 'Merge'
                    }
                    fRawValues = @{
                        Required  = $False
                        Parameter = 'fRawValues'
                    }
                    xRequest   = @{
                        Required  = $True
                        Parameter = 'xRequest'
                    }
                }
                URL         = '/api/index.php?method=private.request.get'
                description = 'Return all information on a request.'
                endpoint    = 'private.request.get'
                method      = 'GET'
            }
            'kb.get'                              = @{
                param       = @{
                    xBook = @{
                        Required  = $True
                        Parameter = 'xBook'
                    }
                }
                URL         = '/api/index.php?method=kb.get'
                description = 'Return information on a knowledge book.'
                endpoint    = 'kb.get'
                method      = 'GET'
            }
            'private.filter.getColumnNames'       = @{
                param       = @{
                    none = @{
                        Required  = $False
                        Parameter = 'none'
                    }
                }
                URL         = '/api/index.php?method=private.filter.getColumnNames'
                description = 'Return column names for the fields returned in filters.'
                endpoint    = 'private.filter.getColumnNames'
                method      = 'GET'
            }
            'private.request.markTrash'           = @{
                param       = @{
                    xRequest = @{
                        Required  = $True
                        Parameter = 'xRequest'
                    }
                }
                URL         = '/api/index.php?method=private.request.markTrash'
                description = 'Mark a request as trash.'
                endpoint    = 'private.request.markTrash'
                method      = 'POST'
            }
            'forums.list'                         = @{
                param       = @{
                    none = @{
                        Required  = $False
                        Parameter = 'none'
                    }
                }
                URL         = '/api/index.php?method=forums.list'
                description = 'Returns a list of all the public forums'
                endpoint    = 'forums.list'
                method      = 'GET'
            }
            'private.request.search'              = @{
                param       = @{
                    fRawValues        = @{
                        Required  = $False
                        Parameter = 'fRawValues'
                    }
                    sPhone            = @{
                        Required  = $False
                        Parameter = 'sPhone'
                    }
                    As                = @{
                        Required  = $False
                        Parameter = 'As'
                    }
                    anyall            = @{
                        Required  = $True
                        Parameter = 'anyall'
                    }
                    xPersonAssignedTo = @{
                        Required  = $False
                        Parameter = 'xPersonAssignedTo'
                    }
                    Other             = @{
                        Required  = $False
                        Parameter = 'Other'
                    }
                    start             = @{
                        Required  = $False
                        Parameter = 'start'
                    }
                    sLastName         = @{
                        Required  = $False
                        Parameter = 'sLastName'
                    }
                    orderBy           = @{
                        Required  = $False
                        Parameter = 'orderBy'
                    }
                    sSearch           = @{
                        Required  = $False
                        Parameter = 'sSearch'
                    }
                    afterDate         = @{
                        Required  = $False
                        Parameter = 'afterDate'
                    }
                    'Custom#'         = @{
                        Required  = $False
                        Parameter = 'Custom#'
                    }
                    xStatus           = @{
                        Required  = $False
                        Parameter = 'xStatus'
                    }
                    closedBeforeDate  = @{
                        Required  = $False
                        Parameter = 'closedBeforeDate'
                    }
                    xRequest          = @{
                        Required  = $False
                        Parameter = 'xRequest'
                    }
                    sFirstName        = @{
                        Required  = $False
                        Parameter = 'sFirstName'
                    }
                    length            = @{
                        Required  = $False
                        Parameter = 'length'
                    }
                    sUserId           = @{
                        Required  = $False
                        Parameter = 'sUserId'
                    }
                    relativedate      = @{
                        Required  = $False
                        Parameter = 'relativedate'
                    }
                    xCategory         = @{
                        Required  = $False
                        Parameter = 'xCategory'
                    }
                    fOpen             = @{
                        Required  = $False
                        Parameter = 'fOpen'
                    }
                    sEmail            = @{
                        Required  = $False
                        Parameter = 'sEmail'
                    }
                    beforeDate        = @{
                        Required  = $False
                        Parameter = 'beforeDate'
                    }
                    closedAfterDate   = @{
                        Required  = $False
                        Parameter = 'closedAfterDate'
                    }
                    orderByDir        = @{
                        Required  = $False
                        Parameter = 'orderByDir'
                    }
                }
                URL         = '/api/index.php?method=private.request.search'
                description = 'Search for requests.'
                endpoint    = 'private.request.search'
                method      = 'GET'
            }
            'request.update'                      = @{
                param       = @{
                    tNote                 = @{
                        Required  = $True
                        Parameter = 'tNote'
                    }
                    accesskey             = @{
                        Required  = $True
                        Parameter = 'accesskey'
                    }
                    'File#_sFilename'     = @{
                        Required  = $False
                        Parameter = 'File#_sFilename'
                    }
                    'File#_sFileMimeType' = @{
                        Required  = $False
                        Parameter = 'File#_sFileMimeType'
                    }
                    'File#_bFileBody'     = @{
                        Required  = $False
                        Parameter = 'File#_bFileBody'
                    }
                }
                URL         = '/api/index.php?method=request.update'
                description = 'Update an existing request. The only option is to add a note, just as in the web portal.'
                endpoint    = 'request.update'
                method      = 'POST'
            }
            'private.filter.getStream'            = @{
                param       = @{
                    fromRequestHistory = @{
                        Required  = $False
                        Parameter = 'fromRequestHistory'
                    }
                    xFilter            = @{
                        Required  = $True
                        Parameter = 'xFilter'
                    }
                    sFilterView        = @{
                        Required  = $False
                        Parameter = 'sFilterView'
                    }
                    limit              = @{
                        Required  = $False
                        Parameter = 'limit'
                    }
                }
                URL         = '/api/index.php?method=private.filter.getStream'
                description = 'Return the note stream for a filter'
                endpoint    = 'private.filter.getStream'
                method      = 'GET'
            }
            'private.response.usersMostCommon'    = @{
                param       = @{
                    None = @{
                        Required  = $False
                        Parameter = 'None'
                    }
                }
                URL         = '/api/index.php?method=private.request.usersMostCommon'
                description = 'Return the 10 most common responeses for the authenticated user.'
                endpoint    = 'private.response.usersMostCommon'
                method      = 'GET'
            }
            'request.create'                      = @{
                param       = @{
                    sPhone                = @{
                        Required  = $False
                        Parameter = 'sPhone'
                    }
                    xPortal               = @{
                        Required  = $False
                        Parameter = 'xPortal'
                    }
                    sLastName             = @{
                        Required  = $False
                        Parameter = 'sLastName'
                    }
                    'File#_sFilename'     = @{
                        Required  = $False
                        Parameter = 'File#_sFilename'
                    }
                    'Custom#'             = @{
                        Required  = $False
                        Parameter = 'Custom#'
                    }
                    'File#_sFileMimeType' = @{
                        Required  = $False
                        Parameter = 'File#_sFileMimeType'
                    }
                    Other                 = @{
                        Required  = $False
                        Parameter = 'Other'
                    }
                    tNote                 = @{
                        Required  = $True
                        Parameter = 'tNote'
                    }
                    sFirstName            = @{
                        Required  = $False
                        Parameter = 'sFirstName'
                    }
                    sUserId               = @{
                        Required  = $False
                        Parameter = 'sUserId'
                    }
                    xCategory             = @{
                        Required  = $False
                        Parameter = 'xCategory'
                    }
                    'File#_bFileBody'     = @{
                        Required  = $False
                        Parameter = 'File#_bFileBody'
                    }
                    Custom                = @{
                        Required  = $False
                        Parameter = 'Custom'
                    }
                    sEmail                = @{
                        Required  = $False
                        Parameter = 'sEmail'
                    }
                    In                    = @{
                        Required  = $False
                        Parameter = 'In'
                    }
                    fUrgent               = @{
                        Required  = $False
                        Parameter = 'fUrgent'
                    }
                }
                URL         = '/api/index.php?method=request.create'
                description = 'Create a new request. Acts exactly as the portal web form.'
                endpoint    = 'request.create'
                method      = 'POST'
            }
            'forums.createTopic'                  = @{
                param       = @{
                    xForumId     = @{
                        Required  = $True
                        Parameter = 'xForumId'
                    }
                    sURL         = @{
                        Required  = $False
                        Parameter = 'sURL'
                    }
                    sName        = @{
                        Required  = $True
                        Parameter = 'sName'
                    }
                    sEmail       = @{
                        Required  = $False
                        Parameter = 'sEmail'
                    }
                    sOS          = @{
                        Required  = $False
                        Parameter = 'sOS'
                    }
                    sTopic       = @{
                        Required  = $True
                        Parameter = 'sTopic'
                    }
                    sIP          = @{
                        Required  = $False
                        Parameter = 'sIP'
                    }
                    sBrowser     = @{
                        Required  = $False
                        Parameter = 'sBrowser'
                    }
                    tPost        = @{
                        Required  = $True
                        Parameter = 'tPost'
                    }
                    fEmailUpdate = @{
                        Required  = $False
                        Parameter = 'fEmailUpdate'
                    }
                }
                URL         = '/api/index.php?method=forums.createTopic'
                description = 'Create a new forum topic.'
                endpoint    = 'forums.createTopic'
                method      = 'POST'
            }
            'private.customer.setPasswordByEmail' = @{
                param       = @{
                    sEmail    = @{
                        Required  = $True
                        Parameter = 'sEmail'
                    }
                    sPassword = @{
                        Required  = $True
                        Parameter = 'sPassword'
                    }
                }
                URL         = '/api/index.php?method=private.customer.setPasswordByEmail'
                description = 'Set the portal password for an email account.'
                endpoint    = 'private.customer.setPasswordByEmail'
                method      = 'GET'
            }
            'kb.voteNotHelpful'                   = @{
                param       = @{
                    xPage = @{
                        Required  = $True
                        Parameter = 'xPage'
                    }
                }
                URL         = '/api/index.php?method=kb.voteNotHelpful'
                description = 'Adds a vote for this page as "not helpful"'
                endpoint    = 'kb.voteNotHelpful'
                method      = 'GET'
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
