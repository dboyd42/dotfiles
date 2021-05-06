+JOBNUMBER+
######
:Date: +TODAY+
:Case Number: +CNUM+
:Start Time: +START+ +TZ+
:Est. Duration:
:Ops Page: https://ops.steno.com/ops/job/+JOBNUMBER+

    Moderator: audio only -- no breaks, no read-ins
    Videographer: A/V
    Ambassador: A/V + Exhbits

Overview
********

    - %s/+JROLE+/       Moderator/Videographer/Ambassador
    - %s/+JOBNUMBER+/   xxxxxx
    - %s/https://ops.steno.com/ops/job/+JOBNUMBER+/     Steno Ops Page URL
    - %s/+START+/       hh:mm AM/PM
    - %s/+TZ+/          PT/MT/CT/ET
    - %s/+ORFIRM+/      ordering-firm
    - %s/+DEPONENT+/    deponent
    - %s/+VOLN+/        volume number
    - %s/+TA0+/         TA // Ops > Ordered On Behalf Of
    - %s/+CR+/          CR // Ops > CRName >> Preferred Name
    - %s/+INTPR+/       interpreter
    - %s/+DA0+/         DA // Ops > NOD > Service List
    - %s/+DF0+/         defending_firm
    - %s/https://steno.app.box.com/folder/+BOXN+/         Box link

    ---------------------------------------------------------------------------
    - copy & paste:     CPREADIN    // Gmail > Looker
    - copy & paste:     CPREADOUT   // Gmail > Looker
    - Read-In Generator
    - %s/+CASENAME+/g   case name
    - %s/+CNUM+/g       case number
    - %s/+COURT+/g      court

    +-----+--------------+------------+-------------+
    | Pri | Title        | Name       | Phonetics   |
    +=====+==============+============+=============+
    | 1   | Witness      | +DEPONENT+ | WPHONETICS  |
    +-----+--------------+------------+-------------+
    | 2   | TA           | +TA0+      | TAPHONETICS |
    |     |              | +TA1+      | TAPHONETICS |
    |     |              | +TA2+      | TAPHONETICS |
    +-----+--------------+------------+-------------+
    | 3   | CR           | +CR+       | CRPHONETICS |
    +-----+--------------+------------+-------------+
    | 4   | DA           | +DA0+      | DAPHONETICS |
    |     | DA           | +DA1+      |             |
    |     | DA           | +DA2+      |             |
    +-----+--------------+------------+-------------+
    | 5   | Videographer | David Boyd | N/A         |
    +-----+--------------+------------+-------------+
    | 6   | Interpreter  | +INTPR+    | N/A         |
    +-----+--------------+------------+-------------+

    Ordering Firm
    -------------

        - +ORFIRM+

    Defending Firm
    --------------

        - +DF0+
        - +DA0+
        - +DA1+

ZOOM PLAYBOOK
**************

[1] 30 min PRE-SC DEPO
======================

    1. Emails (2)
    -------------

        - validate: concierge@steno.com
        - validate: Exhibits Links
            - Monday > exhibits status
                - REQUESTED DAY B4:
                    - Ask TA if planning on introducing exhibits
                - EXHIBITS LINKED & SENT
                    - if no email: #video-help(@zinger | @janet)

    2. BOX
    ------

        - have readily available
        - https://steno.app.box.com/folder/+BOXN+

    4. Video Worksheet 3.0
    ----------------------

        - have readily available

    5. Slack
    --------

        - I am on and ready to go for job +JOBNUMBER+ #+JROLE+
        - https://ops.steno.com/ops/job/+JOBNUMBER+

    6. Recirculate invites (E-mail)
    -------------------------------

    Email Template
    ^^^^^^^^^^^^^^
    :Time: 30 min < +START+ +TZ+
    :Copy-Paste: ^v"*

This deposition is scheduled for +DATEbdY+ at +START+ +TZ+.

Hello, my name is David Boyd and I am the +JROLE+ for today's deposition.
I am recirculating this invitation for everyone's convenience.
Please don't hesitate to reach out to me with any questions or if you
experience any technical difficulties upon joining.  My number is (512)-270-3020.
Thank you for choosing Steno and I will see you soon.

Best,


