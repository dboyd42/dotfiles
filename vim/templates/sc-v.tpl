JOB# JOBNUMBER
#############
:Date:
:Case Number:
:Start Time: DEPOSTARTTIME TIMEZONE
:Est. Duration:
:Ops Page: OPSPAGE

Personal Notes:

Moderator: audio only -- no breaks, no read-ins
Videographer: A/V
Ambassador: A/V + Exhbits

    - %s/JOBNUMBER/         xxxxxx
    - %s/OPSPAGE/           Steno Ops Page URL
    - %s/DEPOSTARTTIME/     hh:mm AM/PM
    - %s/ORDERINGFIRM/      ordering-firm
    - %s/TIMEZONE/          PT/MT/CT/ET
    - %s/WITNESS/           deponent
    - %s/TAKINGATTORNEY/    TA // Ops > Ordered On Behalf Of
    - %s/COURTREPORTER/     CR // Ops > CRName >> Preferred Name
    - %s/DEFENSEATTORNEY/   DA // Ops > NOD > Service List
    - %s/DEFENDINGFIRM/     defending_firm
    - %s/OPENVIDEOMEET/     4hr refresh mark, when you opened video conference
    - copy & paste: CPREADIN    // Gmail > Looker
    - copy & paste: CPREADOUT   // Gmail > Looker

    phoenitic pronounciations
    -------------------------
    - %s/WPHONETICS   <blank> if easy
    - %s/TAPHONETICS
    - %s/CRPHONETICS
    - %s/DAPHONETICS
    - %s/OPHONETICS

NOD REVIEW
**********

Attendees
=========

+----+----------------+-----------------+-------------+
| 在 | Slot#/Title    | Name            | Phonetics   |
+====+================+=================+=============+
|    | 1/Witness      | WITNESS         | WPHONETICS  |
+----+----------------+-----------------+-------------+
|    | 2/TA           | TAKINGATTORNEY  | TAPHONETICS |
+----+----------------+-----------------+-------------+
|    | 3/CR           | COURTREPORTER   | CRPHONETICS |
+----+----------------+-----------------+-------------+
|    | 4/DA           | DEFENSEATTORNEY | DAPHONETICS |
+----+----------------+-----------------+-------------+
|    | 5/Videographer | David Boyd      | N/A         |
+----+----------------+-----------------+-------------+

:Ordering Firm: ORDERINGFIRM

Defense Attorney(s):
====================

    DEFENDINGFIRM
    -------------
        - DEFENSEATTORNEY
        -

    DEFENDINGFIRM
    -------------
        -
        -

NOTES
=====



STENO CONNECT PLAYBOOK
**********************

[1] PRE-SC DEPO
===============

    1. Test Exhbit
    --------------

        - Have on Desktop and Prepare: drag'n drop img
        - Exhibit#TEST:
        - Loc: https://docs.google.com/spreadsheets/d/1cYNUtK0_rTMnYnBWAInA139v2GUyb4l83KzVtK-5mCU/edit#gid=1133383617&range=F6

    2. NOD Review Page (Monday, Ops)
    --------------------------------

        - fill out top portion

    3. [TIMER] 4 hour refresh
    -------------------------

        - record time from when you opened up the room
        - use your phone
        - DEV NOTES: Code in a timer

    4. Video Worksheet 3.0
    ----------------------

        - https://docs.google.com/spreadsheets/d/1cYNUtK0_rTMnYnBWAInA139v2GUyb4l83KzVtK-5mCU/edit#gid=1133383617&range=F6

[2] BEGINNING OF SC DEPO (1HR BEFORE)
=====================================

    1. Open Ops link for your job
    -----------------------------

        - Ops > Steno Connect Rooms > 'Job Link' > 'Join as Admin'

    2. Slack > Video-checkin
    ------------------------
    :Prep: Draft

        - I am on and ready to go for job JOBNUMBER
        - Steno Ops Page: OPSPAGE

    3. Recirculate invites (E-mail)
    -------------------------------

        - Use reply all in **Google Calendar**
        - Template:

Email Template
^^^^^^^^^^^^^^
:Time: 1 hour < DEPOSTARTTIME TIMEZONE
:Copy-Paste: ^v"*


Good morning,

    My name is David Boyd and I am the Videographer for today's deposition at
    DEPOSTARTTIME TIMEZONE.  I am recirculating this invitation for everyone's convenience.
    Please don't hesitate to reach out to me with any questions or if you
    experience any technical difficulties upon joining.  My number is (512)-270-3020.
    Thank you for choosing Steno and I will see you soon.

