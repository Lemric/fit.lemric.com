---
title: "LemricFit Application Privacy Policy"
layout: single
---

**Effective from:** 17 July 2026

This Privacy Policy explains what user data is processed in connection with use of the mobile application **LemricFit** (the “App”) and how that data is protected. The text reflects how the App actually works (a *local-first* model: training data stays on the user’s device, with no mandatory cloud account and no required App server).

*This is an English translation of the Polish privacy policy. If there is any conflict, the Polish version prevails.*

## 1. Controller

Where the General Data Protection Regulation (EU) 2016/679 of 27 April 2016 (“GDPR”) applies to processing of personal data outside the user’s exclusive control on the device, the controller is:

**Dominik Labudziński**

Privacy contact email: **biuro@lemric.com**

In practice, most training and profile data is stored **only locally** on the user’s device, in the App’s encrypted database. The controller does not operate a mandatory LemricFit cloud user account and does not maintain a central database of users’ workouts.

## 2. Nature of the App (local first)

LemricFit is a local fitness application. In particular:

1. Creating an account with the App provider or signing in to a LemricFit server is **not required**.
2. The **primary source of data** about workouts, GPS routes, sensor readings, goals, records, and settings is the encrypted database on the user’s device.
3. The App **does not offer** social features, clubs, or social sync between users.
4. Network features (maps, weather, geocoding, optional diagnostics, optional backup in the system vendor’s cloud) are **limited and purpose-bound**. They are described in the sections below.

## 3. What data is processed

### 3.1. Data stored locally on the device

Depending on which features the user uses, the App may store on the device, among other things:

* **Profile:** display name, profile photo (path to a local file), body mass, height, year of birth, units of measure, weekly goals, maximum and resting heart rate
* **Workouts:** activity type, duration, distance, pace or speed, status (e.g. pause), summaries, workout splits
* **Location and route:** a sequence of GPS points (coordinates, elevation, accuracy, timestamps) during and after recording an activity
* **Sensors:** heart rate, cadence, and power readings from Bluetooth Low Energy devices, and local motion measurements (including pedometer)
* **Health (optional):** data read or written via Apple Health (iOS) or Health Connect (Android), according to system permissions granted
* **Media:** photos added to the profile or activities (local files)
* **Activity environment:** place name (from geocoding) and temperature and weather description saved when a workout ends
* **Security:** hash of the app-lock PIN, recovery key (12-word phrase, stored according to the App’s security mechanisms), database encryption key (DEK) in the system Keychain (iOS or macOS) or Keystore (Android)
* **Backups:** encrypted database copies (without the DEK) in the local backup folder and, optionally, in the cloud, as described below
* **Settings and technical journals:** App preferences, local integrity and sync entries (without placing raw coordinates in diagnostic logs)

The App **does not require** an email address, phone number, or payment details to use core training features.

### 3.2. Data sent off the device (only in specific situations)

* **Map display (Android):** map tile requests / use of the Google Maps SDK according to system configuration and API key → Google (Maps SDK)
* **Map display (iOS or macOS):** map rendering via Apple MapKit → Apple (within the system)
* **Place-name geocoding at the end of a workout:** geographic coordinates → the platform’s system geocoding API
* **Weather at the end of a workout:** latitude and longitude → Open-Meteo
* **Apple Health / Health Connect:** workouts, heart rate, and related data types indicated in permissions → Apple Health or Health Connect (data remains in the ecosystem chosen by the user)
* **Cloud backup (iOS):** encrypted backup file **without** the DEK → iCloud Drive (App container), if the user has iCloud enabled
* **Cloud backup (Android):** encrypted backup file **without** the DEK → local device copy and, after voluntarily connecting a Google account, Google Drive app data
* **Optional crash diagnostics:** error events after sensitive data has been removed or masked; without default transmission of identifying personal data → Sentry, **only** when a DSN is enabled in that build
* **User-initiated sharing:** files or content chosen by the user (e.g. summary, photo, recovery key) → the app or service selected in the system share sheet

The App **does not sell** user data and **does not show** ads based on behavioural profiling.

## 4. Purposes and legal bases

Where GDPR applies:

* **Providing local App features** (recording a workout, map, statistics, goals, PIN lock): performance of a contract to use the App / necessity to provide the service at the user’s request (Art. 6(1)(b) GDPR) and, for health and location data, **consent** expressed through system permissions (Art. 6(1)(a) and Art. 9(2)(a) GDPR, where applicable)
* **Writing a workout to Apple Health / Health Connect:** the user’s **consent** in Health / Health Connect
* **Weather and place name at summary:** legitimate interest in enriching the local workout summary (Art. 6(1)(f) GDPR) or consent arising from use of a location-requiring feature; coordinates are sent only for that purpose
* **Maps:** necessity to display the route / browse the map; on Android also Google’s Maps SDK terms
* **iCloud / Google Drive backup:** the user’s **consent** / decision (enabling iCloud or connecting a Google account in backup settings)
* **Sentry diagnostics** (if enabled in the build): legitimate interest in App stability (Art. 6(1)(f) GDPR), with sensitive data removed or masked

