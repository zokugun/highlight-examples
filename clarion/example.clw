!{{{}}}
! (c)quickSOFT 1994,1995. All rights reserved.
  MEMBER('AS.clw')

!{{{  history
!
!{{{  1995
! 29/7/95  DCN Separated from AS.APP
!              Assume we're a sole login if the frame is not running
! 10/9/95  DCN Added asProcessExists and asFileExists
! 12/9/95  DCN Don't use the ASD file for asFileExists 'cos it may not
!              be available, use zfNumber instead
! 26/10/95 DCN Added asLastClock and asReLogEvent
!              Added optional RecNo param to asLogEvent
! 28/10/95 DCN Add optional 'force' parameter to asSoleLogin
! 2/11/95  DCN Assume any ASW record for this station is 'self' and ignore it
!              in asSoleLogin
!              Added asStationAvailable
!}}}
!{{{  1996
! 21/1/96  DCN See asReLogEvent
! 2/2/96   DCN See asLogEvent
! 29/4/96  DCN asIsSubordinate and asSupervisorOf
! 9/8/96   DCN asLastLogin, asLastLogout, asLastClock
! 28/10/96 DCN asIsQuickSOFT
! 9/11/96  DCN Added asPurgeLogins
! 27/11/96 DCN Added asGetViewer
!}}}
!{{{  1997
! 21/2/97  DCN asEventAllowed
! 8/3/97   DCN Added asPatch:1:18:1
! 12/3/97  DCN Added asPatch:1:18:2
! 16/3/97  DCN Added asPatch:1:18:3
! 21/3/97  CRJ Added asPatch:1:18:4
! 26/3/97  DCN Added asReleaseStation
! 19/3/97  DCN Added asPatch:1:18:5
! 11/4/97  CRJ Added asPatch:1:18:6
! 24/4/97  DCN Added asPatch:1:18:7
! 8/5/97   CRJ Added patch 1:18:8
! 15/5/97  DCN asEventAllowed
! 23/5/97  DCN asStationAvailable
! 30/5/97  DCN Remove asProcessExists (now in ZX) and asFileExists (redundant)
! 4/6/97   CRJ Remove patches
! 9/6/97   DCN Added asGetNewProcesses
!              asUseAllowed
! 5/7/97   DCN asEventAllowed
! 26/7/97  DCN asEventAllowed
! 11/8/97  DCN Move asGetNewProcesses to as_boot
! 19/9/97  DCN asLogEvent
! 4/10/97  DCN asDefaultChanged, asSoleLogin
! 6/10/97  DCN asReLogEvent
! 7/10/97  DCN asReLogEvent
! 7/10/97  DCN asPreInit
! 9/11/97  DCN asLastClock
! 13/11/97 DCN aslastClock, asReLogEvent
! 18/11/97 DCN asRelogEvent
! 9/12/97  DCN asRelogEvent
! 18/12/97 DCN asReLogEvent
!}}}
!{{{  1998
! 15/1/98  DCN asLastClock, asLastLogin, asLastLogout, asStationAvailable, asReleaseStation
! 20/1/98  DCN asLastClock
! 1/2/98   DCN asAccessAllowed
! 10/2/98  DCN asAccessAllowed
! 16/2/98  DCN Add asRequestLogout
! 18/2/98  DCN asLastClock
! 19/2/98  DCN asEventAllowed
! 21/2/98  DCN asEventAllowed
! 21/2/98  DCN asEventAllowed
! 24/2/98  DCN asDefaultChanged
! 2/3/98   DCN Add asLoggedInUsers
! 27/3/98  DCN asRequestLogout
! 31/3/98  DCN asRelogEvent
! 7/4/98   DCN asRelogEvent
! 10/4/98  DCN asPurgeLogins, asPostInit
! 10/5/98  DCN asUseAllowed, asAccessAllowed, asSupervisorOf
! 27/7/98  DCN Add asAnalyseStaff
! 29/7/98  DCN Add asGetHeadCount
!              asAnalyseStaff
!}}}
!{{{  1999
! 4/3/99   DCN asReLogEvent
! 12/3/99  DCN asReLogEvent
! 22/3/99  DCN aslastClock
!              Add asFlushClock
! 21/4/99  DCN Move access checking stuff to as_group.clw
! 22/4/99  DCN asPreInit
! 7/5/99   DCN asEventAllowed
! 29/5/99  DCN asReLogEvent
! 5/6/99   DCN asReLogEvent, asLastClock
! 6/6/99   DCN asReLogEvent
! 5/10/99  DCN asEventAllowed
!              Add asReloginNow, asSoleLogin
! 15/10/99 DCN asSoleLogin
! 16/10/99 DCN asEventAllowed
! 17/10/99 DCN asEventAllowed
! 25/11/99 DCN asNameUser, asDescribeUser, asGetViewer
! 4/12/99  DCN asEventAllowed
!}}}
!{{{  2000
! 12/1/100 DCN asPostInit
! 04/03/00 DCN Add asPatch:20:2:1
! 24/03/00 DCN asReLogEvent
! 26/03/00 DCN Remove asRelogEvent, add asLogClock
!              asLastClock, asLogEvent, asSoleLogin, asFlushClock
! 27/03/00 DCN asLogClock, asLogEvent, asFlushClock, asRequestLogout
! 01/04/00 DCN asLogEvent, asLogClock, asLastClock
! 02/04/00 DCN asLastClock, asLogClock
! 19/05/00 DCN asLoggedInUsers
! 17/06/00 DCN Add asExclusiveLock
! 15/09/00 DCN Add asPatch:20:2:2
! 11/11/00 DCN asLogEvent, asLogClock, asFlushClock, asRequestLogout
! 15/11/00 DCN asFlushClock
! 16/11/00 DCN asFlushClock
!}}}
!{{{  2001
! 05/02/01 DCN asSoleLogin
! 08/04/01 DCN Add asIsTaskRunning
! 03/07/01 DCN Remove asPatch:20:2:1 and asPatch:20:2:2
!              Add asPrintBadge
! 31/08/01 DCN asPrintBadge
! 28/09/01 DCN asExclusiveLock
! 17/10/01 DCN asLoggedInUsers
! 02/11/01 DCN asPrintBadge
!}}}
!{{{  2002
! 27/02/02 DCN asPrintBadge
! 03/05/02 DCN asLoggedInUsers
! 03/08/02 DCN asPostInit, asEventAllowed
! 10/12/02 DCN Add asGetProcessType/Name
! 16/12/02 DCN Add asFuncNam2RecNo and asFileNo2RecNo and asRecNo2FileNo
! 17/12/02 DCN Add asSetAccessRights
!}}}
!{{{  2003
! 01/01/03 DCN asPrintBadge
!              Add asGetCostingResource
! 10/01/03 DCN Add asGetSFDCStatus
! 05/02/03 DCN asPostInit, asSoleLogin
! 07/02/03 DCN asEventAllowed
! 23/02/03 DCN asEventAllowed
! 27/02/03 DCN asEventAllowed
! 11/06/03 DCN asPostInit
! 20/07/03 DCN asLastClock
! 08/08/03 DCN asEventAllowed
! 13/09/03 DCN asEventAllowed
! 03/10/03 DCN asDefaultChanged, asEventAllowed
! 06/10/03 DCN asEventAllowed
! 08/10/03 DCN asLogClock, asFlushClock, asSoleLogin, asLoggedInUsers
! 22/11/03 DCN asNameUser, asPrintBadge
! 25/11/03 DCN asDefaultChanged, asPostInit
! 27/11/03 DCN asEventAllowed
! 29/11/03 DCN asEventAllowed
!}}}
!{{{  2004
! 30/01/04 DCN asEventAllowed
! 13/04/04 DCN asSetAccessRights
! 08/06/04 CRJ asPrintBadge
! 09/06/04 CRJ asPrintBadge
! 09/08/04 DCN asLogClock
! 10/09/04 CRJ Added asGetDisableSerNoHoles
! 22/10/04 CPH asPrintBadge
! 02/11/04 CPH asPrintBadge
!}}}
!{{{  2005
! 01/02/05 DCN asSetAgentStartParams, asExclusiveLock
! 11/02/05 DCN asLastClock
! 16/02/05 CPH asGetDisableSerNoHoles
! 21/04/05 DCN asSetAgentStartParams
! 10/05/05 DCN Rename asGetDisableSerNoHoles to asUseSerNoHoles
! 27/06/05 DCN Add asRecNo2FieldName, asFieldName2RecNo
! 28/06/05 DCN Add asEncode/DecodeFieldName
! 29/06/05 DCN Add asSetFieldNameAccess
! 05/07/05 DCN asEventAllowed
! 08/07/05 DCN asSetFieldNameAccess, asDecode/EncodeFieldName, asFieldName2RecNo, asRecNo2FieldName
! 19/07/05 DCN asEventAllowed
! 01/11/05 DCN asSetAgentStartParams, asExclusiveLock
!}}}
!{{{  2006
! 19/02/06 DCN asLogClock
! 11/07/06 DCN Add asLogoutRequested
!              asSoleLogin
!}}}
!{{{  2007
! 16/01/07 CRJ Add asUpdateProcess
! 26/01/07 DCN asEventAllowed
! 30/01/07 DCN asEventAllowed
! 18/04/07 DCN asExclusiveLock
! 20/06/07 DCN Add asUseLongNames
! 31/07/07 DCN asEventAllowed
! 18/09/07 DCN asRequestLogout
! 19/09/07 DCN asSoleLogin
! 20/09/07 DCN asPostInit, asDefaultChanged, asEventAllowed
! 24/09/07 DCN asPostInit
! 27/09/07 DCN asPostInit
! 28/09/07 DCN asEventAllowed
! 04/10/07 DCN asPrintBadge
! 04/12/07 DCN asLoggedInUsers
! 05/12/07 DCN asLoggedInUsers, asReloginNow, asEventAllowed, asHideNow
!}}}
!{{{  2008
! 04/03/08 DCN asSetFieldNameAccess
! 23/06/08 DCN asLoggedInUsers
! 30/07/08 DCN Add asSetFieldLevel, asFieldAccessPopup, asGetDevEnv
! 15/08/08 DCN asLogoutRequested
! 24/10/08 DCN asFieldAccessPopup
! 07/11/08 DCN asFlushClock
! 21/11/08 DCN asPostInit
! 27/11/08 DCN asEventAllowed
!}}}
!{{{  2009
! 16/01/09 DCN asFieldAccessPopup
! 20/01/09 DCN asSetFieldNameAccess asFieldAccessPopup, asSetAccessRights
! 02/02/09 DCN asFieldAccessPopup
! 18/02/09 DCN asFieldAccessPopup
! 15/04/09 DCN asReloginNow
! 16/04/09 DCN asReloginNow
! 27/04/09 DCN asFieldAccessPopup
! 13/05/09 DCN asDecodeFieldName
! 16/10/09 DCN asRequestLogout
! 16/11/09 DCN asEventAllowed
!}}}
!{{{  2010
! 22/01/10 DCN asFlushClock
! 17/02/10 DCN asReloginNow
! 25/02/10 DCN asEventAllowed
! 17/03/10 DCN asPostInit, asLastLogin, asLastLogout, asStationAvailable, asReleaseStation,
!              asLogClock, asIsTaskRunning, asLastClock, asSoleLogin, asLogoutRequested, asLogEvent
!              asFlushClock, asRequestLogout
! 19/03/10 DCN asLogClock, asIsTaskRunning, asLastClock, asSoleLogin, asLogoutRequested, asLogEvent
!              asFlushClock, asRequestLogout
! 22/03/10 DCN asLogEvent
! 23/03/10 DCN asPreInit
! 24/03/10 DCN asLogoutRequested, asEventAllowed
! 29/03/10 DCN asPostInit, asDefaultChanged, asSetAgentStartParams
!              Add asSetBrokerStartParams
! 31/03/10 DCN asExclusiveLock, asPostInit
! 01/04/10 DCN asExclusiveLock
! 06/04/10 DCN asLastLogin, asLastLogout, asStationAvailable, asReleaseStation
! 04/05/10 DCN All ASL and ASW access functions
!              Remove asStationAvailable and asReleaseStation
! 05/05/10 DCN asFlushClock
! 14/05/10 DCN asLogoutRequested
! 19/05/10 DCN asEventAllowed
! 21/06/10 DCN asPostInit
! 22/06/10 DCN asPostInit
! 07/07/10 DCN asEventAllowed
! 16/08/10 DCN asEventAllowed
! 26/08/10 DCN asLogoutRequested
! 04/11/10 DCN asPostInit, asLoggedInUsers
! 16/11/10 DCN asFlushClock
! 19/11/10 DCN asEventAllowed
! 20/11/10 DCN asPostInit
! 31/12/10 DCN asDefaultChanged
!}}}
! 30/03/11 DCN asSoleLogin, asExclusiveLock
! 12/04/11 DCN asPostInit
! 13/04/11 DCN asLastClock
! 03/05/11 DCN asPostInit, asDefaultChanged, asSetAgentStartParams
! 04/05/11 DCN asLogoutRequested, asLogClock
!              Add asLogEventName
! 05/05/11 DCN asFlushClock, asLogClock
! 21/06/11 DCN Use asFileOptions throughout
! 10/09/12 DCN asReloginNow
! 02/10/12 DCN asEventAllowed
! 29/11/12 DCN asEventAllowed
! 10/12/12 DCN asPreInit
! 21/02/13 DCN asEventAllowed
! 17/06/13 DCN Remove asEventAllowed from here, now in ZW
! 22/08/13 DCN asLogoutRequested
! 16/09/13 DCN asHideNow
! 16/10/13 DCN asHideNow, asReloginNow
! 24/10/13 DCN asHideNow, asLoggedInUsers
! 27/11/13 DCN asPostInit, asLogClock
! 20/01/14 DCN Add asLogDeferred
! 21/01/14 DCN asFlushClock
! 12/02/14 DCN asDescribeUser
! 13/02/14 CRJ asGetSDFCStatus
! 28/07/14 DCN asSoleLogin, asLoggedInUsers, asFlushClock
! 15/01/15 DCN asFlushClock
! 26/01/15 DCN asLogEvent
! 05/02/15 DCN asExclusiveLock
! 21/02/15 DCN asLoggedInUsers
! 11/05/15 DCN Add asIsStaleSession
!              asFlushClock, asSoleLogin, asLoggedInUsers
! 14/05/15 DCN asLastClock
! 11/06/15 DCN asPostInit
! 07/07/15 DCN asSetAgentStartParams
! 02/12/15 DCN asPostInit, asPurgeLogins
! 09/12/15 DCN asFlushClock
! 19/12/16 DCN asAnalyseStaff
! 03/07/17 DCN [54996]asPreInit
! 26/07/17 DCN [55061]asFlushClock
! 27/09/17 DCN asIsStaleSession, asFlushClock
! 30/05/18 DCN asPostInit
! 04/02/20 DCN asPostInit
! 06/02/20 DCN asPostInit
! 14/04/20 DCN asNameUser
! 18/04/20 DCN [60366]Remove asSetBrokerStartParams
!              asDefaultChanged, asPostInit
! 24/05/20 DCN asLastLogin, asLastLogout, asPurgeLogins, asLogClock, asIsTaskRunning, asLastClock, asSoleLogin, asLoggedInUsers, asLogEvent
!              asFlushClock, asRequestLogout
! 24/10/20 DCN asLogEvent
! 03/12/20 DCN asReloginNow
!
!}}}
!{{{  MAP
  MAP
    asSetAgentStartParams()
    asIsStaleSession(),BYTE
  END
!}}}
!{{{  module data


!}}}