Best,

    4. Set your 'Participant Priority' to 5
    ---------------------------------------

    5. Tun on 'AUDIO LEVELS FEATURE'
    --------------------------------

        - [+] URL: &levels=yes


[3] AS PARTICIPANTS JOIN
========================
:Reorganize SC Slots: [GLOBAL] Shift-Rename (self)
:Reorganize SC Slots: [INDIVIDUAL] Shift-Rename (individual)

+----------+----------+----------------+--------------------------------+
| Set      | Set Role | Name           | Speech                         |
| Priority |          | PHONETICS      |                                |
+----------+----------+----------------+--------------------------------+
| 1        | Deponent | WITNESS        | + full legal name              |
|          |          | WPHONETICS     | + camera: ctr face,            |
|          |          |                | + adj light, mv < distractions |
+----------+----------+----------------+--------------------------------+
| 2        | TA       | TAKINGATTORNEY | + "Are you comfortable with    |
|          |          | TAPHONETICS    | to share exhibits w/in         |
|          |          |                | this platform?"                |
|          |          |                | > if (yes):                    |
|          |          |                | ...........goTO b;             |
|          |          |                | + "Do you plan on having the   |
|          |          |                | witness annotate?"             |
|          |          |                | > if (yes):                    |
|          |          |                | ...........goTO c;             |
+----------+----------+----------------+--------------------------------+

    b. Explain to EVERYONE how they can:

        - (by hovering over the exhbit, it'll provide you with these options)
        - view, present, download, and annotate the exhibit

    c. Ask:
        - upload Exhbit#TEST
            - (drag 'n drop area -> name: Exhibit#TEST -> annotate)

+--------------+--------------+-----------------+--------------------------+
| Set Priority | Set Role     | Name            | Speech                   |
+==============+==============+=================+==========================+
| 3            | CR           | COURTREPORTER   | + "Can you hear everyone |
|              |              | CRPHONETICS     | clearly?"                |
|              |              |                 | > freq. audio checks     |
+--------------+--------------+-----------------+--------------------------+
| 4            | DA           | DEFENSEATTORNEY | N/A                      |
|              |              | DAPHONETICS     |                          |
+--------------+--------------+-----------------+--------------------------+
| 5            | Videographer | David Boyd      | N/A                      |
+--------------+--------------+-----------------+--------------------------+
| Other        | goTO:5       | N/A             | N/A                      |
|              |              | OPHONETICS      |                          |
+--------------+--------------+-----------------+--------------------------+

[4] READ GENERAL RECOMMENDATIONS
================================
:Begin: When everyonen is READY!

Good morning/afternoon, everyone.
I'm going to go over a brief introduction off the record so we're all on the
same page, and then I'll jump into the videographer read-in.  As I said before,
my name is David Boyd and I work at the court reporting agency, Steno, that was
hired by ORDERINGFIRM to help faciliate this deposition today.

Please take a moment to silence all phone and computer notifications at this
time.  Please note that this deposition is being recorded in its entirety and
everything you do can be seen and heard by everyone else on the call.  If you
ever require privacy at any time, I remind you to please mute your microphone
or turn off your video.

If you are not one of the primary participants, we ask that you please mute
yourself and turn off your video so that we can keep the audio feed as clear as
possible.

As a reminder, you can set who you'd like to see in which video slot by
clicking on the participants tab and then clicking on the ellipses next to a
participant's name to assign a slot.  We strongly recommend putting the court
reporter in one of your video slots so you can see if they are trying to signal
for you to stop or ask for clarification.

Due to a 4 hour video call limit, we will all have to refresh our screens at
the four hour mark.  I will give everyone a reminder 15 minutes before that
time.  The approximate refresh time will be OPENVIDEOMEET+4 = XX am/pm.

Lastly, to help the court reporter get a clear and accurate record, we ask that
everyone please speak loud enough so that your microphone can pick up your
voice.  Please keep your face in full view of the camera, be cautios of talking
over one another, and be aware if you do move any papers or anything near your
microphone while someone is speaking.  It can cause a disruption in the audio.

Please keep in mind that because this deposition is being taken remotely, the
reporter may have to ask for further clarification.  I will be here the entire
time for any technical difficulties, but if you happen to lose connection and
cannot return to this meeting, I will provide my phone number to you all now.
I ask taht you write this down or have it handy, just in case.  My phone number
is (512)-270-3020.  Once again, my phone number is (512)-270-3020.  Please give
me a call and I will gladly work with you to get you reconnected.

I am going to state the current time for our video
editors which is: hh:mm:ss TIMEZONE

Alright, before we go on the record, does anyone have any questions?
Okay, stand by to go on the record.

[5] OFFICIAL READ-IN
====================
:Read-in Location: E-mail from 'Looker'
:Record: Videographer Worksheet

    1. [BUTTON] Press **ON THE RECORD**
    2. Read the read-in:

Read-In
-------

<CPREADIN>

[6] DURING DEPOSITION
=====================
:Disageements: Stay on/off the record.
:[BUTTON]: **ON/OFF THE RECORD** regardless of job role

    +-----+--------------+-----------------+-------------+
    | Pri | Title        | Name            | Phonetics   |
    +=====+==============+=================+=============+
    | 1   | Witness      | WITNESS         | WPHONETICS  |
    +-----+--------------+-----------------+-------------+
    | 2   | TA           | TAKINGATTORNEY  | TAPHONETICS |
    +-----+--------------+-----------------+-------------+
    | 3   | CR           | COURTREPORTER   | CRPHONETICS |
    +-----+--------------+-----------------+-------------+
    | 4   | DA           | DEFENSEATTORNEY | DAPHONETICS |
    +-----+--------------+-----------------+-------------+
    | 5   | Videographer | David Boyd      | N/A         |
    +-----+--------------+-----------------+-------------+

    [BREAKS] On/Off Record Times
    ----------------------------
    a. "We are now on/off the record.  The time is hh:mm:ss TIMEZONE"
    b. [BUTTON] **ON/OFF THE RECORD**

    +---------+----------+  +---------------------+-------------------+
    | On Time | Off Time |  | Platform Start Time | Platform END Time |
    +=========+==========+  +=====================+===================+
    |         |          |  | OPENVIDEOMEET       |                   |
    +---------+----------+  +---------------------+-------------------+
    |         |          |  |                     |                   |
    +---------+----------+  +---------------------+-------------------+
    |         |          |  |                     |                   |
    +---------+----------+  +---------------------+-------------------+
    |         |          |  |                     |                   |
    +---------+----------+  +---------------------+-------------------+
    |         |          |  |                     |                   |
    +---------+----------+  +---------------------+-------------------+
    |         |          |  |                     |                   |
    +---------+----------+  +---------------------+-------------------+

    [4hr Time Limit] Refresh
    ------------------------

    1. Refresh (off the record)

        a. "I'm going to send a force refresh to everyone's screen, what that
            will do is just refresh your screen and a 'Join Again' button will
            pop up.  Please click the 'Join Again' button, reconnect to your
            preferred audio and start up your camera again."
        b. "I am going to state the current time for our video editors which is
            hh:mm:ss"

    2. [BUTTON] **ON THE RECORD**

[7] ENDING DEPOSITION
=====================
:Video Order Types: https://docs.google.com/spreadsheets/d/1cYNUtK0_rTMnYnBWAInA139v2GUyb4l83KzVtK-5mCU/edit#gid=1133383617&range=F6

    [ON THE RECORD]
    ---------------

    - "Would anyone like to get their transcript or video orders in on the
      record?"

    [ENDING DEPO]
    -------------

Read-Out
^^^^^^^^

<CPREADOUT>

    [OFF THE RECORD]
    ----------------

    - If video orders are requested, get the email information OFF THE RECORD.

[8] POST SC DEPO
================

    1. Video Worksheet
    ------------------

        - saveas: JOBNUMBER - Video Worksheet
            - drag'n drop to file container: Ops > Video Worksheet

    2. Slack #video-checking
    ------------------------

        - be the last person to leave
        - check-out on Slack

    3. Fill out **Error Log**
    --------------------------

        - https://app.nuclino.com/STENOVERSE/Space-Yachty/Error-log-b053d57d-73c7-4bca-888a-09d28efc4e71

    4. Change: Ops >  "Video Files" -> "Fully Received"
    ---------------------------------------------------

    5. Render A/V at the bottom of the Ops page
    -------------------------------------------
    :Warning: Do NOT CLICK the 'RENDER' BUTTON twice!; will take time to export

        a. Ops > Steno Connect Recordings
        b. Refresh: Steno Connect Recordings
           Refresh: Steno Connect Twilio Audio/Video Exports
        c. [BUTTON] Render Audio
            - check all boxes with the deponent's name
        d. Verify: Orange-boxed 'enqueued'
            - next to 'Steno Connect Twilio A/V Exports'
        e. Done!