[2] AS PARTICIPANTS JOIN
========================
:DEPONENT: Spotlight!!!

    1. Introduce self as +JROLE+
    2. [Ask] Name pronunciation
    3. [Ask] Familiarity with Zoom: mute, stop/start video, chat fns
    +----------+--------------+------------+--------------------------------+
    | Priority | Role         | Name       | Speech                         |
    +==========+==============+============+================================+
    | 1        | Deponent     | +DEPONENT+ | + SPOTLIGHT                    |
    |          |              |            | + full legal name              |
    |          |              |            | + camera: ctr face,            |
    |          |              |            | + adj light, mv < distractions |
    +----------+--------------+------------+--------------------------------+
    | 2        | TA           | +TA0+      | + "Are you comfortable with    |
    |          |              | +TA1+      | to share exhibits w/in         |
    |          |              | +TA2+      | this Zoom?"                    |
    |          |              |            | > if (NO):                     |
    |          |              |            | ...........goTO b;             |
    |          |              |            | + "Do you plan on having the   |
    |          |              |            | witness annotate?"             |
    |          |              |            | > if (YES):                    |
    |          |              |            | ...........goTO c;             |
    +----------+--------------+------------+--------------------------------+
    | 3        | CR           | +CR+       | + "Can you hear everyone       |
    |          |              |            | clearly?"                      |
    |          |              |            | > freq. audio checks           |
    |          |              |            | + if (NO): dial-in             |
    +----------+--------------+------------+--------------------------------+
    | 4        | DA           | +DA0+      | N/A                            |
    |          |              | +DA1+      |                                |
    |          |              | +DA2+      |                                |
    +----------+--------------+------------+--------------------------------+
    | 5        | Videographer | David Boyd | N/A                            |
    +----------+--------------+------------+--------------------------------+
    | 6        | Interpreter  | +INTPR+    | N/A                            |
    +----------+--------------+------------+--------------------------------+


    b. Zoom > Share Exhibits
    ------------------------
    Exhibit #TEST:
    https://steno.app.box.com/s/a4ok7wgz16dqqd6i8uglnth9d3vtidgp
    c. Zoom > Annotation
    --------------------
        - Walk the witness through annotating the Teset Exhibit

[3] READ GENERAL RECOMMENDATIONS
================================
:Begin: When everyonen is READY!

    Welcome everyone,

    before we begin, I'm going to give a quick introduction OFF THE RECORD to
    make sure that we are all on the same page then I will...

    if moderator:
        ...hand it over to our court reporter.

    if videographer:
        ... jump into the normal videographer read-in.


    I work at the court reporting agency, Steno, that was hired by +ORFIRM+ to
    help facilitate this deposition.  Please note, this meeting will be recorded
    in its entirety. Anything that  you do, can be seen and heard by everyone on
    the call. If at any point you require privacy, I remind you to mute your
    microphone or turn off your video. Please take a moment to silence all your
    phone and computer notifications at this time.

    To help the court reporter get a clear and accurate record, we ask that
    everyone speak loud enough so that the microphone can pick up your voice.
    Please keep your face in view of the camera, to make it easier for the court
    reporter to understand exactly who is talking at any given time.Before I
    start my official read in, I’m going to leave my cell phone in the chat
    thread. I recommend you write this down on a piece of paper in case you
    happen to exit the meeting or require any assistance.

    [CHAT]
    David Boyd (512)270-3020
    [/CHAT]

    Are there any final questions before we go on the record?

    Okay, standby to go on the record…

[4] OFFICIAL READ-IN
====================
:Read-in Location: E-mail from 'Looker'
:Record: Videographer Worksheet

    Read-In
    -------
    <CPREADIN>

  Good morning/afternoon,
  we are now on the record at _    AM/PM +TZ+ on +TODAY+
  to begin the depoisiton of +DEPONENT+
  in the matter of +CASENAME+.
  This case is venued in +COURT+.
  The case number is +CNUM+.
  This deposition is taking place via Steno's Steno Connect Platform.
  The legal videographer is David Boyd, here on behalf of Steno,
  and the court reporter is +CR+, also here on behalf of Steno.

  Would counsel please identify yourselves and state whom you represent.
  [pause]
  Thank you, counsel.  Would the reporter please swear in the witness.