!{{{  asDefaultChanged       One of our defaults has changed notification

!{{{  history
OMIT('ENDOMIT')

Date____  Who_____  What__________________________________________________
11/12/94  -         Created
21/12/94  DCN       Added re-load of asIdleEventTicks
21/12/94            Modified
4/10/97   DCN       Force asMaxHideTicks to be in range 1..one day
 24/2/98  DCN       Allow asMaxHideTicks to be 0
 03/10/03 DCN       Don't allow asActiveTicks to be more than a day
 25/11/03 DCN       Propagate asStartAgentAt into the global INI file
 20/09/07 DCN       Propagate asRunAgent247 into the global INI file
 29/03/10 DCN       Propagate asBroker<...> defaults into the global INI file
 31/12/10 DCN       Don't propagate defaults to INI if we're a reader or SFDC
 03/05/11 DCN       Drop asRunAgent247, add asStopAgentAt
 18/04/20 DCN       [60366]Remove broker stuff
Date____  Who_____  What__________________________________________________

!ENDOMIT
!}}}
!{{{  description
OMIT('ENDOMIT')



!ENDOMIT
!}}}

asDefaultChanged PROCEDURE(DefNo)
  CODE

  !{{{  don't let asActiveTicks go above one day
  IF asActiveTicks:Value > gxOneDay / gxOneSecond THEN asActiveTicks:Value = gxOneDay / gxOneSecond.
  !}}}
  !{{{  don't let asMaxHideTicks go above one day
  IF asMaxHiddenTicks:Value > gxOneDay / 100 THEN asMaxHiddenTicks:Value = gxOneDay / 100.
  !}}}
  !{{{  re-load asIdleEventTicks in case asActiveTicks changed
  asIdleEventTicks = asActiveTicks:Value
  !}}}

  IF ~asIsReader() AND ~asIsSFDC()
    !{{{  propagate agent params into the global INI
    
    CASE DefNo
    OF   asStopAgentAt:DefNo
    OROF asStartAgentAt:DefNo
    OROF asRunAgentAs:DefNo
      asSetAgentStartParams()
    END
    
    !}}}
  END

!}}}
!{{{  asPreInit              Perform power-up pre-initialisation

!{{{  history
OMIT('ENDOMIT')

Date____  Who_____  What__________________________________________________
31/10/94  -         Created
21/11/94            Modified
 7/10/97  DCN       Set initial default defaults needed during log in
 22/4/99  DCN       Initialise caches
 14/01/08 DCN       Init the use cach too
 23/03/10 DCN       Init the session UUID too
 10/12/12 DCN       Init the rel cache too
 03/07/17 DCN       asInitCaches, asUseCacheInit(), asRelCacheInit() API
Date____  Who_____  What__________________________________________________

!ENDOMIT
!}}}
!{{{  description
OMIT('ENDOMIT')



!ENDOMIT
!}}}

asPreInit FUNCTION(Starting,Stopping)
NoCS      EQUATE(TRUE)
  CODE

  !Set defaults needed before the real ones arrive.

  asRespondTicks:Value   = 30
  asLoginTicks:Value     = 120
  asLoginMaxTries:Value  = 3

  !show no session active
  asSessionUUID          = ''

  asInitCaches(NoCS)
  asUseCacheInit(NoCS)
  asRelCacheInit(NoCS)

  RETURN TRUE

!}}}
!{{{  asPostInit             Module post-initialisation

!{{{  history
OMIT('ENDOMIT')

Date____  Who_____  What__________________________________________________
24/02/95  -         Created
24/02/95            Modified
 10/4/98  DCN       Do purge logins here (instead of in asStart)
 12/1/100 DCN       Get the params to purge login the correct way round!!
 03/08/02 DCN       Call asAuditPurge on start-up and asAuditFlush on shut-down
 05/02/03 DCN       Don't let SFDC users trigger an audit purge
 11/06/03 DCN       Don't do an audit purge on first start after an upgrade
 26/11/03 DCN       Update asStartAgentAt in the INI file
 20/09/07 DCN       Use zxStartingUp to qualify start-up
                    Do regular house-keeping
 20/09/07 DCN       Don't update asStartAgentAt in the INI file (else multi-station tweak conflicts)
 24/09/07 DCN       Add agent running check
 27/09/07 DCN       Don't check for the agent when /fast set
 21/11/08 DCN       Don't do checks for read-only users
 17/03/10 DCN       Add asPurgeRegistered() call
 29/03/10 DCN       Don't do agent checks when the broker
                    Set broker start params in the INI
                    Do broker running checks
 31/03/10 DCN       Don't do broker running checks if we're SFDC (SFDC users wouldn't know what to do)
 04/05/10 DCN       Flush duff clocks in housekeeping too
 21/06/10 DCN       Check brokers are reachable across the network if they're running
 22/06/10 DCN       znIsBrokerAvailable API
 04/11/10 DCN       Add upgrader user to guards
 20/11/10 DCN       Don't do full housekeeping on start-up
 12/04/11 DCN       Guard audit purge with asAuditPurgeOnLogin
 03/05/11 DCN       Drop asRunAgent247, add asStopAgentAt
 27/11/13 DCN       Add defaults to control when in the day purging is done
 11/06/15 DCN       Do purge checks if the agent too
                    Correct audit purge guards!!
                    Rename asAuditPurgeOnLogin to asAutoAuditPurge
 02/12/15 DCN       Honour asAutoLoginPurge
 30/05/18 DCN       Call asDeskRestore() as required
 04/02/20 DCN       Don't reference zxStartUp, use param instead
 06/02/20 DCN       Don't wait for user response to messages
 18/04/20 DCN       [60366]Remove broker stuff
Date____  Who_____  What__________________________________________________

!ENDOMIT
!}}}
!{{{  description
OMIT('ENDOMIT')



!ENDOMIT
!}}}

asPostInit FUNCTION(Starting,Stopping)

LastPurgeLoginDate LONG,STATIC           !date of last login purge check
LastPurgeAuditDate LONG,STATIC           !date of last audit purge check

LastAgentDate      LONG,STATIC           !date of last agent check
LastAgentTime      LONG,STATIC           !time of last agent check

  CODE

  IF    Starting
    !{{{  do start-up stuff
    
    asSetAgentStartParams()        !needed to ensure its setup for the first time
    
    DO HouseKeeping

    IF ~zuSystemHasBeenUpgraded:Value AND ~BAND(zxFastStart,zxFast:NoDeskRestore)
      asDeskRestore()
    END
    
    !}}}
  ELSIF Stopping
    !{{{  do shut-down stuff
    
    asAuditFlush(TRUE)                   !this stops the writer thread
    
    !}}}
  ELSE  !running
    !{{{  do house-keeping stuff
    
    DO HouseKeeping
    
    !}}}
  END
  RETURN TRUE

!{{{  HouseKeeping ROUTINE

HouseKeeping ROUTINE

  asPurgeRegistered()

  IF asIsUpgrader()                   THEN EXIT. !do nothing more

  IF zuSystemHasBeenUpgraded:Value    THEN EXIT. !do nothing more
  IF ~zuSystemHasRunAtLeastOnce:Value THEN EXIT. !do nothing more

  asFlushClock()

  IF Starting                         THEN EXIT. !go no further during start-up

  IF asIsAgent()
    !{{{  see if we should be stopping
    
    !If the time is between our stop time and start time we should not be here.
    
    IF asStopAgentAt:Value AND asStartAgentAt:Value AND asStopAgentAt:Value <> asStartAgentAt:Value
      !We've got a window when we should not be here - see if we're in it
    
      IF ~gxWithinInterval(asStartAgentAt:Value,asStopAgentAt:Value)
        !Should not be here
        asRequestLogout()
      END
    
    END
    
    !}}}
    DO PurgeChecks
    EXIT                                         !do nothing more
  END

  IF asIsSFDC()                       THEN EXIT. !do nothing more

  IF asIsReader()                     THEN EXIT. !do nothing more

  DO PurgeChecks
  DO AgentChecks


!{{{  PurgeChecks ROUTINE

PurgeChecks ROUTINE

  IF ~BAND(zxFastStart,zxFast:NoPurgeChecks)

    IF asLoginPurgeAt:Value AND Clock() > asLoginPurgeAt:Value AND asAutoLoginPurge:Value
      IF LastPurgeLoginDate = Today()
        !Already done it today
      ELSE
        LastPurgeLoginDate = Today()     !note when we last did it
        asPurgeLogins()
      END
    END

    IF asAuditPurgeAt:Value AND Clock() > asAuditPurgeAt:Value AND asAutoAuditPurge:Value
      IF LastPurgeAuditDate = Today()
        !Already done it today
      ELSE
        LastPurgeAuditDate = Today()     !note when we last did it
        asAuditPurge()
      END
    END

  END

!}}}
!{{{  AgentChecks ROUTINE

AgentChecks ROUTINE
  DATA
AliveOn     LONG
AliveAt     LONG
  CODE

  !{{{  see if time to do it
  
  IF ~asRunAgentAs:Value                    |
  OR ~asStartAgentAt:Value                  |
  OR BAND(zxFastStart,zxFast:NoAgentChecks) |
  OR asAgentCheckInterval:Value < 1         THEN
    !Not relevant to check under any of these conditions
    EXIT
  END
  
  IF asStopAgentAt:Value <> asStartAgentAt:Value
    !We've got a window when the agent may not be running.
    !Don't check if we're in that window
    IF gxWithinInterval(asStopAgentAt:Value,asStartAgentAt:Value)
      !We're inside the agent 'stopped' window, so do nothing
      EXIT
    END
  END
  
  !Agent is either expected to run 24/7 or we're inside its running interval.
  !So, check regularly that it is running.
  
  IF ~LastAgentDate OR gxOlder(LastAgentDate,LastAgentTime+(asAgentCheckInterval:Value*100),Today(),Clock())
    !Time to check it
  ELSE
    !Not time to check yet
    EXIT
  END
  
  !}}}

  LastAgentDate = Today()                  !note when we last did it
  LastAgentTime = Clock()                  !..

  AliveOn = Deformat(gxGetINI('Agent','AliveOn',,zfGetGlobalINI()),@d5b)
  AliveAt = Deformat(gxGetINI('Agent','AliveAt',,zfGetGlobalINI()),@t4b)

  IF AliveOn
    IF gxOlder(AliveOn,AliveAt+(asAgentCheckInterval:Value*100),Today(),Clock())
      !Is not running or is stalled
    ELSE
      !OK
      EXIT
    END
  END

  !Oops - agent not running

  gxMessage('The Match-IT agent is either not running or has stalled. ' & |
            'The reasons for this should be ' & |
            'investigated. If you do not want this check done, you can set the default ' & |
            '"Agent Check Interval" (in the AS class) to 0 to stop this check being ' & |
            'performed. If in doubt, consult your supervisor.<13><10><13><10>The ' & |
            'agent is responsible for performing the major Match-IT house-keeping functions ' & |
            'like backing up your data and re-scheduling your order book.',|
            'Agent not running',asRespondTicks()*2,gxMsg:IsNotify)

!}}}

!}}}

!}}}
!{{{  asSetAgentStartParams

!{{{  history

! 26/11/03 DCN Created
! 01/02/05 DCN Use zfGetGlobalINI not DIY
! 21/04/05 DCN Do not use zfMakePath on asRunAgentAs [7755]
! 01/11/05 DCN Use gxPutINI not DIY
! 20/09/07 DCN Propagate asRunAgent247 too
! 21/09/07 DCN Propagate zxWatchDogInterval too
! 29/03/10 DCN Don't propagate zxWatchDogInterval (ZX does it)
! 03/05/11 DCN Drop asRunAgent247, add asStopAgentAt
!              Don't use Left() on the format
! 07/07/15 DCN [49655]Allow for Clarion not knowing how to format a 0 time

!}}}
!{{{  description

!Propagate the agent auto start service parameters as necessary.

!asSetAgentStartParams()

!}}}

asSetAgentStartParams PROCEDURE
  CODE

  gxPutINI('Agent','StartAt',gxFormatTime(asStartAgentAt:Value),zfGetGlobalINI())
  gxPutINI('Agent','StopAt' ,gxFormatTime(asStopAgentAt:Value ),zfGetGlobalINI())
  gxPutINI('Agent','RunThis',asRunAgentAs:Value                ,zfGetGlobalINI())

!}}}

!{{{  asNameUser             Name a user for reporting purposes

!{{{  history
OMIT('ENDOMIT')

Date____  Who_____  What__________________________________________________
14/02/95  -         Created
27/02/95  DCN       Use trCommitted() not trInTransaction
27/02/95            Modified
22/4/97   DCN       Be benign to missing ASU records
 25/11/99 DCN       Use zfGet()
 22/11/03 DCN       Don't ask for missing fields
 22/11/03 DCN       Allow for being given null
 14/04/20 DCN       Don't report being given null as an error
Date____  Who_____  What__________________________________________________

!ENDOMIT
!}}}
!{{{  description

!This is used for generating 'translated' fields for embedding in reports.
!A User is named by:Short name and Long name.

!}}}

asNameUser FUNCTION(User,Mnemonic,Name)
  CODE

  IF ~Omitted(2) THEN Mnemonic = ''.
  IF ~Omitted(3) THEN Name     = ''.
  IF ~User       THEN RETURN TRUE.

  IF zfOpen(asu::Id) = 0
    asu:RecNo = User
    IF zfGet(asu::Id,asuRecNoKey,TRUE)
      zfClose(asu::Id)
      RETURN FALSE
    ELSE
      IF asu:User = ''
        IF ~Omitted(2) THEN Mnemonic = 'User:' & asu:RecNo.
      ELSE
        IF ~Omitted(2) THEN Mnemonic = asu:User.
      END
      IF asu:Name = ''
        IF ~Omitted(3) THEN Name = 'Name:' & asu:RecNo.
      ELSE
        IF ~Omitted(3) THEN Name = asu:Name.
      END
      zfClose(asu::Id)
      RETURN TRUE
    END
  ELSE
    RETURN FALSE
  END

!}}}
!{{{  asDescribeUser         Describe a User for reports

!{{{  history
OMIT('ENDOMIT')

Date____  Who_____  What__________________________________________________
14/02/95  -         Created
14/02/95            Modified
22/4/97   DCN       Be benign to missing ASU records
 25/11/99 DCN       Use zfGet()
 12/02/14 DCN       Add Telephone,MobileTel,EMail params
Date____  Who_____  What__________________________________________________

!ENDOMIT
!}}}
!{{{  description

!This is used for generating 'translated' fields for embedding in reports.
!A User is described by:Role, Telephone, MobileTel, EMail.

!asDescribeUser(LONG User,<*STRING Role>,<*STRING Telephone>,<*STRING MobileTel>,<*STRING Email>),BYTE,PROC
!               !           !              !                   !                   !              !TRUE iff OK, FALSE iff error
!               !           !              !                   !                   !where to put the email address, blank on error
!               !           !              !                   !where to put the mobile number, blank on error
!               !           !              !where to put the telephone number, blank on error
!               !           !where to put the role, blank on error
!               !the user we want it for

!}}}

asDescribeUser FUNCTION(User,Role,Telephone,MobileTel,Email)
                             !    !         !         !
RoleP          EQUATE(2) !<--+    !         !         !
TelephoneP     EQUATE(3) !<-------+         !         !
MobileTelP     EQUATE(4) !<-----------------+         !
EmailP         EQUATE(5) !<---------------------------+

  CODE

  IF zfOpen(asu::Id) = 0
    asu:RecNo = User
    IF zfGet(asu::Id,asuRecNoKey,TRUE)
      IF ~Omitted(RoleP)      THEN Role      = ''.
      IF ~Omitted(TelephoneP) THEN Telephone = ''.
      IF ~Omitted(MobileTelP) THEN MobileTel = ''.
      IF ~Omitted(EmailP)     THEN Email     = ''.
      zfClose(asu::Id)
      RETURN FALSE
    ELSE
      IF ~Omitted(RoleP)      THEN Role = asu:Role.
      IF ~Omitted(TelephoneP) THEN Telephone = asu:Telephone.
      IF ~Omitted(MobileTelP) THEN MobileTel = asu:MobileTel.
      IF ~Omitted(EmailP)     THEN Email     = asu:Email.
      zfClose(asu::Id)
      RETURN TRUE
    END
  ELSE
    RETURN FALSE
  END

!}}}

!{{{  asUpdateProcess        Update a process name

!{{{  history
!
! 16/01/07 CRJ Created
!
!}}}
!{{{  description

!Update a specific process (ASP).

!asUpdateProcess(STRING,STRING,<STRING>),LONG
!                !      !      !         !0 or error code
!                !      !      !Optional new description
!                !      !New name
!                !THe system name of the process to change

!}}}

asUpdateProcess FUNCTION(Process,NewName,Description)
  CODE

  Err# = zfOpen(asp::Id)
  IF Err# THEN RETURN Err#.

  asp:Process = Process
  IF zfGet(asp::Id,aspProcessKey,,FALSE)
    Err# = gxDisplayError(asp::Id,'asUpdateProcess: Get()',ErrorCode())
  ELSE
    asp:Name = NewName
    IF ~Omitted(3)
      asp:Message = Description
    END
    Err# = zfPut(asp::Id,asp:RecNo)
  END

  zfClose(asp::Id)
  RETURN Err#

!}}}
!{{{  asHideNow              Hide the system now

!{{{  history
OMIT('ENDOMIT')

Date____  Who_____  What__________________________________________________
 5/01/95  DCN       Created
 5/01/95  DCN       Modified
 05/12/07 DCN       Use asReloginNow not idle event
 16/09/13 DCN       Ignore if we're the agent or a broker or SFDC
                    Return TRUE iff allowed to hide
 16/10/13 DCN       Add ReleaseLicence param
 24/10/13 DCN       Use asIsNormalUser() not DIY
Date____  Who_____  What__________________________________________________

!ENDOMIT
!}}}
!{{{  description

!Initiate the 'hide' system.
!When its allowed, hiding means start the re-login process and hide self.
!Its not allowed for agents and SFDC sessions. The function
!returns FALSE for those cases.

!asHideNow(BYTE ReleaseLicence=0),BYTE,PROC
!          !                      !TRUE iff hiding is allowed
!          !iff TRUE immediately release the user licence,
!          !iff FALSE hold the licence until asActiveTicks have elapsed

!When holding the licence, a restore before asActiveTicks does not require
!the user to provide their password. In all other cases the password is required.

!}}}

asHideNow FUNCTION(ReleaseLicence)

HideFirst BYTE(1),STATIC

  CODE

  IF ~asIsNormalUser()
    RETURN FALSE               !special users not allowed to hide
  END

  IF ReleaseLicence
    asReloginNow(HideFirst,0)
  ELSE
    IF asIdleEventTicks
      asReloginNow(HideFirst,asIdleEventTicks)
    ELSE
      !This means never release it
      asReloginNow(HideFirst,-1)
    END
  END

  RETURN TRUE

!}}}
!{{{  asReloginNow           Re-log as a different user now

!{{{  history

! 5/10/99  DCN Created
! 05/12/07 DCN Add HideFirst param
!              Remove hide frame call (asRelogin does it)
!              Add audit flush
! 15/04/09 DCN Do a thread resume if re-login already active
! 16/04/09 DCN Start as a non-MDI thread
!              Use a global for HideFirst not a message
! 17/02/10 DCN ztThreadStart API
! 10/09/12 DCN Remove gxSaveActiveWindow() call (no longer relevant)
! 16/10/13 DCN Add LicenceHoldTime param
! 03/12/20 DCN asAuditFlush API

!}}}
!{{{  description

!Log-out the current user and re-login as a different one.

!asReloginNow(BYTE=0,LONG LicenceHoldTime=0)
!             !      !the number of seconds to hold the licence
!             !iff TRUE initially hide re-login window

!While the licence is held, the user can restore without having to
!re-enter their password.

!}}}

asReloginNow PROCEDURE(HideFirst,LicenceHoldTime)
  CODE
  asAuditFlush()                               !Flush the log first
  IF asReLoginActive
    IF HideFirst
      !Do nothing
    ELSE
      ztThreadResume(asReLoginActive)          !wake up the one that is already running
    END
  ELSE
    asReloginHideFirst       = HideFirst       !save params
    asReloginLicenceHoldTime = LicenceHoldTime !..
    asReLoginActive = ztThreadStart(asReLogin) !start the re-login process
  END

!}}}
!{{{  asGetViewer            get viewer name for given file (if any)

!{{{  history

! 27/11/96 DCN Created
! 25/11/99 DCN Use zfGet()

!}}}
!{{{  description

!This function gets the function name for the viewer of the given file.
!If a viewer does not exist for the given file, then an empty string is
!returned. The returned string is that required by zxCallProcess.

!asGetViewer(SHORT),STRING
!            !      !The viewer name or blank
!            !FileNo - the file whose viewer name is required

!}}}

asGetViewer FUNCTION(FileNo)
Viewer LIKE(asd:Viewer)
  CODE
  IF zfOpen(asd::Id) THEN RETURN ''.
  asd:Label = zfLabel(FileNo)
  IF zfGet(asd::Id,asdLabelKey)
    Viewer = ''
  ELSE
    Viewer = asd:Viewer
  END
  zfClose(asd::Id)
  RETURN Viewer

!}}}
!{{{  asExclusiveLock

!{{{  history

! 17/06/00 DCN Created
! 28/09/01 DCN Check it got there
! 01/02/05 DCN Use zfGetGlobalINI not DIY
! 01/11/05 DCN Use gxGet/PutINI not DIY
! 18/04/07 DCN Do exclusive lock in the system INI not the data INI
! 31/03/10 DCN Extend to include a user as well as a station
! 01/04/10 DCN Add new reason
! 30/03/11 DCN Add old reason
! 05/02/15 DCN Allow for error from gxPutINI (may get access denied)

!}}}
!{{{  description

!Exclusively lock the system to the given station and user or un-lock it
!or return the current lock.

!asExclusiveLock(<*STRING>,<*STRING>,<*STRING>,<STRING>,<STRING>,<STRING>),BYTE,PROC
!                  !         !         !        !        !        !        !TRUE iff there is an exclusive lock
!                  !         !         !        !        !        !iff present set the lock reason to this
!                  !         !         !        !        !        !if omitted the reason is blank
!                  !         !         !        !        !iff present set the lock to this user,
!                  !         !         !        !        !if omitted or blank the lock is not user specific
!                  !         !         !        !iff present set the lock to this station,
!                  !         !         !        !if blank remove the lock,
!                  !         !         !        !if omitted leave the lock as is
!                  !         !         !iff present return the current reason locked (prior to changing it here)
!                  !         !iff present return the current user locked (prior to changing it here)
!                  !iff present return the current station locked (prior to changing it here)

!}}}

asExclusiveLock FUNCTION(OldStation,OldUser,OldReason,NewStation,NewUser,NewReason)
                            !          !       !         !          !       !
OldStationP     EQUATE(1)!<-+          !       !         !          !       !
OldUserP        EQUATE(2)!<------------+       !         !          !       !
OldReasonP      EQUATE(3)!<--------------------+         !          !       !
NewStationP     EQUATE(4)!<------------------------------+          !       !
NewUserP        EQUATE(5)!<-----------------------------------------+       !
NewReasonP      EQUATE(6)!<-------------------------------------------------+

OrigStation     LIKE(trStation),AUTO

  CODE

  OrigStation = gxGetINI('Exclusive','Station','',zfGetGlobalINI(TRUE))

  IF ~Omitted(OldStationP) THEN OldStation = OrigStation.
  IF ~Omitted(OldUserP   ) THEN OldUser    = gxGetINI('Exclusive','User','',zfGetGlobalINI(TRUE)).
  IF ~Omitted(OldReasonP ) THEN OldReason  = gxGetINI('Exclusive','Reason','',zfGetGlobalINI(TRUE)).

  IF ~Omitted(NewStationP)
    Err# = gxPutINI('Exclusive','Station',Clip(NewStation),zfGetGlobalINI(TRUE))
    IF Err#
      !Oops
      IF ~Omitted(OldStationP) THEN OldStation = 'Error:' & Err#.
      IF ~Omitted(OldUserP   ) THEN OldUser    = 'Error:' & Err#.
      IF ~Omitted(OldReasonP ) THEN OldReason  = 'Error:' & gxError(Err#).
    ELSIF ~Omitted(NewUserP)
      gxPutINI('Exclusive','User',Clip(NewUser),zfGetGlobalINI(TRUE))
    ELSE
      gxPutINI('Exclusive','User','',zfGetGlobalINI(TRUE))
    END
    IF ~Omitted(NewReasonP)
      gxPutINI('Exclusive','Reason',Clip(NewReason),zfGetGlobalINI(TRUE))
    ELSE
      gxPutINI('Exclusive','Reason','',zfGetGlobalINI(TRUE))
    END
  END

  IF OrigStation
    RETURN TRUE
  ELSE
    RETURN FALSE
  END

!}}}
!{{{  asAnalyseStaff         staff analysis

!{{{  history

! 27/7/98  DCN Created
! 29/7/98  DCN Use asGetHeadCount instead of DIY
! 19/12/16 DCN [53187]Add ShowMe stuff

!}}}
!{{{  description

!This function performs an analysis of staff over the given period
!using the given options. The results of the analysis are placed in
!the given queue. The items in the queue are directly used for display
!purposes, so they're strings. The items are *appended* to the given
!queue. It is the callers responsibility to manage the queue.

!asAnalyseStaff(gxTreeQType,LONG,LONG,LONG,LONG),LONG,PROC
!               !           !    !    !    !     !ErrorCode or 0 if all's well
!               !           !    !    !    !Mode: 0=do analysis, >0=do "show me"
!               !           !    !    !Options (a bit mask)
!               !           !    !Inclusive end date
!               !           !Inclusive start date
!               !Where to put the results

!NB: When Mode>0, it represents a line code from some previous analysis
!    that the caller wants a detail breakdown for (same options must also be set).

!}}}

asAnalyseStaff FUNCTION(AnalysisQ,StartDate,EndDate,Options,Mode)

!{{{  data

!{{{  ShowMe line types
  ITEMIZE
ShowMe:Nothing   EQUATE(0)
ShowMe:Starters  EQUATE
ShowMe:Leavers   EQUATE
ShowMe:Present   EQUATE
  END
!}}}

TitleAt  LONG  !analysis Q position where category title needs updating

!}}}

  CODE

  DO ProcedureEntry

  IF BAND(asAnalyseLevel,Options)
    !{{{  employees starting in period
    
    !All employees whose join date is >= start date and <= end date
    !and have a payroll number.
    
    IF gxMonitorStep('Employees joining') THEN Err# = gxInterruptErr; DO ProcedureExit.

    !{{{  Set title

    AnalysisQ:ItemName   = 'Number of employees started in period'
    AnalysisQ:ItemLevel  = 2
    AnalysisQ:ItemValue  = 'Unknown'
    AnalysisQ:ItemLineId = ShowMe:Starters
    AnalysisQ:ItemFileNo = 0
    AnalysisQ:ItemRecNo  = 0
    DO Add2Q
    TitleAt = Pointer(AnalysisQ)

    !}}}

    Joining# = 0
    
    asu:JoinDate = StartDate
    asu:User     = ''
    zfSet(asu::Id,asuJoinDateUserKey,,,zf:NoFixedField)
    LOOP
      IF zfNext(asu::Id) = 0    THEN BREAK.
      IF asu:JoinDate > EndDate THEN BREAK.
      IF asu:PayrollNumber = '' THEN CYCLE.                     !ignore non-employees
      Joining# += 1
      IF Mode = ShowMe:Starters
        AnalysisQ:ItemName   = asu:Name
        AnalysisQ:ItemLevel  = 3
        AnalysisQ:ItemValue  = 'Joined on ' & zvInFixFormat(zvDate,asu:JoinDate)
        AnalysisQ:ItemLineId = ShowMe:Starters
        AnalysisQ:ItemFileNo = asu::Id
        AnalysisQ:ItemRecNo  = asu:RecNo
        DO Add2Q
      END
      IF gxMonitorStep('Employees joining:' & Joining#) THEN Err# = gxInterruptErr; DO ProcedureExit.
    END
    
    !{{{  Update title

    Get(AnalysisQ,TitleAt)
    AnalysisQ:ItemValue = Joining#
    Put(AnalysisQ)

    !}}}
    
    !}}}
  END
  IF BAND(asAnalyseLevel,Options)
    !{{{  employees leaving in period
    
    !All employees whose leave date is >= start date and <= end date
    !and have a payroll number.
    
    IF gxMonitorStep('Employees leaving') THEN Err# = gxInterruptErr; DO ProcedureExit.
    
    !{{{  Set title

    AnalysisQ:ItemName   = 'Number of employees left in period'
    AnalysisQ:ItemLevel  = 2
    AnalysisQ:ItemValue  = 'Unknown'
    AnalysisQ:ItemLineId = ShowMe:Leavers
    AnalysisQ:ItemFileNo = 0
    AnalysisQ:ItemRecNo  = 0
    DO Add2Q
    TitleAt = Pointer(AnalysisQ)

    !}}}

    Leaving# = 0
    
    asu:LeaveDate = StartDate
    asu:JoinDate  = gxDateScanMin
    asu:User      = ''
    zfSet(asu::Id,asuLeaveJoinDateKey,,,zf:NoFixedField)
    LOOP
      IF zfNext(asu::Id) = 0     THEN BREAK.
      IF asu:LeaveDate > EndDate THEN BREAK.
      IF asu:PayrollNumber = ''  THEN CYCLE.                     !ignore non-employees
      Leaving# += 1
      IF Mode = ShowMe:Leavers
        AnalysisQ:ItemName   = asu:Name
        AnalysisQ:ItemLevel  = 3
        AnalysisQ:ItemValue  = 'Left on ' & zvInFixFormat(zvDate,asu:LeaveDate)
        AnalysisQ:ItemLineId = ShowMe:Leavers
        AnalysisQ:ItemFileNo = asu::Id
        AnalysisQ:ItemRecNo  = asu:RecNo
        DO Add2Q
      END
      IF gxMonitorStep('Employees leaving:' & Leaving#) THEN Err# = gxInterruptErr; DO ProcedureExit.
    END
    
    !{{{  Update title

    Get(AnalysisQ,TitleAt)
    AnalysisQ:ItemValue = Leaving#
    Put(AnalysisQ)

    !}}}
    
    !}}}
  END
  IF BAND(asAnalyseLevel,Options)
    !{{{  employees present in period
    
    !All employees whose join date is <= end date and leave date > end date or 0
    !and have a payroll number.
    
    IF gxMonitorStep('Employees present') THEN Err# = gxInterruptErr; DO ProcedureExit.

    !{{{  Set title

    AnalysisQ:ItemName   = 'Total number of employees at period end'
    AnalysisQ:ItemLevel  = 2
    AnalysisQ:ItemValue  = 'Unknown'
    AnalysisQ:ItemLineId = ShowMe:Present
    AnalysisQ:ItemFileNo = 0
    AnalysisQ:ItemRecNo  = 0
    DO Add2Q
    TitleAt = Pointer(AnalysisQ)

    !}}}

    Present# = 0
    
    asu:JoinDate = EndDate
    Clear(asu:User)
    zfSet(asu::Id,asuJoinDateUserKey,zfSet:FetchAll,,zf:NoFixedField)
    LOOP
      IF zfPrevious(asu::Id) = 0 THEN BREAK.
      IF gxMonitorStep() THEN Present# = 0; DO ProcedureExit.
      IF asu:LeaveDate AND asu:LeaveDate <= EndDate THEN CYCLE. !ignore if left in period
      IF asu:PayrollNumber = '' THEN CYCLE.                     !ignore non-employees
      Present# += 1
      IF Mode = ShowMe:Present
        AnalysisQ:ItemName   = asu:Name
        AnalysisQ:ItemLevel  = 3
        AnalysisQ:ItemValue  = 'Present at ' & zvInFixFormat(zvDate,EndDate)
        AnalysisQ:ItemLineId = ShowMe:Present
        AnalysisQ:ItemFileNo = asu::Id
        AnalysisQ:ItemRecNo  = asu:RecNo
        DO Add2Q
      END
      IF gxMonitorStep('Employees present:' & Present#) THEN Present# = 0; DO ProcedureExit.
    END

    !{{{  Update title

    Get(AnalysisQ,TitleAt)
    AnalysisQ:ItemValue = Present#
    Put(AnalysisQ)

    !}}}
    
    !}}}
  END

  DO ProcedureExit

!{{{  ProcedureEntry

ProcedureEntry ROUTINE

  IF ~Options THEN RETURN 0.   !nothing to do

  Err# = zfOpen(asu::Id); IF Err# THEN RETURN Err#.
  IF NOT gxMonitorStart('Analysing staff') THEN zfClose(asu::Id);RETURN gxUnspecifiedErr.

  AnalysisQ:ItemName   = 'Staff'
  AnalysisQ:ItemLevel  = 1
  AnalysisQ:ItemValue  = ''
  AnalysisQ:ItemModule = 'AS'
  AnalysisQ:ItemLineId = 0
  AnalysisQ:ItemFileNo = 0
  AnalysisQ:ItemRecNo  = 0
  DO Add2Q

!}}}
!{{{  ProcedureExit

ProcedureExit ROUTINE

  zfClose(asu::Id)
  gxMonitorStop()
  RETURN Err#

!}}}
!{{{  Add2Q

Add2Q ROUTINE

  AnalysisQ:ItemType = zvStr
  Add(AnalysisQ)
  IF ErrorCode()
    Err# = gxDisplayError(,'asAnalyseStaff: Add(AnalysisQ)',ErrorCode())
    DO ProcedureExit
  END

!}}}

!}}}
!{{{  asGetHeadCount

!{{{  history

! 29/7/98  DCN Created by extraction from asAnalyseStaff

!}}}
!{{{  description

!This function returns the number of employees that where present
!between the date range given. Returns 0 on error.

!asGetHeadCount(LONG=0,LONG=0),LONG,DLL
!               !      !       !Employee count in period
!               !      !Date - inclusive end date of period, if 0 use the start date
!               !Date - inclusive start date of period, if 0 use today

!}}}

asGetHeadCount FUNCTION(StartDate,EndDate)
  CODE
  DO ProcedureEntry
  !{{{  employees present in period
  
  !All employees whose join date is <= end date and leave date > end date or 0
  !and have a payroll number.
  
  IF gxMonitorStep('Employees present') THEN DO ProcedureExit.
  
  asu:JoinDate = EndDate
  Clear(asu:User)
  zfSet(asu::Id,asuJoinDateUserKey,zfSet:FetchAll,,zf:NoFixedField)
  LOOP
    IF zfPrevious(asu::Id) = 0 THEN BREAK.
    IF gxMonitorStep() THEN Present# = 0; DO ProcedureExit.
    IF asu:LeaveDate AND asu:LeaveDate <= EndDate THEN CYCLE. !ignore if left in period
    IF asu:PayrollNumber = '' THEN CYCLE.                     !ignore non-employees
    Present# += 1
    IF gxMonitorStep('Employees present:' & Present#) THEN Present# = 0; DO ProcedureExit.
  END
  
  !}}}
  DO ProcedureExit

!{{{  ProcedureEntry

ProcedureEntry ROUTINE

  IF StartDate = 0         THEN StartDate = Today().
  IF EndDate   < StartDate THEN EndDate   = StartDate.

  Present# = 0

  IF zfOpen(asu::Id) THEN RETURN 0.
  IF NOT gxMonitorStart('Get head count') THEN zfClose(asu::Id);RETURN 0.

!}}}
!{{{  ProcedureExit

ProcedureExit ROUTINE

  zfClose(asu::Id)

  gxMonitorStop()

  RETURN Present#

!}}}

!}}}
!{{{  asPrintBadge

!{{{  history
!
! 03/07/01 DCN Created
! 31/08/01 DCN Don't close file unless approp when user does'nt confirm
! 02/11/01 DCN Use / separator and upper case for bar codes
! 27/02/02 DCN opConfirm API
! 01/01/03 DCN Populate atu:CostAsResource
! 22/11/03 DCN Use zvGetInfo not zvFormat for xTx fields
! 08/06/04 CRJ Add clunky print all workers capability
! 09/06/04 CRJ Fix above
! 22/10/04 CPH Allow for printing all badges in one pass
! 02/11/04 CPH Don't print badge for user who has left [5568]
! 04/10/07 DCN Don't apply is production worker guard if asking to print a specific user
!
!}}}
!{{{  description
!
! Print a user ID badge for the given user.  OR print badges
! for all production workers.
!
! These are used by the SFDC system to recognise workers.
!
! asPrintBadge(LONG),LONG,PROC
!              !     !ErrorCode
!              !RecNo - (ASU) the user to print, 0=print all
!

!}}}

asPrintBadge FUNCTION(UserNo)

Badges       LONG

  CODE
  !{{{  code
  
  Err# = zfOpen(asu::Id)
  IF Err# THEN RETURN Err#.
  
  IF UserNo
    Err# = zfLoad(asu::Id,UserNo,TRUE);
    IF Err# THEN zfClose(asu::Id);RETURN Err#.
    IF NOT opConfirm('This action will print an ID badge for ' & Clip(asu:User) & |
                   '.  These (usually) include a bar-code that can be used to ' & |
                   'quickly identify a worker when logging progress on works ' & |
                   'orders.<10><10>Print ID badge now?',,asBadgeLayout())
      zfClose(asu::Id)
      RETURN gxInterruptErr
    END
  ELSE
    IF NOT opConfirm('This action will print an ID badge for all production workers' & |
                   '.  These (usually) include a bar-code that can be used to ' & |
                   'quickly identify a worker when logging progress on works ' & |
                   'orders.<10><10>Print ID badges now?',,asBadgeLayout())
      zfClose(asu::Id)
      RETURN gxInterruptErr
    END
  END
  
  opPrepare()
  trInclude(atu::Id)
  trInclude(ath::Id)
  qaPrepareDetach()
  opBegin()
  
  ath:PrintDate = Today()
  IF zfAdd(ath::Id,0).
  
  Badges = 0
  
  IF UserNo
    DO MakeBadge
  ELSE
    asu:IsProductionWorker = TRUE
    asu:User               = ''
    zfSet(asu::Id,asuIsProductionWorkerUserKey,zfSet:FetchAll,,zf:NoFixedField)
    LOOP
      IF zfNext(asu::Id) = 0            THEN BREAK. !'zf\zf_kif.clw'
      IF asu:LeaveDate <> 0             THEN CYCLE.
      DO MakeBadge
    END
  END
  IF Badges
    opAttach(asBadgeLayout())
    IF opSend(asBadgeLayout(),ath::Id,ath:RecNo,'User ID badge ' & Clip(asu:User)).
  ELSE
    trAbort(asu::Id,'No production workers found',gxNotAllowedErr)
  END
  Err# = opEnd()
  zfClose(asu::Id)
  RETURN Err#
  
  !}}}

!{{{  MakeBadge ROUTINE

!For the ASU in the file buffer, make a user badge record and attach it
!to the header in the ATH buffer.

MakeBadge ROUTINE

  atu:Record      :=: asu:Record
  atu:Notes        = asu:Notes
  atu:UserBarcode  = Upper(zfLabel(asu::Id)) & '/' & Format(asu:RecNo,@n010)
  IF asu:CostAsResource
    IF zvGetInfo(zvResTyp,asu:CostAsResource,atu:CostAsResource).
  ELSE
    atu:CostAsResource = ''
  END

  atu:LabelHeader = ath:RecNo

  IF zfAdd(atu::Id,0) THEN EXIT.
  IF qaDetach(atu::Id,atu:RecNo,asu::Id,asu:RecNo) THEN EXIT.

  Badges += 1

!}}}

!}}}
!{{{  asGetProcessType

!{{{  history

!10/12/02 DCN Created

!}}}
!{{{  description

!Return the process type of the given ASP

!asGetProcessType(LONG),STRING
!                 !     !see 'as\as_const.equ'@aspType:... mnemonics@, blank on error
!                 !RecNo - (ASP) process to check

!}}}

asGetProcessType FUNCTION(Process)

TypeOut LIKE(asp:Type)

  CODE

  IF zfOpen(asp::Id)              THEN                   RETURN ''.
  IF zfLoad(asp::Id,Process,TRUE) THEN zfClose(asp::Id); RETURN ''.

  TypeOut = asp:Type

  zfClose(asp::Id)

  RETURN TypeOut

!}}}
!{{{  asGetProcessName

!{{{  history

!10/12/02 DCN Created

!}}}
!{{{  description

!Return the process name of the given ASP

!asGetProcessName(LONG),STRING
!                 !     !the name (as required by asUseAllowed)
!                 !RecNo - (ASP) process to check

!}}}

asGetProcessName FUNCTION(Process)

NameOut LIKE(asp:Process)

  CODE

  IF zfOpen(asp::Id)              THEN                   RETURN ''.
  IF zfLoad(asp::Id,Process,TRUE) THEN zfClose(asp::Id); RETURN ''.

  NameOut = asp:Process

  zfClose(asp::Id)

  RETURN NameOut

!}}}

!{{{  asLogEventName

!{{{  history

! 04/05/11 DCN Created by extraction from aslView
! 20/01/14 DCN Add asCrashedEvent, asRecoveryEvent

!}}}
!{{{  description

!Given a log event code, return its name for UI display purposes.

!asLogEventName(SHORT),STRING
!               !      !Corresponding name
!               !Event code to name

!}}}

asLogEventName FUNCTION(eCode)
  CODE

  CASE eCode
  OF asExternalEvent
    RETURN 'External'
  OF asBadLoginEvent
    RETURN 'BadLogin'
  OF asLoginEvent
    RETURN 'Login'
  OF asSessionEvent
    RETURN 'Session'
  OF asLogoutEvent
    RETURN 'Logout'
  OF asUnknownEvent
    RETURN 'Unknown'
  OF asClockEvent
    RETURN 'Clock'
  OF asTaskStartEvent
    RETURN 'TaskStart'
  OF asTaskStopEvent
    RETURN 'TaskStop'
  OF asDeleteEvent
    RETURN 'Delete'
  OF asHideEvent
    RETURN 'Suspend'
  OF asUnHideEvent
    RETURN 'Resume'
  OF asStalledEvent
    RETURN 'Stalled'
  OF asCrashedEvent
    RETURN 'Crashed'
  OF asRecoveryEvent
    RETURN 'Recovery'
  ELSE
    RETURN '?[' & eCode & ']?'
  END

!}}}

!{{{  asFuncNam2RecNo

!{{{  history

! 16/12/02 DCN Created

!}}}
!{{{  description

!Translate an ASP system name to its RecNo.

!asFuncNam2RecNo(STRING),LONG
!                !       !RecNo - (ASP) or 0
!                !System process name

!}}}

asFuncNam2RecNo FUNCTION(Process)
  CODE
  IF zfOpen(asp::Id) THEN RETURN 0.
  asp:Process = Process
  IF zfGet(asp::Id,aspProcessKey,zf:+zf:NoMemo)
    zfClose(asp::Id)
    RETURN 0
  END
  RecNo# = asp:RecNo
  zfClose(asp::Id)
  RETURN RecNo#

!}}}
!{{{  asFileNo2RecNo

!{{{  history

! 16/12/02 DCN Created

!}}}
!{{{  description

!Translate a FileNo to its RecNo in the ASD file.

!asFileNo2RecNo(SHORT),LONG
!               !      !RecNo - (ASD) or 0
!               !FileNo

!}}}

asFileNo2RecNo FUNCTION(FileNo)
  CODE
  IF zfOpen(asd::Id) THEN RETURN 0.
  asd:Label = zfLabel(FileNo)
  IF zfGet(asd::Id,asdLabelKey,zf:+zf:NoMemo)
    zfClose(asd::id)
    RETURN 0
  END
  RecNo# = asd:RecNo
  zfClose(asd::Id)
  RETURN RecNo#

!}}}
!{{{  asFieldName2RecNo

!{{{  history

! 27/06/05 DCN Created
! 08/07/05 DCN Extend for non-file fields

!}}}
!{{{  description

!Translate a FieldName to its RecNo in the ASF file.

!asFieldName2RecNo(STRING),LONG
!                  !       !RecNo - (ASF) or 0
!                  !Field name

!}}}

asFieldName2RecNo FUNCTION(FieldName)
  CODE
  IF ~FieldName THEN RETURN 0.
  IF zfOpen(asf::Id) THEN RETURN 0.
  IF ~asDecodeFieldName(FieldName,asf:FileNam,asf:FuncNam,asf:FieldName)
    zfClose(asf::id)
    RETURN 0
  END
  IF zfGet(asf::Id,asfFileFuncFieldKey,zf:+zf:NoMemo)
    zfClose(asf::id)
    RETURN 0
  END
  RecNo# = asf:RecNo
  zfClose(asf::Id)
  RETURN RecNo#

!}}}
!{{{  asRecNo2FileNo

!{{{  history

! 16/12/02 DCN Created

!}}}
!{{{  description

!Return the file ID of the given ASD

!asRecNo2FileNo(LONG),SHORT
!               !     !FileNo or 0
!               !RecNo - (ASD) file to check

!}}}

asRecNo2FileNo FUNCTION(RecNo)
  CODE

  IF zfOpen(asd::Id)            THEN                   RETURN 0.
  IF zfLoad(asd::Id,RecNo,TRUE) THEN zfClose(asd::Id); RETURN 0.

  FileNo# = zfNumber(asd:Label)

  zfClose(asd::Id)

  RETURN FileNo#

!}}}
!{{{  asRecNo2FieldName

!{{{  history

! 27/06/05 DCN Created
! 08/07/05 DCN Extend for non-file fields

!}}}
!{{{  description

!Return the field name of the given ASF

!asRecNo2FieldName(LONG),STRING
!                  !     !FieldName or ''
!                  !RecNo - (ASF) field to check

!}}}

asRecNo2FieldName FUNCTION(RecNo)
FieldName         STRING(64)
  CODE

  IF ~RecNo                     THEN                   RETURN ''.

  IF zfOpen(asf::Id)            THEN                   RETURN ''.
  IF zfLoad(asf::Id,RecNo,TRUE) THEN zfClose(asf::Id); RETURN ''.

  FieldName = asEncodeFieldName(asf:FileNam,asf:FuncNam,asf:FieldName)

  zfClose(asf::Id)

  RETURN FieldName

!}}}

!{{{  asDecodeFieldName

!{{{  history

! 28/06/05 DCN Created
! 08/07/05 DCN Extend for non-file fields
! 13/05/09 DCN Use drIsField not drIsFileField

!}}}
!{{{  description

!Given a fully qualified field name, extract the components of the field.
!Returns TRUE iff a valid field name.

!asDecodeFieldName(STRING,<*STRING>,<*STRING>,<*STRING>),BYTE,PROC
!                  !        !         !         !        !TRUE iff field name valid
!                  !        !         !         !Iff present put the field name component here
!                  !        !         !Iff present put the function name component here
!                  !        !Iff present put the file TLA component here
!                  !Fully qualified name

!File fields must be presented in the form: tla:Field, the Field component must not
!contain a . or a :, the tla component must be a valid (current) file ID.

!Form fields must be provided in the form: form.field, the form component may
!contain :'s but must not be a tla, the field component is free format.

!}}}

asDecodeFieldName FUNCTION(FullName,FileId,FuncNam,FieldName)
                                    !      !       !
FileIdP           EQUATE(2) !<------+      !       !
FuncNamP          EQUATE(3) !<-------------+       !
FieldNameP        EQUATE(4) !<---------------------+

SplitAt           LONG,AUTO
FileNo            SHORT,AUTO
ThisFunc          LIKE(asf:FuncNam),AUTO
ThisField         LIKE(asf:FieldName),AUTO

  CODE

  IF ~Omitted(FileIdP   ) THEN FileId    = ''.
  IF ~Omitted(FuncNamP  ) THEN FuncNam   = ''.
  IF ~Omitted(FieldNameP) THEN FieldName = ''.

  SplitAt = InString('.',FullName,1,1)   !check for a form name first
  IF ~SplitAt
    SplitAt = InString(':',FullName,1,1) !check for a file name second
  END
  IF SplitAt < 4 THEN RETURN FALSE.      !must at least have tla:x

  ThisFunc = FullName[1 : SplitAt-1]
  FileNo   = zfNumber(ThisFunc)
  IF SplitAt = 4 AND FileNo < 0
    RETURN FALSE                         !old file fields are not valid
  ELSIF SplitAt = 4 AND FileNo > 0
    ThisFunc  = ''                       !Got a file field
  ELSIF SplitAt < Len(Clip(FullName))
    FileNo    = 0                        !Assume its a form field
  ELSE
    RETURN FALSE                         !no field name
  END

  ThisField = FullName[SplitAt+1 : Len(FullName)]

  IF ~Omitted(FileIdP   ) THEN FileId    = zfLabel(FileNo).
  IF ~Omitted(FuncNamP  ) THEN FuncNam   = ThisFunc.
  IF ~Omitted(FieldNameP) THEN FieldName = ThisField.

  IF FileNo
    RETURN drIsField(FileNo,ThisField,TRUE)    !ignore qualifiers
  ELSE
    RETURN TRUE
  END

!}}}
!{{{  asEncodeFieldName

!{{{  history

! 28/06/05 DCN Created
! 08/07/05 DCN Extend for non-file fields

!}}}
!{{{  description

!Given the field name components construct the fully qualified name

!asEncodeFieldName(STRING,STRING,STRING),STRING
!                  !      !      !       !fully qualified name
!                  !      !      !field component
!                  !      !function name component
!                  !file ID component

!}}}

asEncodeFieldName FUNCTION(FileNam,FuncNam,FieldName)
  CODE
  IF FileNam
    RETURN Clip(FileNam) & ':' & Clip(FieldName)
  ELSIF FuncNam
    RETURN Clip(FuncNam) & '.' & Clip(FieldName)
  ELSE
    RETURN ''
  END

!}}}
!{{{  asSetFieldNameAccess

!{{{  history

! 29/06/05 DCN Created
! 08/07/05 DCN Create the ASF record
!              Extend for non-file fields
! 04/03/08 DCN Allow access changes even if user cannot see the field
! 20/01/09 DCN Do security checks before allow access
!              Add silent param

!}}}
!{{{  description

!Call the access privileges editor for the given field

!asSetFieldNameAccess(STRING,BYTE=0),LONG,PROC
!                     !      !       !ErrorCode
!                     !      !iff TRUE be silent about errors
!                     !Fully qualified field name to set access rights for

!}}}

asSetFieldNameAccess FUNCTION(FieldName,Silent)

FilePart             LIKE(asf:FileNam)
FuncPart             LIKE(asf:FuncNam)
FieldPart            LIKE(asf:FieldName)
OrigRole             LIKE(asUserRole),AUTO

  CODE

  IF ~FieldName
    IF Silent
      RETURN gxNotAllowedErr
    ELSE
      RETURN gxDisplayError(,'asSetFieldNameAccess: No field name given.',gxNotAllowedErr)
    END
  END

  IF ~asDecodeFieldName(FieldName,FilePart,FuncPart,FieldPart)
    IF Silent
      RETURN gxNotAllowedErr
    ELSE
      RETURN gxDisplayError(,'asSetFieldNameAccess: [' & Clip(FieldName) & '] is not a file field.',gxNotAllowedErr)
    END
  END

  IF ~asCanSetSecurity()
    IF Silent
      RETURN NoAccessErr
    ELSE
      RETURN gxDisplayError(,'asSetFieldNameAccess: [' & Clip(FieldName) & ']',NoAccessErr)
    END
  END

  !Check user access to asfUpdate (*not* the role)
  OrigRole = asUserRole
  asSetAccessRights()
  IF asUseAllowed('asfUpdate',TRUE)
    !OK to carry on
  ELSE
    !Not OK
    asSetAccessRights(OrigRole)          !restore orig role rights
    IF Silent
      RETURN NoAccessErr
    ELSE
      RETURN gxDisplayError(,'asSetFieldNameAccess: [' & Clip(FieldName) & ']',NoAccessErr)
    END
  END

  IF asFieldAllowed(FieldName,,TRUE,TRUE).     !Just creating the ASF record

  Err# = zfOpen(asf::Id); IF Err# THEN RETURN Err#.

  asf:FileNam   = FilePart
  asf:FuncNam   = FuncPart
  asf:FieldName = FieldPart
  Err# = zfGet(asf::Id,asfFileFuncFieldKey)
  IF Err#
    zfClose(asf::Id)
    asSetAccessRights(OrigRole)          !restore orig role rights
    RETURN gxDisplayError(asf::Id,'asSetFieldNameAccess: zfGet(...',Err#)
  END
  GlobalRequest = ChangeRecord
  asfUpdate()                            !NB: This'll also check ASF file access rights
  IF GlobalResponse <> RequestCompleted
    zfClose(asf::Id)
    asSetAccessRights(OrigRole)          !restore orig role rights
    RETURN gxUnspecifiedErr
  END

  zfClose(asf::Id)
  asSetAccessRights(OrigRole)            !restore orig role rights
  RETURN 0

!}}}
!{{{  asSetFieldLevel

!{{{  history

! 30/07/08 DCN Created

!}}}
!{{{  description

!Set the field user levels file to include the given field.

!asSetFieldLevel(STRING,LONG),LONG,PROC
!                !      !     !ErrorCode()
!                !      !Level to set (0..9)
!                !Field name to set

!This function reads the ...\configs\levels.sec file and looks for a series
!of lines bracketed by "BOOT_START:" and "BOOT_END:".
!In those lines it looks for a line of the form "INCLUDE_FIELD: FieldName(#)".
!If it finds one, it changes the (#) component to reflect the given level.
!If it doesn't find one, it creates it.
!The ASF file is also changed so the effects can be seen immediately.

!}}}

asSetFieldLevel FUNCTION(FieldName,Level)

!{{{  data

FilePart         LIKE(asf:FileNam)
FuncPart         LIKE(asf:FuncNam)
FieldPart        LIKE(asf:FieldName)

LevelLineQ       QUEUE
Line               STRING(256)
                 END

BootStartAt      LONG
BootEndAt        LONG

BootStartMark    STRING('BOOT_START:')
BootEndMark      STRING('BOOT_END:')

IncludeFieldMark STRING('INCLUDE_FIELD:')

!}}}

  CODE

  IF ~asDecodeFieldName(FieldName,FilePart,FuncPart,FieldPart)
    RETURN gxDisplayError(,'asSetFieldLevel: [' & Clip(FieldName) & '] is not a file field.',gxNotAllowedErr)
  END

  IF Level < 0 OR Level > 9
    RETURN gxDisplayError(,'asSetFieldLevel: [' & Level & '] is not a valid level (limits are 0..9).',gxNotAllowedErr)
  END

  !{{{  load and parse the levels file
  
  BootStartAt = 0
  BootEndAt   = 0
  
  Free(LevelLineQ)
  
  Err# = zbScanStart('configs\levels.sec'); IF Err# THEN RETURN Err#.
  
  LOOP
    IF zbScanNext(TRUE,TRUE,TRUE) THEN BREAK.
    LevelLineQ:Line = zbScanLine()
    Add(LevelLineQ)
    IF gxErrCode()
      Err# = gxDisplayError(,'asSetFieldLevel: Add(LevelLineQ)',gxErrCode())
      zbScanStop()
      RETURN Err#
    END
    !{{{  parse for the BOOT_START: line
    
    IF ~BootStartAt AND Instring(Clip(BootStartMark),LevelLineQ:Line,1,1)
      !Found start of boot block
      BootStartAt = Records(LevelLineQ)        !note found start
      CYCLE
    END
    
    !}}}
    !{{{  parse for the BOOT_END: line
    
    IF BootStartAt AND ~BootEndAt AND Instring(Clip(BootEndMark),LevelLineQ:Line,1,1)
      !Found end of boot block
      BootEndAt = Records(LevelLineQ)        !note found end
      CYCLE
    END
    
    !}}}
    !{{{  parse for the INCLUDE_FIELD: line
    
    IF  BootStartAt AND ~BootEndAt                                  |
    AND Instring(Clip(IncludeFieldMark),LevelLineQ:Line,1,1)        |
    AND Instring(Upper(Clip(FieldName)),Upper(LevelLineQ:Line),1,1) THEN
      !Found our name
      !Dump it - so it can be re-added with the correct level at the end
      Delete(LevelLineQ)
      CYCLE
    END
    
    !}}}
  END
  
  zbScanStop()
  
  !}}}

  IF ~BootStartAt OR ~BootEndAt
    RETURN gxDisplayError(,'asSetFieldLevel: configs\levels.sec does not contain ' & |
                           Clip(BootStartMark) & ' or ' & Clip(BootEndMark),gxNotAllowedErr)
  END

  !{{{  update the levels file
  
  Err# = gxBackupFile('configs\levels.sec',,,10); IF Err# THEN RETURN Err#.
  
  Err# = zbWriteStart('configs\levels.sec'); IF Err# THEN RETURN Err#.
  
  zbWriteEmpty()
  
  LOOP i# = 1 TO Records(LevelLineQ)
    Get(LevelLineQ,i#)
  
    IF i# = BootEndAt
      !Write our new field
      zbWriteLine(Clip(IncludeFieldMark) & ' ' & Clip(FieldName) & '(' & Level & ')')
    END
  
    !Re-write the rest
    zbWriteLine(LevelLineQ:Line)  !put this line back in the file
  END
  
  zbWriteStop()
  
  !}}}

  !{{{  update the ASF
  
  IF asFieldAllowed(FieldName,,TRUE,TRUE).     !Just creating the ASF record
  
  Err# = zfOpen(asf::Id); IF Err# THEN RETURN Err#.
  
  asf:FileNam   = FilePart
  asf:FuncNam   = FuncPart
  asf:FieldName = FieldPart
  Err# = zfGet(asf::Id,asfFileFuncFieldKey)
  IF Err#
    zfClose(asf::Id)
    RETURN gxDisplayError(asf::Id,'asSetFieldLevel: zfGet(...',Err#)
  END
  
  asf:UserLevel = Level
  
  Err# = zfPut(asf::Id,asf:RecNo)
  
  zfClose(asf::Id)
  
  !}}}

  RETURN Err#

!}}}
!{{{  asFieldAccessPopup

!{{{  history

! 30/07/08 DCN Created
! 01/10/08 DCN Use zbIsBootable not asGetDevEnv
! 24/10/08 DCN Add MyHelp option
! 16/01/09 DCN Add facility not available option
!              Check user access to asfUpdate not role
! 20/01/09 DCN Use asCanSetSecurity not DIY
! 02/02/09 DCN Allow menu extension
!              Change exit codes to allow extension differentiation
! 18/02/09 DCN [23430]Fix picked return whoopsie
! 27/04/09 DCN Fix boot level menu numbers

!}}}
!{{{  description

!Offer field access editing options on the given field name

!asFieldAccessPopup(STRING,BYTE=0,<STRING>),LONG,PROC
!                   !      !       !iff present, additional popup menu choices
!                   !      !       !Option performed
!                   !      !       !  0=nothing
!                   !      !       ! -1=What's this help selected (when MyHelp asserted)
!                   !      !       ! -2=facility not available (only when no additional menu choices)
!                   !      !       ! -3=security settings changed
!                   !      !       ! -4=interface level changed
!                   !      !       ! >0=additional menu choice picked
!                   !      !iff TRUE ignore control help for What's This? and return -1
!                   !FieldName to do it on, blank is a silent no-op

!}}}

asFieldAccessPopup FUNCTION(FieldName,MyHelp,Extension)
                                             !
ExtensionP         EQUATE(3) !<--------------+

Suffix             STRING(512),AUTO
Picked             LONG,AUTO
LevelNow           LONG,AUTO
OrigRole           LIKE(asUserRole),AUTO
SetBootLevel       BYTE,AUTO

  CODE

  IF ~FieldName                      |
  OR ~asDecodeFieldName(FieldName)   |
  OR ~asCanSetSecurity()             THEN DO NakedPopup.   !facility not available

  !{{{  check user access to asfUpdate
  
  !NB: checking the user *not* the role
  
  OrigRole = asUserRole
  
  asSetAccessRights()
  
  IF asUseAllowed('asfUpdate',TRUE)
    !OK to carry on
    IF asFieldAllowed(FieldName,,TRUE,,LevelNow).
  
  ELSE
    !Not OK
    asSetAccessRights(OrigRole)
    DO NakedPopup
  
  END
  
  !}}}

  IF zbIsBootable() AND Omitted(ExtensionP)
    SetBootLevel = TRUE
    Suffix = '|-|~Options below set levels.sec|-'
    LOOP i# = 0 TO 9
      IF i# = LevelNow
        Suffix = Clip(Suffix) & '|+Boot as user level ' & i#
      ELSE
        Suffix = Clip(Suffix) & '|-Boot as user level ' & i#
      END
    END
  ELSE
    SetBootLevel = FALSE
    Suffix = ' (level=' & LevelNow & ')'
  END

  !{{{  run the menu
  
  IF Omitted(ExtensionP)
    Picked = zwPopUpEx('Set field/button access' & Clip(Suffix),MyHelp)
  
  ELSE
    Picked = zwPopUpEx('Set field/button access' & Clip(Suffix) & '|-|' & Clip(Extension),MyHelp)
  
  END
  
  CASE Picked
  OF 1
    asSetFieldNameAccess(FieldName)
    Picked = -3
  
  OF 3 TO 12
    IF SetBootLevel
      !These are ours
      asSetFieldLevel(FieldName,Picked-3)
      Picked = -4
    ELSE
      !These are extensions
      Picked -= 1              !Remove our stuff
    END
  
  OF -1                        !What's This? help selected
    Picked = -1
  
  OF 0
    !Leave as is
  
  ELSE
    !Remove our stuff
    IF SetBootLevel
      Picked -= 12
    ELSE
      Picked -= 1
    END
  
  END
  
  !}}}

  asSetAccessRights(OrigRole)

  RETURN Picked


!{{{  NakedPopup

!We get here if the security setting facility is not available.
!If we've got an extension menu, just run that, else tell caller to go away.

NakedPopup ROUTINE

  IF Omitted(ExtensionP) THEN RETURN -2.

  RETURN zwPopupEx(Extension,MyHelp)

!}}}

!}}}

!{{{  asSetAccessRights

!{{{  history

! 17/12/02 DCN Created by extraction from asManageGroups and asChangeRole
! 13/04/04 DCN Don't set dis-allowed user groups
! 20/01/09 DCN Make asAllowSecuritySetup sticky wrt the base the user

!}}}
!{{{  description

!Change the current log-in access rights to those given.

!asSetAccessRights(LONG=0,LONG=0),LONG,PROC
!                  !      !       !ErrorCode
!                  !      !Groups to set, 0=set to user given,
!                  !      !logged-in user must be a supervisor of this
!                  !RecNo - (ASU) set rights to this user, 0=logged in user, -1=none
!                  !        this must be a sub-ordinate of the logged in user

!}}}

asSetAccessRights FUNCTION(UserNo,UserGroups)
  CODE

  IF ~UserNo     THEN UserNo     = asGetUser().
  IF ~UserGroups THEN UserGroups = asPrivileges(UserNo).

  IF ~asIsSubordinate(UserNo)                               THEN RETURN NoAccessErr.
  IF ~asSupervisorOf(UserGroups,,asPrivileges(asGetUser())) THEN RETURN NoAccessErr.

  asUserGroups = BAND(asAllGroupBits,UserGroups)
  asUserRole   = UserNo

  !Keep this on the base user
  vdGetDefault(asu::Id,asGetUser(),asAllowSecuritySetup:DefNo,asAllowSecuritySetup:Value)

  RETURN 0

!}}}

!{{{  asGetCostingResource

!{{{  history

! 01/01/03 DCN Created

!}}}
!{{{  description

!Given a UserNo return the costing resource associated with them.

!asGetCostingResource(LONG=0),LONG
!                     !       !RecNo - (RST) costing resource, or 0 if free or error
!                     !RecNo - (ASU) the user to look at, 0=logged in user

!}}}

asGetCostingResource FUNCTION(UserNo)

CostingResource      LIKE(asu:CostAsResource)

  CODE

  IF ~UserNo THEN UserNo = asGetUser().

  IF zfOpen(asu::Id) THEN RETURN 0.
  IF zfLoad(asu::Id,UserNo,TRUE) THEN zfClose(asu::id); RETURN 0.

  CostingResource = asu:CostAsResource

  zfClose(asu::id)

  IF ~CostingResource THEN CostingResource = asWorkerResource:Value.

  RETURN CostingResource

!}}}
!{{{  asGetSFDCStatus

!{{{  history
!
! 10/01/03 DCN Created
! 13/02/14 CRJ Add resource
!
!}}}
!{{{  description

!Get the current SFDC status of the given worker.
!This is a helper function for the UI, so it returns fully formatted information.

!asGetSFDCStatus(LONG=0,<*STRING>,<*STRING>,<*STRING>,<*STRING>,<*LONG>,<*STRING>)
!                !        !         !         !         !         !       !The formatted resource
!                !        !         !         !         !         !RecNo - (WOH) the works order
!                !        !         !         !         !The formatted date/time
!                !        !         !         !The formatted works order step
!                !        !         !The formatted works order
!                !        !The action description (Start setup, etc.)
!                !RecNo - (ASU) the worker to look at, 0=use file buffer

!}}}

asGetSFDCStatus PROCEDURE(Worker,SFDCAction,SFDCWOrder,SFDCStep,SFDCSince,WOrder,SFDCRes)
                                 !          !          !        !         !      !
SFDCActionP     EQUATE(2)  !<----+          !          !        !         !      !
SFDCWOrderP     EQUATE(3)  !<---------------+          !        !         !      !
SFDCStepP       EQUATE(4)  !<--------------------------+        !         !      !
SFDCSinceP      EQUATE(5)  !<-----------------------------------+         !      !
WOrderP         EQUATE(6)  !<---------------------------------------------+      !
SFDCResP        EQUATE(7)  !<----------------------------------------------------+

ActiveJob       LONG
ActiveAssy      LONG
Action          STRING(16),AUTO
FromDate        LONG
FromTime        LONG
ActiveRes       LONG

  CODE

  IF ~Omitted(SFDCActionP) THEN SFDCAction = ''.
  IF ~Omitted(SFDCWOrderP) THEN SFDCWOrder = ''.
  IF ~Omitted(SFDCStepP  ) THEN SFDCStep   = ''.
  IF ~Omitted(SFDCSinceP ) THEN SFDCSince  = ''.
  IF ~Omitted(WOrderP    ) THEN WOrder     = 0.
  IF ~Omitted(SFDCResP   ) THEN SFDCRes    = ''.

  IF ~Worker THEN Worker = asu:RecNo.

  IF woGetWorkerLog(Worker,ActiveJob,ActiveAssy,Action,FromDate,FromTime,ActiveRes)

    IF ~Omitted(SFDCActionP) THEN SFDCAction = 'Active on: ' & Action.
    IF ~Omitted(SFDCWOrderP) THEN SFDCWOrder = gxFormat('WO: @lWOrder@',ActiveJob).
    IF ~Omitted(SFDCStepP  ) THEN SFDCStep   = gxFormat('Step: @lWOAssy@',ActiveAssy).
    IF ~Omitted(SFDCSinceP ) THEN SFDCSince  = gxFormat('Since: @lDate@ at @lClock@',FromDate,FromTime).
    IF ~Omitted(WOrderP    ) THEN WOrder     = ActiveJob.
    IF ~Omitted(SFDCResP   ) THEN SFDCRes    = gxFormat('Res: @lResTyp@',ActiveRes).

  END

!}}}

!ASL
!{{{  asLastLogin            Get last valid login date/time

!{{{  history
OMIT('ENDOMIT')

Date____  Who_____  What__________________________________________________
 1/07/95  DCN       Created
 1/07/95  DCN       Modified
9/8/96    DCN       Don't use keywords for param names (CW2 doesn't tolerate it)
 15/1/98  DCN       Ignore other sites
 17/03/10 DCN       Use asl:Site not asl:WriteSite
 06/04/10 DCN       Use zfPrevious() not Previous()
 04/05/10 DCN       Don't get memos
 24/05/20 DCN       Apply asFileOptions to zfSet too
Date____  Who_____  What__________________________________________________

!ENDOMIT
!}}}
!{{{  description

!This function returns the date and time of the last valid login to the system
!from any site or station. If there is no last login (ie. this is the first
!run of the system) then the date/time returned will be zero.

!asLastLogin(*LONG,*LONG),LONG
!             !     !     !ErrorCode or 0 if got a date
!             !     !Time of the last valid login
!             !Date of the last valid login

!}}}

asLastLogin FUNCTION(DateIn,TimeIn)
  CODE

  DateIn = 0
  TimeIn = 0
  Err# = zfOpen(asl::Id); IF Err# THEN RETURN Err#.
  asl:Type = asLoginEvent
  Clear(asl:Date,1)
  Clear(asl:Time,1)
  zfSet(asl::Id,aslTypeDateTimeKey,,asFileOptions,aslType)
  LOOP
    IF zfPrevious(asl::Id,asFileOptions) = 0 THEN Err# = BadRecErr; BREAK.
    IF asl:Site <> trSite                    THEN CYCLE.  !ignore other sites
    DateIn = asl:Date
    TimeIn = asl:Time
    BREAK
  END
  zfClose(asl::Id)
  RETURN Err#

!}}}
!{{{  asLastLogout           Get last logout date/time

!{{{  history
OMIT('ENDOMIT')

Date____  Who_____  What__________________________________________________
 1/07/95  DCN       Created
 1/07/95  DCN       Modified
9/8/96    DCN       Don't use keywords for param names (CW2 doesn't tolerate it)
 15/1/98  DCN       Ignore other sites
 17/03/10 DCN       Use asl:Site not asl:WriteSite
 06/04/10 DCN       Use zfPrevious() not Previous()
 04/05/10 DCN       Don't get memos
 24/05/20 DCN       Apply asFileOptions to zfSet too
Date____  Who_____  What__________________________________________________

!ENDOMIT
!}}}
!{{{  description

!This function returns the date and time of the last logout from the system
!from any site or station. If there is no last logout (ie. this is the first
!run of the system) then the date/time returned will be zero.

!asLastLogout(*LONG,*LONG),LONG
!              !     !     !ErrorCode or 0 if got a date
!              !     !Time of the last logout
!              !Date of the last logout

!}}}

asLastLogout FUNCTION(DateIn,TimeIn)
  CODE

  DateIn = 0
  TimeIn = 0
  Err# = zfOpen(asl::Id); IF Err# THEN RETURN Err#.
  asl:Type = asLogoutEvent
  Clear(asl:Date,1)
  Clear(asl:Time,1)
  zfSet(asl::Id,aslTypeDateTimeKey,,asFileOptions,aslType)
  LOOP
    IF zfPrevious(asl::Id,asFileOptions) = 0 THEN Err# = BadRecErr; BREAK.
    IF asl:Site <> trSite                    THEN CYCLE. !ignore other sites
    DateIn = asl:Date
    TimeIn = asl:Time
    BREAK
  END
  zfClose(asl::Id)
  RETURN Err#

!}}}
!{{{  asPurgeLogins          purge old ASL records

!{{{  history

! 9/11/96  DCN Created
! 10/4/98  DCN Do in a TR
! 04/05/10 DCN Don't get memos
! 02/12/15 DCN Do for all stations
! 24/05/20 DCN Apply asFileOptions to zfSet too

!}}}
!{{{  description

!This function removes old login records from the given date.

!asPurgeLogins(LONG=0),LONG,PROC
!              !       !ErrorCode() or 0
!              !Date to purge from, 0=use default

!}}}

asPurgeLogins FUNCTION(FromDate)
  CODE
  IF ~Fromdate
    FromDate = gxAdvanceDate(Today(),asLoginHistoryDays:Value,TRUE)
  END
  IF gxMonitorStart('Purging old login records')
    trPrepare('asPurgeLogins')
    trInclude(asl::Id)
    trBegin()
    IF NOT trAborted()
      asl:Date = FromDate - 1
      Clear(asl:Time,1)
      zfSet(asl::Id,aslDateTimeKey,,asFileOptions,zf:NoFixedField)
      LOOP
        IF zfPrevious(asl::Id,asFileOptions) = 0     THEN BREAK.
        IF gxMonitorStep(Format(asl:Date,@d5b) & ' ' & Format(asl:Time,@t4b)) THEN BREAK.
        IF zfDelete(asl::Id,asl:RecNo,asFileOptions) THEN BREAK.
      END
    END
    Err# = trEnd()
    gxMonitorStop()
  END
  RETURN Err#

!}}}
!{{{  asLogDeferred          Log a deferred event

!{{{  history

! 20/01/14 DCN Created by copying and tweaking asLogEvent

!}}}
!{{{  description

!Log a deferred event in the ASL.
!This is a variant of asLogEvent.
!In this variant the caller must provide all the attributes
!(date,time,station) as well as the event itself.

!asLogDeferred(STRING,SHORT=0,LONG=0,LONG=0,<STRING>,LONG=0),LONG,PROC
!              !      !       !      !       !       !       !ErrorCode
!              !      !       !      !       !       !User to log on behalf of, 0=logged in user
!              !      !       !      !       !station, ommitted=use this station
!              !      !       !      !time, 0=use now
!              !      !       !date, 0=use today
!              !      !event type, see 'as\as_const.equ'@event types@
!              !message

!}}}

asLogDeferred PROCEDURE(EventMsg,LogType,LogDate,LogTime,LogStation,LogUser)
                                                         !
LogStationP   EQUATE(5) !<-------------------------------+

  CODE

  IF ~LogType THEN LogType = asUnknownEvent.
  IF ~LogDate THEN LogDate = Today().
  IF ~LogTime THEN LogTime = Clock().
  IF ~LogUser THEN LogUser = asGetUser().

  trPrepare('asLogDeferred')
  trInclude(asl::Id)
  trBegin()
  LOOP WHILE NOT trAborted()
    asl:Date = LogDate
    asl:Time = LogTime
    asl:User = LogUser
    IF Omitted(LogStationP) OR ~LogStation
      asl:Station = trStation
    ELSE
      asl:Station = LogStation
    END
    asl:Site  = trSite
    asl:Event = EventMsg
    asl:Type  = LogType
    IF zfAdd(asl::Id,0,asFileOptions) THEN BREAK.  !Add record to the log
    BREAK
  END
  RETURN trEnd()

!}}}

!ASW
!{{{  asLogClock             Log the session clock

!{{{  history
OMIT('ENDOMIT')

Date____  Who_____  What__________________________________________________
26/10/95  DCN       Created
21/1/96   DCN       Use primitive zfPutThis instead of zfPut to by-pass TRE
                    event generation
6/10/97   DCN       Lock the system around the ASL update
 7/10/97  DCN       Do a trWait before lock the system
 13/11/97 DCN       Remove serialisation (trLock/UnLockSystem and trWait)
 18/11/97 DCN       Re-instate trWait() call
 9/12/97  DCN       remove it again
 18/12/97 DCN       Repeat the operation if it took too long
 31/3/98  DCN       Do in a transaction to stop weird TPS driver phenomena
 7/4/98   DCN       Squeak if can't write an accurate clock
 4/3/99   DCN       Don't do a naked transaction (so its serialised across whole system)
 12/3/99  DCN       Re-instate naked transaction
 29/5/99  DCN       Do time-out check outside the TR
 5/6/99   DCN       Remove replicated code!!
 6/6/99   DCN       Be silent about transaction errors
                    Re-try if get IsLockedErr
 24/03/00 DCN       trBegin API change
 26/03/00 DCN       Transmogrify from asRelogEvent (ASL based) to asLogClock (ASW based)
 27/03/00 DCN       Add Op param
 01/04/00 DCN       Set the asw:Sequence
 02/04/00 DCN       Use native Previous not zfPrevious
                    Re-use seq# if its not changing
 11/11/00 DCN       Don't write the ASW if the TR has been aborted
 08/10/03 DCN       Look for asSuspendedTask if don't find asSessionTask
 09/08/04 DCN       Don't allow the SFDC station to become the clock master [4356]
 19/02/06 DCN       [11254] Be lazy about logging the clock
 17/03/10 DCN       Use asw:Site not asw:WriteSite
 19/03/10 DCN       Ignore ASW records with no station (they are 'pre-login' records)
                    Use ZF functions not Clarion primitives
                    Use zfPut not zfPutThis
 04/05/10 DCN       Don't get memos
 04/05/11 DCN       Don't allow it to stall, return an error code
 05/05/11 DCN       Be silent about errors
 27/11/13 DCN       Add Task param
                    Get the zfPrevious condition the right way round!!
 24/05/20 DCN       Apply asFileOptions to zfSet too
Date____  Who_____  What__________________________________________________

!ENDOMIT
!}}}
!{{{  description

!This function will log the current session clock in the log-in ASW record.

!asLogClock(BYTE=0,<STRING>),LONG,PROC
!           !       !        !ErrorCode
!           !       !iff present and not blank, log against this task, else a session or suspended task
!           !iff TRUE write the log even if a similar clock is already logged

!}}}

asLogClock FUNCTION(Forced,Task)
                           !
TaskP      EQUATE(2) !<----+

  CODE

  IF NOT Forced THEN DO CheckClock.            !See if another station has done it

  Err# = trPrepare('asLogClock',trNoWait)      !not prepared to wait
  IF Err# THEN RETURN Err#.

  trInclude(asw::id)
  Err# = trBegin(trLogoutNow+trNoWait)         !not prepared to wait
  IF Err# THEN RETURN trEnd(TRUE).             !be silent about errors

  DO LogClock

  RETURN trEnd(TRUE)                           !be silent about errors


!{{{  CheckClock ROUTINE

!see if a similar one is already there

CheckClock ROUTINE
  DATA
LastClockDate  LONG,AUTO
LastClockTime  LONG,AUTO
  CODE

  IF asLastClock(LastClockDate,LastClockTime)
    !Got a clock to check
    IF NOT gxOlder(LastClockDate,LastClockTime+zxLogClockInterval:Value,|
                   Today(),Clock()                                      )
      !Another station has already done it, so don't bother here
      RETURN 0
    END
  END

!}}}
!{{{  LogClock ROUTINE

!We increment the sequence number for each clock update so that
!the last one written always becomes the reference irrespective
!of the actual date/time written.

LogClock ROUTINE
  DATA
LastSeq  LIKE(asw:Sequence)
  CODE

  !{{{  phase 1 - find the last sequence
  
  asw:Site = trSite
  Clear(asw:Sequence,1)
  zfSet(asw::Id,aswSiteSequenceKey,1,asFileOptions,aswSite)
  IF zfPrevious(asw::Id,asFileOptions)
    LastSeq = asw:Sequence
  ELSE
    LastSeq = 0
  END
  
  !}}}
  !{{{  phase 2 - find the ASW record
  
  IF ~Omitted(TaskP) AND Task
  
    !Being told what task to look for
  
    asw:Site    = trSite
    asw:Station = trStation
    asw:User    = asGetUser()
    asw:Task    = Task
    Err# = zfGet(asw::Id,aswSiteStationUserTaskKey,asFileOptions)
    IF Err# THEN EXIT.
  
  ELSE
  
    !Try for a session record first
  
    asw:Site    = trSite
    asw:Station = trStation
    asw:User    = asGetUser()
    asw:Task    = asSessionTask
    Err# = zfGet(asw::Id,aswSiteStationUserTaskKey,asFileOptions)
    IF Err#
  
      !Try for a suspended record next
  
      asw:Site    = trSite
      asw:Station = trStation
      asw:User    = asGetUser()
      asw:Task    = asSuspendedTask
      Err# = zfGet(asw::Id,aswSiteStationUserTaskKey,asFileOptions)
      IF Err# THEN EXIT.
  
    END
  
  END
  
  !}}}

  asw:SessionDate  = Today()
  asw:SessionTime  = Clock()
  IF LastSeq AND LastSeq = asw:Sequence
    !leave as is                         !we're already the reference
  ELSIF asIsSFDC(asw:User)
    asw:Sequence   = 1                   !SFDC is a clock reference only as a last resort
  ELSIF LastSeq
    asw:Sequence   = LastSeq + 1         !make us the reference
  ELSE
    asw:Sequence   = 2                   !Get over SFDC stations
  END
  Err# = zfPut(asw::Id,asw:RecNo,asFileOptions)

!}}}

!}}}
!{{{  asIsTaskRunning        See if given task is running

!{{{  history

! 08/04/01 DCN Created
! 17/03/10 DCN Use asw:Site not asw:WriteSite
! 19/03/10 DCN Ignore ASW records with no station
! 04/05/10 DCN Don't get memos
! 24/05/20 DCN Apply asFileOptions to zfSet too

!}}}
!{{{  description

!Determine if the given task is running.
!Returns null if not running, or the launching station name if is.
!If the task is running on more than one station, an arbitrary one
!is returned.

!asIsTaskRunning(STRING),STRING
!                !       !Station name where running, or '' if not running
!                !Task name to look for

!}}}

asIsTaskRunning FUNCTION(Task)

Station         LIKE(asw:Station)

  CODE

  IF zfOpen(asw::Id) THEN RETURN ''.

  asw:Site    = trSite
  asw:Task    = Task
  asw:Station = ''
  asw:User    = 0
  zfSet(asw::Id,aswSiteTaskStationUserKey,,asFileOptions,aswTask)
  LOOP
    IF zfNext(asw::Id,asFileOptions) = 0 THEN BREAK.
    IF ~asw:Station                      THEN CYCLE.
    Station = asw:Station
    BREAK
  END

  zfClose(asw::Id)

  RETURN Clip(Station)

!}}}
!{{{  asLastClock            Get last clock event date/time

!{{{  history
OMIT('ENDOMIT')

Date____  Who_____  What__________________________________________________
26/10/95  DCN       Created
9/8/96    DCN       Don't use keywords for param names (CW2 doesn't tolerate it)
 9/11/97  DCN       Ignore other sites and ignore self station
 13/11/97 DCN       Ignore case when checking station name
 15/1/98  DCN       Use the last station to log in as the reference, not just the
                    newest date/time from any station
                    Get the last station to login from the ASW
 20/1/98  DCN       Don't use a clock if its older than the associated login
                    Allow for a blank station name
 18/2/98  DCN       Add option to IgnoreSelf station
 22/3/99  DCN       Return an ASW RecNo not an error code
 5/6/99   DCN       Fix erroroneous error code return
 26/03/00 DCN       Get clock from the ASW not the ASL
 01/04/00 DCN       Use asw:Sequence to find the clock not the latest date/time
 02/04/00 DCN       Ignore records with an asw:Sequence of 0
 20/07/03 DCN       Default is to ignore self
 11/02/05 DCN       Don't use the clock when sequence goes backwards (==a log-off)
 17/03/10 DCN       Use asw:Site not asw:WriteSite
 19/03/10 DCN       Ignore ASW records with no station
                    Use ZF functions not Clarion primitives
 04/05/10 DCN       Don't get memos
 13/04/11 DCN       Allow for duplicate sequences
 14/05/15 DCN       Ignore non-session records
 24/05/20 DCN       Apply asFileOptions to zfSet too
Date____  Who_____  What__________________________________________________

!ENDOMIT
!}}}
!{{{  description

!This function returns the date and time of the last clock event logged
!from this site. If there is no last clock (ie. this is the first run of
!the system or no one else is logged in) then the date/time returned will
!be zero. All stations are considered on this site, including 'self' unless
!the ignore self option is asserted.

!asLastClock(*LONG,*LONG,BYTE=1),LONG
!             !     !    !       !RecNo - (ASW) the user login providing the clock or 0
!             !     !    !iff TRUE, ignore self station
!             !     !Time of the last clock event
!             !Date of the last clock event

!}}}

asLastClock FUNCTION(DateIn,TimeIn,IgnoreSelf)

ClockRef    LIKE(asw:RecNo)
LastRefSeen LIKE(asw:RecNo),STATIC
LastSeqSeen LIKE(asw:Sequence),STATIC

  CODE

  DateIn   = 0
  TimeIn   = 0
  ClockRef = 0

  IF zfOpen(asw::Id) THEN RETURN 0.

  asw:Site = trSite
  Clear(asw:Sequence,1)
  zfSet(asw::Id,aswSiteSequenceKey,,asFileOptions,aswSite)
  LOOP
    IF zfPrevious(asw::Id,asFileOptions) = 0 THEN BREAK.
    IF asw:Sequence = 0                      THEN BREAK.
    IF ~asw:Station                          THEN CYCLE.   !ignore 'pre-login' records
    IF ~asw:SessionUUID                      THEN CYCLE.   !ignore non-session records

    IF IgnoreSelf AND Upper(asw:Station) = Upper(trStation) THEN CYCLE.  !ignore self

    !Check we've got a valid sequence
    IF (LastSeqSeen AND asw:Sequence <  LastSeqSeen) |
    OR (LastRefSeen AND asw:RecNo    <> LastRefSeen) THEN
      !The sequence has gone backwards, this means the clock master has just logged off.
      !In this context we don't want to use the previous reference as it may be too old.
      LastSeqSeen = asw:Sequence               !note the sequence of the last clock we got
      LastRefSeen = asw:RecNo                  !..and its ref
      BREAK                                    !report no clock
    END
    LastSeqSeen = asw:Sequence                 !note the sequence of the last clock we got
    LastRefSeen = asw:RecNo                    !..and its ref

    DateIn   = asw:SessionDate
    TimeIn   = asw:SessionTime
    ClockRef = asw:RecNo                       !report the clock
    BREAK
  END

  zfClose(asw::Id)

  RETURN ClockRef

!}}}
!{{{  asSoleLogin            See if we're the only login

!{{{  history
OMIT('ENDOMIT')

Date____  Who_____  What__________________________________________________
 3/07/95  DCN       Created
 3/07/95  DCN       Modified
29/7/95   DCN       Assume we're the only one if the frame is not running
28/10/95  DCN       Add optional 'force' parameter
2/11/95   DCN       Assume any ASW record for this station is 'self' and ignore it
4/10/97   DCN       Add CheckForLogout option
 6/10/99  DCN       Check a user is logged in too
 15/10/99 DCN       Return FALSE is no user is logged in and where looking for log-out
                    requests (i.e. say we're not being asked to be logged out)
 26/03/00 DCN       Re-populate asw:SessionDate/Time too
 05/02/01 DCN       Only say we're a sole login if get no errors (except the expected one)
                    from Next(asw)
 05/02/03 DCN       Remove Forced option, add IncludeSFDC option
 08/10/03 DCN       Allow for suspended sessions
 11/07/06 DCN       Remove check for logout option (now done via asLogoutRequest)
                    Check user as well as station
 19/09/07 DCN       Don't consider self station as self
                    (as can have multi-logins on same station under TS)
 17/03/10 DCN       Use asw:Site not asw:WriteSite
 19/03/10 DCN       Use ZF functions not Clarion primitives
 04/05/10 DCN       Don't get memos
 30/03/11 DCN       Ignore ASW records with no station
 28/07/14 DCN       Use aswSessionUUIDKey not aswRecNoKey
 11/05/15 DCN       Ignore stale sessions
 24/05/20 DCN       Apply asFileOptions to zfSet too
Date____  Who_____  What__________________________________________________

!ENDOMIT
!}}}
!{{{  description

!This function determines if there is anybody else logged into the
!system at the moment. It returns TRUE iff there are no other logins active.
!When asking for the sole login status, the function is intended to be used
!when it is required that the user has sole access to the system (eg. when
!moving files).

!asSoleLogin(BYTE=0),BYTE
!            !       !TRUE if nobody else is logged in
!            !if TRUE check for SFDC users too, else they don't count

!NB: In this context even 'pre-login' ASW records are considered (those with no station).

!}}}

asSoleLogin FUNCTION(IncludeSFDC)
  CODE

  !We do this by looking in the ASW file.
  !For a sole login: The only record in there should be ourselves or nothing.
  !                  We return TRUE iff the ASW only contains ourselves or is empty.

  IF zfOpen(asw::Id) THEN RETURN FALSE.                !What else?

  !NB: The aswSessionUUIDKey uses OPT so it won't see blank UUID records - that's OK
  Clear(asw:SessionUUID)
  zfSet(asw::Id,aswSessionUUIDKey,,asFileOptions,zf:NoFixedField)
  LOOP
    IF zfNext(asw::Id,asFileOptions) = 0 THEN BREAK.   !Nobody else here
    IF asw:Site <> trSite                THEN CYCLE.   !Ignore other sites
    IF ~asw:Station                      THEN CYCLE.   !Ignore 'pre-login' records (highly probable its a crashed session)
    CASE asw:Task
    OF asSessionTask OROF asSuspendedtask
      IF asIsStaleSession()              THEN CYCLE.   !Ignore stale sessions
      ;                                                !Process these
    ELSE
      CYCLE                                            !Ignore non-session tasks
    END
    !19/09/07 DCN Don't do this (valid under TS)-->IF asw:Station = trStation             THEN CYCLE. !Ignore self
    IF asw:User    = asGetUser()           THEN CYCLE. !Ignore self
    IF ~IncludeSFDC AND asIsSFDC(asw:User) THEN CYCLE. !Ignore SFDC stations

    !There's another
    zfClose(asw::Id)
    RETURN FALSE                                       !We're not alone
  END

  zfClose(asw::Id)

  RETURN TRUE                                          !We're alone

!}}}
!{{{  asLogoutRequested      See if being asked to logout

!{{{  history

! 11/07/06 DCN Created by extraction from asSoleLogin
! 15/08/08 DCN Fix 'not there' detection when there are other records present
! 17/03/10 DCN Use asw:Site not asw:WriteSite
! 19/03/10 DCN Use ZF functions not Clarion primitives
!              Don't add a new ASW - resurrect the existing one
! 24/03/10 DCN Ignore while user logins are changing
! 04/05/10 DCN Don't get memos
! 14/05/10 DCN Use fixed key scanning, not DIY
! 26/08/10 DCN Use zfGet on the session record, not a zfNext scan
! 04/05/11 DCN Add a new record if our session record is missing
!              (this can happen if another station erroroneously thinks we're dead)
! 22/08/13 DCN Fix logic!!

!}}}
!{{{  description

!This function determines if a request to logout is being made.
!It returns TRUE iff a logout request is being made.

!asLogoutRequested(),BYTE
!                    !TRUE if being asked to logout

!}}}

asLogoutRequested FUNCTION
  CODE

  IF ~asGetUser() OR asUserChanging
    !say we're not being asked to log-out if no user logged in
    !or the login is in the process of changing
    RETURN FALSE

  ELSE
    !{{{  see if we're being asked to log off
    
    !We do this by looking in the ASW file at our master session record.
    !If that has become anonymous it means a user has asked us to log out.
    
    IF zfOpen(asw::Id) THEN RETURN FALSE.              !What else?
    
    asw:SessionUUID = asSessionUUID
    Err# = zfGet(asw::Id,aswSessionUUIDKey,asFileOptions)
    CASE Err#
    OF NoRecErr OROF BadRecErr OROF gxEndOfKeyErr OROF gxEndOfFileErr
      !Our session record has gone AWOL, this probbaly means some other station
      !thinks we're dead and has flushed it, so put it back
      !{{{  re-create the session record
      
      trPrepare('Re-create session')
      trInclude(asl::Id)
      trInclude(asw::Id)
      trBegin()
      
      asw:Sequence    = 0                    !this means its not a clock reference
      asw:User        = asGetUser()
      asw:Site        = trSite
      asw:Station     = trStation            !resurrect ourselves
      asw:Task        = asSessionTask
      asw:LoginDate   = Today()
      asw:LoginTime   = Clock()
      asw:SessionUUID = asSessionUUID
      asw:SessionDate = 0
      asw:SessionTime = 0
      
      IF zfAdd(asw::Id,0,asFileOptions) = 0
        asLogEvent('Re-create missing session record')
      END
      
      IF trEnd()
        !Oops
        zfClose(asw::Id)
        RETURN FALSE
      END
      
      !}}}
    
    OF NoError
      !OK
    
    ELSE
      !Can't read the master record, this probably means the network has gone AWOL
      zfClose(asw::Id)
      RETURN FALSE                                     !what else?
    
    END
    
    IF asw:Site = 0 AND asw:Station = ''
      !We've been zapped
      !{{{  put ourselves back
      
      !Put the ASW back so that whoever is trying to log us off can
      !see that it was denied.
      
      !When the log-out was requested the master session record for us was
      !made anonomous (by clearing the site/station). We resurrect it by
      !putting them back.
      
      trPrepare('Re-instate session')
      trInclude(asw::Id)
      trBegin()
      
      asw:SessionUUID = asSessionUUID
      Err# = zfGet(asw::Id,aswSessionUUIDKey,asFileOptions)
      IF Err#
        !Eh? Where'd it go - we're in trouble now
        gxDisplayError(asw::Id,'asLogoutRequested: Cannot read our master session record',Err#)
      ELSE
        asw:Site        = trSite
        asw:Station     = trStation                  !resurrect ourselves
        asw:SessionDate = Today()                    !this would've stopped while anonomous, so do it now
        asw:SessionTime = Clock()
        IF zfPut(asw::Id,asw:RecNo,asFileOptions).   !resurrect ourselves
      END
      
      trEnd()
      
      !}}}
      zfClose(asw::Id)
      RETURN TRUE                                      !tell caller we've been zapped
    
    ELSE
      !We're still here
      zfClose(asw::Id)
      RETURN FALSE
    
    END
    
    !}}}

  END

!}}}
!{{{  asLoggedInUsers        Get number of users currently logged in

!{{{  history

! 2/3/98   DCN Created by copying and tweaking asSoleLogin
! 19/05/00 DCN Add ThisUser param
!              Remove this site only guard (its a licence abuse back-door)
!              Ignore the agent when counting non-specific users
! 17/10/01 DCN Add option to provide station of another user
! 03/05/02 DCN Ignore SFDC when counting non-specific users
! 08/10/03 DCN Allow for suspended tasks (don't count as log-ins)
! 04/12/07 DCN Don't count read-only users
! 05/12/07 DCN Add only count readers option
! 23/06/08 DCN Use zbGetMaxUsers() not DIY
! 19/03/10 DCN Use ZF functions not Clarion primitives
!              Ignore pre-login records (where no station set)
! 26/03/10 DCN Don't count brokers
! 04/05/10 DCN Don't get memos
! 04/11/10 DCN Allow for upgrader users too
! 24/10/13 DCN Use asIsNormalUser not DIY
! 28/07/14 DCN Use aswSessionUUIDKey not aswRecNoKey
! 11/05/15 DCN Ignore stale sessions
! 24/05/20 DCN Apply asFileOptions to zfSet too

!}}}
!{{{  description

! This function determines how many people are currently logged-in.
! It does this by counting session records in the ASW.

!asLoggedInUsers(LONG=0,<*STRING>,BYTE=0),SHORT
!                !        !       !       !Number of users currently logged in
!                !        !       !iff TRUE count read-only users, else count full users
!                !        !       !(ignored if a user is given)
!                !        !iff present, put the station name of last login here
!                !        !(only useful when none are expected)
!                !RecNo - (ASU) iff present, only count number of logins of this user

!NB: A quikSOFT login is ignored here. Any number of those can be logged in and
!    their presence does not compromise the customer's licence.

!}}}

asLoggedInUsers FUNCTION(ThisUser,TheirStation,ReadOnly)
                                  !
TheirStationP   EQUATE(2) !<------+

Users           SHORT,AUTO
User            LIKE(asu:User),AUTO

  CODE

  IF NOT Omitted(TheirStationP) THEN TheirStation = ''.

  IF zfOpen(asw::Id) THEN RETURN zbGetMaxUsers()+1.    !What else?
  Users = 0
  Clear(asw:SessionUUID)
  zfSet(asw::Id,aswSessionUUIDKey,zfSet:FetchAll,asFileOptions,zf:NoFixedField)
  LOOP
    IF zfNext(asw::Id,asFileOptions) = 0 THEN BREAK.   !done searching
    IF ~asw:Station                      THEN CYCLE.   !ignore pre-login records
    IF asIsStaleSession()                THEN CYCLE.   !stale sessions don't count
    CASE asw:Task
    OF asSessionTask
      asNameUser(asw:User,User)
      IF asIsQuickSoft(,User)            THEN CYCLE.   !ignore qS logins
      !The rest always count as log-ins
    OF asSuspendedTask
      IF ~ThisUser THEN CYCLE.                         !Ignore suspended if not being specific
    ELSE
      CYCLE                                            !Ignore non-session tasks
    END
    IF ~ThisUser AND ReadOnly AND asIsReader(asw:User)
      Users += 1
      IF NOT Omitted(TheirStationP) THEN TheirStation = asw:Station.
    ELSIF ~ThisUser AND ~ReadOnly AND asIsNormalUser(asw:User) AND ~asIsReader(asw:User)
      Users += 1
      IF NOT Omitted(TheirStationP) THEN TheirStation = asw:Station.
    ELSIF ThisUser = asw:User                          !NB: Benign to ThisUser being 0 'cos asw:User cannot be
      Users += 1
      IF NOT Omitted(TheirStationP) THEN TheirStation = asw:Station.
    END
  END
  zfClose(asw::Id)

  RETURN Users

!}}}
!{{{  asIsStaleSession       Check if current ASW is 'stale'

!{{{  history

!11/05/15 DCN Created by extraction from asFlushClock
!27/09/17 DCN [55457]Use zxMaxHeartBeat not zxHeartBeat

!}}}
!{{{  description

!Check if the currently loaded ASW record represents a 'stale' session.
!A stale session is one that is more than the heartbeat old.

!asIsStaleSession(),BYTE
!                   !TRUE iff the ASW is 'stale'

!}}}

asIsStaleSession FUNCTION

SessionDate      LIKE(asw:SessionDate),AUTO
SessionTime      LIKE(asw:SessionTime),AUTO

CheckDate        LIKE(asw:SessionDate),AUTO
CheckTime        LIKE(asw:SessionTime),AUTO

  CODE

  IF ~zxMaxHeartBeat:Value           THEN RETURN FALSE.  !can't tell if got no heartbeat
  IF asw:Site <> trSite              THEN RETURN FALSE.  !not our site
  IF asw:SessionUUID = asSessionUUID THEN RETURN FALSE.  !self is never stale

  !{{{  set the session reference to a heart-beat ago
  
  !Set the session reference to one heart-beat ago plus a bit.
  !We're assuming the current station clock has been validated.
  
  SessionDate  = Today()
  SessionTime  = Clock() - (zxMaxHeartBeat:Value * 100)
  
  SessionTime -= zxMaxClockSkew:Value      !slop to allow for update delays
  
  IF SessionTime < gxStartOfDay
    SessionDate -= 1
    SessionTime += gxOneDay
  END
  
  !}}}

  IF asw:SessionDate = 0
    !No session clock, use the login date/time instead
    CheckDate = asw:LoginDate
    CheckTime = asw:LoginTime
  ELSE
    CheckDate = asw:SessionDate
    CheckTime = asw:SessionTime
  END

  IF gxOlder(SessionDate,SessionTime,CheckDate,CheckTime) THEN RETURN FALSE.

  !its stale
  RETURN TRUE

!}}}

!ASL and ASW
!{{{  asLogEvent             Log an access event

!{{{  history
OMIT('ENDOMIT')

Date____  Who_____  What__________________________________________________
 4/10/94  DCN       Created
 1/07/95  DCN       Add event type parameter
 1/07/95  DCN       Modified
26/10/95  DCN       Added optional LogRecNo param
  2/2/96  DCN       Clear optional param up front in case of error exit
 19/9/97  DCN       Add task handling option
 26/03/00 DCN       Populate asw:SessionDate/Time
 27/03/00 DCN       Use native delete on ASW
 01/04/00 DCN       Don't populate asw:SessionDate/Time
 11/11/00 DCN       Detect errors after trBegin
                    Don't open ASW if not adding/deleting a task record
 17/03/10 DCN       Use asl/asw:Site not asl/asw:WriteSite
 19/03/10 DCN       Use ZF functions not Clarion primitives
 22/03/10 DCN       Add User param
 26/01/15 DCN       Populate asl:Context
 24/05/20 DCN       Apply asFileOptions to zfSet too
 24/10/20 DCN       Remove LogRecNo param (not used), return error code
Date____  Who_____  What__________________________________________________

!ENDOMIT
!}}}
!{{{  description

!log an event in ASL and optionally add a task record to the ASW

!asLogEvent(STRING,<SHORT>,<STRING>,BYTE=0,LONG=0),LONG,PROC
!           !       !       !       !      !       !ErrorCode or 0 if OK
!           !       !       !       !      !User to log on behalf of, 0=logged in user
!           !       !       !       !Only valid if a task is specified
!           !       !       !       !FALSE = add a task record to the ASW
!           !       !       !       !TRUE = delete the task record in the ASW
!           !       !       !if present, the task to set/delete in the ASW
!           !       !event type, if omitted 'unknown' is set
!           !       !see 'as\as_const.equ'@event types@
!           !message

!}}}

asLogEvent FUNCTION(EventMsg,EventType,TaskName,DeleteTask,UserRecNo)
                             !         !
EventTypeP EQUATE(2) !<------+         !
TaskNameP  EQUATE(3) !<----------------+

  CODE

  IF ~UserRecNo THEN UserRecNo = asGetUser().

  trPrepare('asLogEvent')
  trInclude(asl::Id)
  IF ~Omitted(TaskNameP) THEN trInclude(asw::Id).
  trBegin()
  LOOP WHILE NOT trAborted()
    asl:Date    = Today()
    asl:Time    = Clock()
    asl:User    = UserRecNo
    asl:Station = trStation
    asl:Site    = trSite
    asl:Event   = EventMsg
    IF Omitted(EventTypeP)
      asl:Type  = asUnknownEvent
    ELSE
      asl:Type  = EventType
    END
    !{{{  set the context
    !Add some context info depending on the event
    CASE asl:Type
    OF asLoginEvent
      asl:Context = Command()
    OF asLogoutEvent
      asl:Context = zxIniFileName
    ELSE
      asl:Context = ''
    END
    !}}}
    IF zfAdd(asl::Id,0,asFileOptions) THEN BREAK.  !Add record to the log
    IF ~Omitted(TaskNameP)
      IF DeleteTask
        !{{{  delete existing task record (if its there)
        
        asw:Site    = trSite
        asw:Station = trStation
        asw:User    = UserRecNo
        asw:Task    = TaskName
        
        zfSet(asw::Id,aswSiteStationUserTaskKey,,asFileOptions,aswTask)
        LOOP WHILE NOT trAborted()
          IF zfNext(asw::Id,asFileOptions) = 0         THEN BREAK.
          IF zfDelete(asw::Id,asw:RecNo,asFileOptions) THEN BREAK.
        END
        
        !}}}
      ELSE
        !{{{  add a new task record
        
        zfClearRecord(asw::Id)
        
        asw:User      = UserRecNo
        asw:Site      = trSite
        asw:Station   = trStation
        asw:Task      = TaskName
        asw:LoginDate = Today()
        asw:LoginTime = Clock()
        
        !NB: asw:Sequence and SessionDate/Time is left at 0,
        !    'cos a task record does not qualify as a clock reference.
        IF zfAdd(asw::Id,0,asFileOptions) THEN BREAK.
        
        !}}}
      END
    END
    BREAK
  END
  RETURN trEnd()

!}}}
!{{{  asFlushClock           Flush stale events (function is misnamed)

!{{{  history

! 22/3/99  DCN Created
! 26/03/00 DCN Flush all earlier clock ASWs too
! 27/03/00 DCN Use native delete on ASW
! 11/11/00 DCN Don't do anything in the file if the TR is aborted
! 15/11/00 DCN Add option to flush those with a 'stale' heartbeat
! 16/11/00 DCN Allow for no session clock in pass 2 (i.e. = 0)
! 08/10/03 DCN Allow for asSuspendedTask records
! 07/11/08 DCN Don't show user suffix when logging events
!              Remove specific ASW option
!              Check slower than the interval by N%
! 22/01/10 DCN Make finding first record more robust
! 17/03/10 DCN Use asw:Site not asw:WriteSite
! 19/03/10 DCN Use ZF functions not Clarion primitives
! 04/05/10 DCN Don't get memos
!              Find then delete records in 2 passes (so don't start an unnecessary TR)
! 05/05/10 DCN Clear locks too
! 16/11/10 DCN Allow for flushing a dangling user that has session defaults lying about
! 05/05/11 DCN Don't allow it to stall and be silent about errors
! 21/01/14 DCN Note it in the crash log too
! 28/07/14 DCN Use aswSessionUUIDKey not aswRecNoKey
! 15/01/15 DCN Only log it if there was a station set (else its just a dangling logout)
! 11/05/15 DCN Use asIsStaleSession not DIY
!              Use aswSiteSequenceKey not aswSessionUUIDKey ('cos that misses blank UUIDs)
! 09/12/15 DCN Add Noisy param
! 26/07/17 DCN [55061]Add station to the log message
! 27/09/17 DCN [55457]Use zxMaxHeartBeat not zxHeartBeat
! 24/05/20 DCN Apply asFileOptions to zfSet too

!}}}
!{{{  description

!This function flushes stale clock events. Its used when the system starts
!up and detects a clock event that is 'stalled'. This means the associated
!station has crashed. This function flushes the login records associated
!with that station and any others showing an earlier date/time.

!asFlushClock(BYTE=0),LONG,PROC
!             !       !ErrorCode
!             !iff TRUE be noisy about errors

!NB: In this context even 'pre-login' records are considered.

!}}}

asFlushClock FUNCTION(Noisy)

FlushQ       QUEUE(gxRecNoQType);END
Silent       LONG,AUTO

  CODE

  IF ~zxMaxHeartBeat:Value THEN RETURN 0.

  !{{{  find flush candidates
  
  Free(FlushQ)
  
  Err# = zfOpen(asw::Id); IF Err# THEN RETURN Err#.

  asw:Site     = 0
  asw:Sequence = 0
  zfSet(asw::Id,aswSiteSequenceKey,zfSet:FetchAll,asFileOptions,zf:NoFixedField)
  LOOP
    IF zfNext(asw::Id,asFileOptions) = 0 THEN BREAK.
    IF ~asIsStaleSession()               THEN CYCLE.
  
    !Found one
    FlushQ:RecNo = asw:RecNo   !to be deleted
    Add(FlushQ)                !ignore errors
  
  END
  
  zfClose(asw::Id)
  
  !}}}

  IF ~Records(FlushQ) THEN RETURN 0.

  IF Noisy THEN Silent = FALSE ELSE Silent = TRUE.

  !delete dangling records we found
  Err# = trPrepare('asw:DelUser',trNoWait)                     !not prepared to wait
  IF Err# THEN RETURN Err#.

  trInclude(asw::Id)
  trInclude(asl::Id)
  trInclude(vdi::Id)                                           !in case there are session defaults lying about
  trPrepareLocks()
  IF trBegin(trLogoutNow+trNoWait) THEN RETURN trEnd(Silent).  !not prepared to wait and be silent on error

  LOOP WHILE Records(FlushQ)
    Get(FlushQ,1)
    Delete(FlushQ)
    IF zfLoad(asw::Id,FlushQ:RecNo,asFileOptions) THEN BREAK.
    IF zfDelete(asw::Id,asw:RecNo,asFileOptions)  THEN BREAK.
    trClearLocks(TRUE,asw:Station,asw:User)
    IF ~trAborted() AND (asw:Task = asSessionTask OR asw:Task = asSuspendedTask) AND asw:Station
      !{{{  log it
      
      !Add it to the crash log
      IF asw:SessionDate = 0
        !No session clock, use the login date/time instead
        zfRecoverCrash(asw:LoginDate,asw:LoginTime,asw:Station,'Flushed')
      ELSE
        zfRecoverCrash(asw:SessionDate,asw:SessionTime,asw:Station,'Flushed')
      END
      
      asLogEvent(zvInfixFormat(zvUserNo,asw:User) & ' user on ' & Clip(asw:Station) & ' flushed',asCrashedEvent)
      
      !}}}
    END
  END

  RETURN trEnd(Silent)

!}}}
!{{{  asRequestLogout        ask the current or all users to log out

!{{{  history

! 16/2/98  DCN Created
! 27/3/98  DCN If frame is running, post the shut-down now
! 27/03/00 DCN Use native delete on the ASW
! 11/11/00 DCN Don't do anything if the TR is aborted
! 18/09/07 DCN Add 'all except self' option
! 16/10/09 DCN Use zxRequestShutDown not DIY
! 17/03/10 DCN Use asw:Site not asw:WriteSite
! 19/03/10 DCN Use ZF functions not Clarion primitives
!              Don't delete master session records, just make them anonomous
! 04/05/10 DCN Don't get memos
! 24/05/20 DCN Apply asFileOptions to zfSet too

!}}}
!{{{  description

!Mode 1:
!  This function causes the logged-in user to be asked to log off.
!  If they do not prevent it in time, they'll be logged off.
!  If they do, they'll stay.
!Mode 2:
!  Requests everybody *except* self to be logged-off

!asRequestLogout(BYTE=0)
!                !iff TRUE log-off all except self,
!                !iff FALSE log-off just self

!}}}

asRequestLogout PROCEDURE(AllExceptSelf)
  CODE
  trPrepare('asRequestLogout')
  trInclude(asw::Id)
  trInclude(asl::Id)
  trBegin()
  asw:Site = trSite
  asw:Task = ''
  IF AllExceptSelf
    asw:Station = ''
    asw:User    = 0
    zfSet(asw::Id,aswSiteStationUserTaskKey,,asFileOptions,aswSite)
  ELSE
    asw:Station = trStation
    asw:User    = asGetUser()
    zfSet(asw::Id,aswSiteStationUserTaskKey,,asFileOptions,aswUser)
  END
  LOOP WHILE NOT trAborted()
    IF zfNext(asw::Id,asFileOptions) = 0        THEN BREAK.
    IF AllExceptSelf AND asw:User = asGetUser() THEN CYCLE.
    IF asw:SessionUUID
      !Make master session record anonomous
      asw:Site    = 0
      asw:Station = ''
      IF zfPut(asw::Id,asw:RecNo,asFileOptions) THEN BREAK.
    ELSE
      !Delete other records
      IF zfDelete(asw::Id,asw:RecNo,asFileOptions) THEN BREAK.
    END
    GotOne# = TRUE
  END
  IF NOT trAborted() AND GotOne#
    IF AllExceptSelf
      asLogEvent('System requested all logout',asDeleteEvent)
    ELSE
      asLogEvent('System requested self logout',asDeleteEvent)
    END
  END
  trEnd()

  IF ~AllExceptSelf AND zxFrameRunning
    zxRequestShutDown('The system requested you log-out')
  END

!}}}

