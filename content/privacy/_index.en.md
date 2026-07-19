---
title: "Privacy Policy"
description: "How LemricFit handles personal data (local-first)."
layout: single
---

**Effective date:** 17 July 2026

This Privacy Policy explains how **LemricFit** (“the App”) processes user data. LemricFit is **local-first**: training data stays on your device. There is no required LemricFit cloud account and no mandatory app server for workouts.

## 1. Controller

Where GDPR applies to processing outside your exclusive on-device control, the controller is:

**Dominik Labudziński**

Privacy / support contact: **[biuro@lemric.com](mailto:biuro@lemric.com)**

Most training and profile data is stored **only locally** in the App’s encrypted database on your device.

## 2. Local-first character

1. No account with the App provider is required.
2. Workouts, GPS tracks, sensors, goals, records, and settings primarily live in the encrypted on-device database.
3. There are no social feed / club features between users.
4. Network features (maps, weather, geocoding, optional diagnostics, optional OS cloud backup) are limited and purposeful.

## 3. Data processed

### On device (depending on features you use)

Profile, workouts, GPS tracks, Bluetooth sensor readings, optional Health data (with system permission), photos, place name / weather at activity end, app lock PIN hash and recovery/encryption keys in platform Keychain/Keystore, encrypted backups, and app preferences.

The App does **not** require an email, phone number, or payment details for core training features.

### Off device (only in specific cases)

- Maps (Google Maps SDK on Android; Apple MapKit on iOS/macOS)
- System geocoding for place names
- Weather via Open-Meteo (coordinates for that request)
- Apple Health / Health Connect when you grant access
- Optional encrypted backup to iCloud / Google Drive app data (**without** the DEK)
- Optional crash diagnostics (Sentry) only if a build includes a DSN — with sensitive fields stripped
- Content you explicitly share via the system share sheet

The App does **not** sell user data and does **not** show behavioural advertising.

## 4. Purposes and legal bases (GDPR where applicable)

Providing local App features; Health write/read with consent; weather/place enrichment; maps; optional cloud backup with your choice; optional diagnostics. You can revoke system permissions in OS Settings at any time.

## 5. System permissions

Location (including background while recording), Bluetooth, motion/activity recognition, Health, camera/photos, notifications, and biometrics for app lock — each only as needed for the related feature.

## 6. Encryption and backups

The training database is encrypted. The DEK stays in Keychain/Keystore and is **not** included in backup files. Optional cloud backups without the DEK are not useful without the key from your device (or a correctly entered recovery key). You can wipe local App data from within LemricFit.

## 7. Retention

Local data until you delete it, uninstall the App, or use in-app wipe. Cloud backups last until you remove them. Health data follows Apple/Google rules. Map/weather providers process requests under their own policies.

## 8. Recipients

OS/platform providers (Apple, Google), Open-Meteo, Sentry (only if enabled in that build), and parties you choose when sharing. Their terms also apply.

## 9. Transfers outside the EEA

Some providers may process data outside the EEA using GDPR transfer mechanisms. Using maps, weather, Health, Drive/iCloud, or optional Sentry means accepting that for the feature concerned.

## 10. Your rights

Access, rectification, erasure, restriction, portability, objection (where based on legitimate interest), withdrawing consent, and lodging a complaint with a supervisory authority (in Poland: PUODO). Because most data is on-device, the practical erasure path is: wipe in App settings, uninstall, and clear Health / cloud backups as needed.

For controller-side matters (e.g. optional Sentry), email **[biuro@lemric.com](mailto:biuro@lemric.com)**.

## 11. Children

Not directed at children under 16. We do not knowingly collect children’s data.

## 12. Automated decisions

No automated decisions with legal effects under GDPR Art. 22. Suggestions and stats are assistive and local.

## 13. Changes

We may update this policy when the App or law changes. The effective date will be updated. Material changes will be communicated in the App or store listing where practical.

## 14. Contact

Privacy questions: **[biuro@lemric.com](mailto:biuro@lemric.com)**

*This document is informational and reflects LemricFit as of the effective date. It is not legal advice.*