[5] DURING DEPOSITION
=====================
:DEPONENT: Spotlight!!!
:Disageements: Stay on/off the record.

    +-----+--------------+------------+-------------+
    | Pri | Title        | Name       | Phonetics   |
    +=====+==============+============+=============+
    | 1   | Deponent     | +DEPONENT+ | WPHONETICS  |
    +-----+--------------+------------+-------------+
    | 2   | TA           | +TA0+      | TAPHONETICS |
    |     |              | +TA1+      |             |
    |     |              | +TA2+      |             |
    +-----+--------------+------------+-------------+
    | 3   | CR           | +CR+       | CRPHONETICS |
    +-----+--------------+------------+-------------+
    | 4   | DA           | +DA0+      | DAPHONETICS |
    |     |              | +DA1+      |             |
    |     |              | +DA2+      |             |
    +-----+--------------+------------+-------------+
    | 5   | Videographer | David Boyd | N/A         |
    +-----+--------------+------------+-------------+
    | 6   | Interpreter  | +INTPR+    | N/A         |
    +-----+--------------+------------+-------------+

    [BREAKS] On/Off Record Times
    ----------------------------
    a. "We are now on/off the record.  The time is hh:mm:ss +TZ+"

=======
1. On :
1. Off:
-------
2. On :
2. Off:
-------
3. On :
3. Off:
-------
4. On :
4. Off:
-------
5. On :
5. Off:
=======

[6] ENDING DEPOSITION
=====================
:Video Order Types:
https://docs.google.com/spreadsheets/d/1cYNUtK0_rTMnYnBWAInA139v2GUyb4l83KzVtK-5mCU/edit#gid=1133383617&range=F6

    [ON THE RECORD]
    ---------------
    "Would anyone like to get their transcript or video orders in on the record?"

    Read-Out
    ^^^^^^^^
    <CPREADOUT>

This concludes volume +VOLN+ of the deposition of +DEPONENT+
  for +CASENAME+.
  We are now off the record, the time is _____ AM/PM +TZ+

    [OFF THE RECORD]
    ----------------
    - If video orders are requested, get the email information OFF THE RECORD.

[7] POST SC DEPO
================

    1. Tell CR: ----------- :
    Job Role: Videographer "Steno will send them the
    chat thread, audio file, and exhibits in a day from now."

    2. Slack > #video-checking --------------------------
    :Job Role: All Depo has concluded.  No issues.
    else: state issues

    3. Fill out Error Log
    ---------------------
    :Job Role: All

    https://app.nuclino.com/STENOVERSE/Space-Yachty/Error-log-b053d57d-73c7-4bca-888a-09d28efc4e71

    4. Complete Post-Depo Exhibit Tasks
    ----------------------------------
    :Job Role: All

    https://app.nuclino.com/STENOVERSE/Space-Yachty/Zoom-Post-Depo-Exhibit-Handling-4340ddce-7d82-4f7c-b827-604319021d29

    5. Monday > Production Job Board > Remote Documents > Zoom-links
    ----------------------------------------------------------------
    :Job Role: All

        a. https://steno-squad.monday.com/boards/405833245/
        b. [Comments] Exhbts > Box > '+'
            - Exhibits are relabled in Box

            i. if missing exhibits:
                - Notes: "Exhibit 02: '<desc>' is a placeholder and counsel needs
                          to send us that document."
            ii. Box > Exhibts && Exhibits > Labeled Exhibits
                - touch "Exhbit 02: '<desc>' [placedholder.txt]"

    6. Monday > Video Edits Board > [col] Zoom Recording > Zoom-links
    -----------------------------------------------------------------
    :Job Role: Videographer

    https://steno-squad.monday.com/boards/930206922

    7. OPS > Video Worksheet > [upload] +JOBNUMBER+ Video Worksheet.pdf
    -------------------------------------------------------------------
    :Job Role: Videographer

    8. OPS > Deponent > <name>
    --------------------------
    :Job Role: Videographer

    a. Ensure name is correct
    b. insert name BEFORE PMK/PMQ
        - [edit] PEN icon

    9. OPS > Videographer Status
    ----------------------------
    :Job Role: All

    if Moderator:
        Change 'Moderator Status' <> 'Complete'

    if Videographer:

        Change 'Videographer Status' <> 'Materials Received'