The user may withdraw system consents at any time (Location, Bluetooth, Health, Motion, Camera, Notifications, Face ID / biometrics) in the operating system settings. Withdrawing consent may prevent that feature from working.

## 5. Operating system permissions

The App requests access only to what it needs:

* **Location** (including background): recording a GPS route with the screen locked
* **Bluetooth:** heart rate, cadence, and power sensors
* **Motion / activity recognition:** suggesting to start a workout and assisting auto-pause
* **Health** (Apple Health / Health Connect): reading and writing the indicated workout data types
* **Camera and photos:** profile photo and activity media
* **Notifications:** workout status (including a foreground-service notification on Android and Live Activity on iOS)
* **Biometrics:** unlocking the App lock (PIN + Face ID / fingerprint)

Without a granted permission, the related feature is not performed or works only in a limited way.

## 6. Encryption, backups, and security

1. The training database is **encrypted**. The encryption key (DEK) is stored in **Keychain** (Apple) or **Keystore** (Android) and is **not** included in backup files.
2. A backup without the DEK is practically useless to a third party who does not have the key from the user’s device (or a correctly entered recovery key, if the user configured one).
3. The App lock (PIN, optionally biometrics) protects access to App content on an unlocked device.
4. Diagnostic logs are scrubbed of sensitive data (among other things, coordinates, heart rate, PIN, DEK, and the recovery phrase are not intentionally sent in clear form to Sentry).
5. On Android, system Auto Backup of App content is disabled in a way that prevents automatic extraction of the encrypted database by the vendor’s backup mechanisms in the App’s default configuration.
6. The user may perform a **local wipe of all data** from within the App. This covers the database, keys, PIN, and local and (where available) cloud backups managed by the App.

## 7. Retention period

* Local data is retained **until deleted by the user**, the App is uninstalled (subject to system or cloud copies outside the App that the controller does not fully control), or the wipe-all-local-data function is used.
* Encrypted local and cloud backups exist until the user deletes them or clears the related account or storage (iCloud, Google Drive).
* Data in Apple Health / Health Connect is governed by Apple’s or Google’s policies and settings and by the user’s choices in those systems.
* Data sent to Open-Meteo or map providers is processed under their own policies; the App does not keep an archive of those requests with the controller.

## 8. Recipients and processors

The controller does not sell data. Recipients may only be:

* **operating system and platform service providers** (Apple, Google), for maps, health, biometrics, notifications, iCloud, or Google Drive,
* **Open-Meteo**, for one-off weather requests,
* **Sentry**, only when that App build has diagnostics enabled,
* **persons or services indicated by the user** when manually sharing content.

Those parties’ terms and privacy policies also apply to their services.

## 9. Transfers outside the European Economic Area

Some parties (e.g. Google, Apple, Sentry, Open-Meteo) may process data on servers outside the EEA. In such cases, transfers rely on GDPR mechanisms (including standard contractual clauses or adequacy decisions, depending on the provider and the current legal position). Using maps, weather, Health, Drive/iCloud, or optional Sentry means accepting that risk to the extent necessary for the feature.

## 10. User rights

Where the controller processes the user’s personal data, the user has, as applicable under GDPR, the rights to:

* access to data,
* rectification of data,
* erasure of data (“right to be forgotten”),
* restriction of processing,
* data portability (in practice: export / sharing of local content by the user and deletion of data in the App),
* objection to processing based on Art. 6(1)(f) GDPR,
* withdrawal of consent at any time (without affecting the lawfulness of processing before withdrawal),
* lodging a complaint with the President of the Personal Data Protection Office (ul. Stawki 2, 00-193 Warsaw, Poland).

Because most data is only on the user’s device, the most effective way to exercise the right to erasure is:

1. delete data in the App settings (wipe all local data), and
2. uninstall the App, and
3. remove permissions and data in Apple Health / Health Connect, iCloud, or Google Drive, as needed.

For matters that require action by the controller (e.g. data in optional Sentry), write to the address in section 1.

## 11. Children

The App is not directed at children under 16. The controller does not knowingly collect children’s data. If such collection becomes known, the data will be deleted to the extent the controller holds it.

## 12. No automated decision-making with legal effects

The App does not make automated decisions about the user that produce legal effects within the meaning of Art. 22 GDPR. Suggestions to start a workout, activity classification, or training statistics are assistive and local.

## 13. Changes to this Policy

The Policy may be updated when the App’s behaviour, integrations, or applicable law change. The updated version will be published with an effective date. For material changes, the controller will endeavour to inform users in the App or in distribution materials (App Store / Google Play), where possible without a mandatory cloud account.

## 14. Contact

Privacy questions: **biuro@lemric.com**.

*This document is informational and reflects how the LemricFit App works as of the date stated above. It is not legal advice.*
