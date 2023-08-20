# Craft a Descriptive Title

> **Author:** David Boyd<br>
> **Date:** ts

*Step 1: Craft a Descriptive Title*

:bulb: <u>***Tips:***</u>

  - [ ] What the bug is
  - [ ] Where the bug is
  - [ ] Potential severity

<u>***Example:***</u>

*IDOR on hxxps://example.com/.../... Leads to Account Takeover for All Users*

## Summary

*Step 2: Provide a Clear Summary*

:bulb: <u>***Tips:***</u>

  - [ ] Clear
  - [ ] Concise
  - [ ] Understand the vulnerability:
    - [ ] What the bug is
    - [ ] Where the bug is
    - [ ] What the attacker can do upon exploitation

<u>***Example:***</u>

*The [https://example....](https://example.com) endpoint takes two POST body
paratemeters: `user_id` and `new_password`. A POST request to this endpoint
would change the password of `user_id`to `new_password`. This endpoint is not
validating the `user_id` parameter, and as a result, any user can chane anyone
else's password by manipulating the `user_id` parameter.

## Severity Assessment

*Step 3: Include a Severity Assessment*

- [CVSS](https://www.first.org/cvss)
- [Bugcrowd's VRT](https://bugcrowd.com/vulnerability-rating-taxonomy)

| Severity                 | Vulnerability |
|--------------------------|---------------|
| Low/Medium/High/Critical |               |

<u>***Example:***</u>

*Severity of the issue: High*

## Steps to Reproduce

*Step 4: Give Clear Steps to Reproduce*

1. Make two accounts on ...
2. Log in to ...
3. Fill in the desired new ...
4. Click the `Change Password` button located at the ...
5. Intercept the POST request to *https://...*
6. You can no log in to account B by ...

## Proof of Concept

*Step 5: Provide a Proof of Concept*

<u>***Types of POCs:***</u>

- [ ] screenshots
- [ ] video
  - [ ] screen-capture video of walkthrough
- [ ] payload:
  - [ ] URLs
  - [ ] files:
    - [ ] scripts
    - [ ] XML files
    - [ ] etc.

## Impact and Attack Scenarios

*Step 6: Describe the Impact and Attack Scenarios*

<u>***Example:***</u>

*Using this vulnerability, all that an attacker needs in order to change a
user's password is their `user_id`. Since each user's public profile page lists
the account's `user_id`, anyone can visit any user's profile, find out their
`user_id`, and change their password. And because `user_id`s are simply
sequential numbers, a hacker can even enumerate all the `user_id`s and change
the passwords of all users! This bug will let attackers take over anyone's
account with minimal effort.*

## Recommended Mitigations

*Step 4: Recommend Possible Mitigations*

<u>***Example:***</u>

*The application should validate the user's `user_id` parameter within the
change password request to ensure that the user is authorized to make
account modifications. Unauthorized requests should be rejected and logged
by the application.*

## Validate the Report

*Step 8: Validate the Report*

- [ ] No technical errors (misunderstandings)
- [ ] Follow your own [Steps to Reproduce](#steps-to-reproduce):
  - [ ] Detailed enough
- [ ] Examine all POC files and code
  - [ ] Working
- [ ] Delete [Step 8](#validate-the-report) from the report :tada:!

<!-- References -->
